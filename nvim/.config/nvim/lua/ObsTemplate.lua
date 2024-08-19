local M = {}

-- Function to extract video ID from YouTube URL
local function get_video_id(url)
    local video_id = url:match("v=([%w-_]+)")
    if not video_id then
        video_id = url:match("youtu.be/([%w-_]+)")
    end
    return video_id
end

-- Function to convert video duration to human-readable format
local function format_duration(duration)
    local hours, minutes, seconds

    -- Match hours, minutes, and seconds in the duration
    hours, minutes, seconds = duration:match("(%d+):(%d+):(%d+)")
    if not hours then
        minutes, seconds = duration:match("(%d+):(%d+)")
    end

    -- If hours, minutes, or seconds are not captured, default them to 0
    hours = tonumber(hours) or 0
    minutes = tonumber(minutes) or 0
    seconds = tonumber(seconds) or 0

    -- Build the human-readable format
    local parts = {}
    if hours > 0 then
        table.insert(parts, string.format("%d hour%s", hours, hours > 1 and "s" or ""))
    end
    if minutes > 0 or (hours > 0 and seconds > 0) then
        table.insert(parts, string.format("%d minute%s", minutes, minutes > 1 and "s" or ""))
    end
    if seconds > 0 or (minutes > 0 and hours == 0) then
        table.insert(parts, string.format("%d second%s", seconds, seconds > 1 and "s" or ""))
    end

    -- Return the formatted duration as a string
    return table.concat(parts, " ")
end

-- Function to create Obsidian note with subtitles
function M.create_youtube_note()
    local youtube_url = vim.fn.input("YouTube URL: ")
    local video_id = get_video_id(youtube_url)

    if not video_id then
        print("Error: Unable to extract video ID.")
        return
    end

    -- Define file paths and names
    local output_dir = vim.fn.expand("~/Documents/Ideaverse")
    local note_title = vim.fn.system("yt-dlp --get-title \"" .. youtube_url .. "\""):gsub("\n", "")
    local sanitized_title = note_title:gsub("[^%w%s]", "") -- Remove special characters except spaces
    local note_file = output_dir .. "/" .. sanitized_title:gsub(" ", " ") .. ".md"

    -- Ensure the output directory exists
    vim.fn.system("mkdir -p " .. output_dir)

    -- Extract video metadata
    local video_duration_raw = vim.fn.system("yt-dlp --get-duration \"" .. youtube_url .. "\""):gsub("\n", "")
    local video_duration = format_duration(video_duration_raw)

    local video_upload_date = vim.fn.system("yt-dlp --print-json \"" .. youtube_url .. "\" | jq -r '.upload_date'"):gsub("\n", "")
    if video_upload_date then
        video_upload_date = string.format("%s-%s-%s", video_upload_date:sub(1, 4), video_upload_date:sub(5, 6), video_upload_date:sub(7, 8))
    else
        video_upload_date = "Unknown"
    end

    -- Download subtitles
    local download_cmd = string.format("yt-dlp --write-auto-sub --sub-lang en --skip-download --output \"%s/%%(title)s.%%(ext)s\" \"%s\"", output_dir, youtube_url)
    print("Download Command: " .. download_cmd)
    os.execute(download_cmd)

    -- Search for the .vtt file in the output directory
    local subtitle_file_pattern = output_dir .. "/*.en.vtt"
    local subtitle_files = vim.fn.glob(subtitle_file_pattern, false, true)

    if #subtitle_files == 0 then
        print("Error: Subtitle file not found.")
        return
    end

    local subtitle_file = subtitle_files[1]

    -- Convert subtitles to plain text without timestamps and duplicates
    local subtitle_text = vim.fn.system(string.format(
        "sed -e '/^[[:space:]]*$/d' -e 's/<[^>]*>//g' -e '/-->/d' -e 's/^WEBVTT.*//' -e 's/^Kind:.*//' -e 's/^Language:.*//' \"%s\" | uniq | tr '\n' ' ' | sed 's/  */ /g'",
        subtitle_file
    )):gsub("^%s*(.-)%s*$", "%1")

    -- Remove extra spaces between sentences
    subtitle_text = subtitle_text:gsub("%.([^%.])", ". %1")

    -- Improve sentence formation
    subtitle_text = subtitle_text:gsub("(%l)(%u)", "%1. %2")  -- Add a period before capital letters
    subtitle_text = subtitle_text:gsub("%.([^%.])", ". %1")    -- Ensure proper spacing after periods
    subtitle_text = subtitle_text:gsub("([%.!?])", "%1\n\n")   -- Add paragraph breaks after periods, exclamations, or questions


    -- Create the Obsidian note
    local file, err = io.open(note_file, "w")
    if file then
        local note_content = string.format([[
---
title: %s
created: %s
modified: %s
tags:
  - YouTube
  - VideoNotes
---

# %s

**Link:** [%s](%s)

**Date:** %s

**Duration:** %s

**Video:**
<iframe width="560" height="315" src="https://www.youtube.com/embed/%s" frameborder="0" allowfullscreen></iframe>

**Summary:**
%s

**Key Points:**
- [Enter main point or takeaway]
- [Enter another important point]
- [Enter additional insights]

**Quotes:**
- [Enter notable quote from the video]

**Action Items:**
- [Enter actions or follow-ups required after watching the video]

**Related Links/Resources:**
- [Enter any related links or resources mentioned in the video]

]], note_title, os.date("%Y-%m-%d"), os.date("%Y-%m-%d"), note_title, youtube_url, youtube_url, video_upload_date, video_duration, video_id, subtitle_text)

        file:write(note_content)
        file:close()

        -- Delete the .vtt file after processing
        os.remove(subtitle_file)

        -- Open the note in Neovim
        vim.cmd("edit " .. note_file)
    else
        print("Error: Unable to create note file. " .. (err or ""))
    end
end

return M
