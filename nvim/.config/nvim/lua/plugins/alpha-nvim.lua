local coolLines = {
    "⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿",
    "⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡏⣿⣿⢳⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⢧⣿⡿⣸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿",
    "⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠁⣿⡏⠸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠸⣿⡇⢹⣿⣿⣿⣿⣿⣿⣿⣿⢻⢿⣿⡿⣿⣿⡇⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿",
    "⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠀⠸⣇⠀⠹⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣯⠀⢻⡇⠈⢿⣿⣿⣿⣿⣿⣿⣿⣬⣬⣾⠃⣿⣿⠀⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿",
    "⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣇⠀⠹⣆⠀⢹⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡄⠀⢻⡄⠈⢿⣿⣿⣿⣿⣿⣿⡇⣿⣿⠀⢿⣿⡀⠈⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿",
    "⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣆⠀⢹⡆⠀⢻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡀⠈⢷⡀⠈⢿⣿⣿⣿⣿⣿⠀⣿⣿⡀⠈⢿⣷⡀⠘⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿",
    "⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⣛⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣘⣉⣸⣿⣿⡄⠀⢿⡄⠀⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⢻⢛⣿⣿⣷⡀⠈⣷⡀⠘⣿⣿⣿⣿⣿⠀⠘⣿⣷⡀⠈⢿⣷⠀⠘⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿",
    "⣿⣿⣿⣿⣿⣿⣿⣿⡏⣾⡿⠛⠛⠿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡀⠘⣷⡀⢸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠿⣫⣭⣽⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣶⣶⣿⣿⣿⣧⠀⢹⣧⠀⢹⣿⣿⣿⣿⣧⠀⠘⣿⣷⡀⠈⢿⣧⠀⢸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⢻⣿⣿⣿⣿",
    "⣿⣿⣿⣿⣿⣿⣿⣿⣧⠙⢀⣤⣤⡀⢹⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡟⢿⣿⣿⣿⣧⠀⣿⣇⠀⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡏⡾⠟⠋⠙⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠿⢿⣿⣿⣿⡆⠈⣿⡆⢸⣿⣿⣿⠿⣿⣧⠀⠹⣿⣷⠀⠘⣿⡆⠀⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡇⠸⣿⣿⣿⣿",
    "⣿⣿⣿⣿⣿⣿⣿⣿⡏⢀⠀⠈⠉⠀⢸⣿⣿⡿⠟⢿⣿⣿⣿⣿⡿⠛⠉⠉⠉⠛⠛⠿⢿⣿⣿⣿⣿⣿⠀⠀⠙⣿⣿⣿⠀⣿⣿⠰⢿⣿⣿⣿⡏⢻⣿⣿⣿⣿⣿⡿⠀⠠⣴⣦⡀⠈⣿⣿⣿⠿⠛⠉⠉⠛⠛⠻⠿⣿⣿⣿⣿⣿⡏⠀⠀⢻⣿⣿⣷⠀⣿⡇⣸⣿⡟⠁⡀⣸⣿⣇⠀⢻⣿⣇⠀⢻⣿⠀⡙⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠿⠿⠿⠿⣷⡀⢻⣿⣿⣿",
    "⣿⣿⡟⠙⠿⠿⠿⠟⠁⣾⣿⣷⡆⠘⠛⠛⠉⢀⣀⢠⣿⣿⣿⢋⣠⣤⣤⣤⣤⣄⡀⠀⠀⠈⠉⠙⠛⠛⠳⢄⠀⠻⠿⠛⠁⢟⡅⣾⣆⣿⣿⣿⣅⠀⠻⠿⣿⠿⠋⣰⣄⠀⠀⠉⠁⣰⣿⡟⢁⣠⣤⣤⣤⣤⣀⡀⠀⠀⠈⠉⠛⠛⠛⠷⡀⠀⠿⠿⠋⢰⣿⢧⣿⠏⣠⣾⡇⣿⣿⣿⡄⠈⢿⣿⠀⢸⣿⠀⣿⢸⠟⠉⠙⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠿⠛⠋⠁⠀⢀⣀⣀⡀⢹⣧⠀⢿⣿⣿",
    "⣿⣿⣿⣦⣄⣀⣀⣠⣼⣿⣿⣿⣧⣄⣠⣴⠾⣿⣇⠘⠿⣿⣿⣿⡿⠿⠿⠟⠛⠋⠁⠀⣀⣀⣀⣠⣀⣀⣰⡿⠀⣤⣤⣴⢣⢟⣾⡿⠋⠙⠻⣿⣿⡄⢀⣀⣀⣠⣴⣿⣿⣿⣶⡆⠰⢿⣿⣴⣿⣿⠿⠿⠟⠛⠋⠁⠀⣀⣀⣀⣀⣀⣀⣼⡟⢠⣤⣤⣶⣿⢫⣿⠏⣰⣿⣿⡀⣿⣿⣿⣷⠀⡀⠀⢀⣾⡿⣼⡟⠀⢠⣤⡀⠈⠻⣿⣿⣿⣿⣿⣿⣿⠿⠟⠋⠉⠀⣀⣠⣴⣶⣿⣿⣿⣿⣿⢸⣿⠆⣾⣿⣿",
    "⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣄⠀⣠⣿⣄⠀⠀⠀⠀⠀⠀⢀⣀⣠⣴⣾⣿⣿⣿⣿⣿⣿⡿⠋⢀⣼⣿⣿⡏⣡⣾⣿⣿⣦⣤⣾⣿⡿⢃⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⡀⠀⠀⠀⠀⠀⠀⢀⣀⣤⣴⣾⣿⣿⣿⣿⣿⣿⠿⠋⢠⣾⣿⣿⣿⣱⠟⢃⣴⣿⣿⣿⣇⠈⠉⠉⠁⢠⣿⣿⣿⠟⣽⠟⢰⡀⠀⠈⠁⢠⣄⡀⠉⠉⠉⠉⠁⠀⣀⣠⣤⣶⣿⣿⣿⣿⣿⡋⠀⢙⣿⠏⠈⢁⣴⣿⣿⣿",
    "⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡋⠀⠉⣻⣿⣿⣿⣿⣿⣿⣿⣷⣽⣻⠿⢿⣿⣿⠿⠟⠋⠁⣀⣴⣿⣿⣿⣿⡇⠹⣿⣿⣿⣿⡿⠟⠋⢀⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣮⣟⡿⠿⣿⣿⣿⠿⠟⠋⠁⣠⣴⣿⣿⣿⣿⣿⣶⣾⣿⣿⣿⣿⣿⣿⣷⣶⣶⡘⠿⠿⠿⠏⠞⢁⣠⣿⣿⣷⣶⣤⣾⣿⣿⣿⣶⣶⣶⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣶⣿⣿⣦⣶⣿⣿⣿⣿⣿",
    "⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣶⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣶⣦⣤⣀⣤⣶⣾⣿⣿⣿⣿⣿⣿⣷⡀⠀⠈⠁⠀⠀⣠⣴⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣶⣤⣀⣀⣤⣶⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣶⣶⣶⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿",
    "⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣶⣶⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿",
    "⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿",
}

local solveLines = {
  [[╔═╗┬┬─┐┌─┐┌┬┐  ┌─┐┌─┐┬ ┬  ┬┌─┐  ┌┬┐┬ ┬┌─┐  ┌─┐┬─┐┌─┐┌┐ ┬  ┌─┐┌┬┐   ]],
  [[╠╣ │├┬┘└─┐ │   └─┐│ ││ └┐┌┘├┤    │ ├─┤├┤   ├─┘├┬┘│ │├┴┐│  ├┤ │││   ]],
  [[╚  ┴┴└─└─┘ ┴┘  └─┘└─┘┴─┘└┘ └─┘   ┴ ┴ ┴└─┘  ┴  ┴└─└─┘└─┘┴─┘└─┘┴ ┴ o ]],
  [[      ╔╦╗┬ ┬┌─┐┌┐┌  ┬ ┬┬─┐┬┌┬┐┌─┐  ┌┬┐┬ ┬┌─┐  ┌─┐┌─┐┌┬┐┌─┐         ]],
  [[       ║ ├─┤├┤ │││  │││├┬┘│ │ ├┤    │ ├─┤├┤   │  │ │ ││├┤          ]],
  [[       ╩ ┴ ┴└─┘┘└┘  └┴┘┴└─┴ ┴ └─┘   ┴ ┴ ┴└─┘  └─┘└─┘─┴┘└─┘         ]],
  [[                                                     - John Johnson]]
}

local humourLines = {
  [[╔═╗┌─┐┌┬┐┌─┐  ┬┌─┐  ┬  ┬┬┌─┌─┐  ┬ ┬┬ ┬┌┬┐┌─┐┬─┐                           ]],
  [[║  │ │ ││├┤   │└─┐  │  │├┴┐├┤   ├─┤│ │││││ │├┬┘                           ]],
  [[╚═╝└─┘─┴┘└─┘  ┴└─┘  ┴─┘┴┴ ┴└─┘  ┴ ┴└─┘┴ ┴└─┘┴└─o                          ]],
  [[╦ ╦┬ ┬┌─┐┌┐┌  ┬ ┬┌─┐┬ ┬  ┬ ┬┌─┐┬  ┬┌─┐  ┌┬┐┌─┐  ┌─┐─┐ ┬┌─┐┬  ┌─┐┬┌┐┌  ┬┌┬┐]],
  [[║║║├─┤├┤ │││  └┬┘│ ││ │  ├─┤├─┤└┐┌┘├┤    │ │ │  ├┤ ┌┴┬┘├─┘│  ├─┤││││  │ │ ]],
  [[╚╩╝┴ ┴└─┘┘└┘   ┴ └─┘└─┘  ┴ ┴┴ ┴ └┘ └─┘   ┴ └─┘  └─┘┴ └─┴  ┴─┘┴ ┴┴┘└┘  ┴ ┴┘]],
  [[                                                        ┬┌┬┐┌─┐  ┌┐ ┌─┐┌┬┐]],
  [[                                                        │ │ └─┐  ├┴┐├─┤ ││]],
  [[                                                        ┴ ┴ └─┘  └─┘┴ ┴─┴┘]],
  [[                                                              - Cory House]],
}

local bugLines = {
  [[  _____   _                          _                 _                             ]],
  [[ |_   _| | |_    ___   _ _   ___    (_)  ___    __ _  | | __ __ __  __ _   _  _   ___]],
  [[   | |   | ' \  / -_) | '_| / -_)   | | (_-<   / _` | | | \ V  V / / _` | | || | (_-<]],
  [[   |_|   |_||_| \___| |_|   \___|   |_| /__/   \__,_| |_|  \_/\_/  \__,_|  \_, | /__/]],
  [[                                                                           |__/      ]],
  [[                                                   _                                 ]],
  [[  ___   _ _    ___     _ __    ___   _ _   ___    | |__   _  _   __ _                ]],
  [[ / _ \ | ' \  / -_)   | '  \  / _ \ | '_| / -_)   | '_ \ | || | / _` |               ]],
  [[ \___/ |_||_| \___|   |_|_|_| \___/ |_|   \___|   |_.__/  \_,_| \__, |               ]],
  [[                                                                |___/                ]],
  [[  _              __   _                                                              ]],
  [[ | |_   ___     / _| (_) __ __                                                       ]],
  [[ |  _| / _ \   |  _| | | \ \ /  _                                                    ]],
  [[  \__| \___/   |_|   |_| /_\_\ (_)                                     - Ellen Ullman]],
}

local fixLines = {
  [[    ┌─┐┬─┐ ┬  ┌┬┐┬ ┬┌─┐  ┌─┐┌─┐┬ ┬┌─┐┌─┐      ]],
  [[    ├┤ │┌┴┬┘   │ ├─┤├┤   │  ├─┤│ │└─┐├┤       ]],
  [[    └  ┴┴ └─   ┴ ┴ ┴└─┘  └─┘┴ ┴└─┘└─┘└─┘┘     ]],
  [[╔╗╔╔═╗╔╦╗  ╔╦╗╦ ╦╔═╗  ╔═╗╦ ╦╔╦╗╔═╗╔╦╗╔═╗╔╦╗╔═╗]],
  [[║║║║ ║ ║    ║ ╠═╣║╣   ╚═╗╚╦╝║║║╠═╝ ║ ║ ║║║║╚═╗]],
  [[╝╚╝╚═╝ ╩    ╩ ╩ ╩╚═╝  ╚═╝ ╩ ╩ ╩╩   ╩ ╚═╝╩ ╩╚═╝]],
  [[                              - Steve Maguire ]],
}

local processLines = {
  [[╔╦╗╦ ╦╔═╗  ╔═╗╦═╗╔═╗╔═╗╔╦╗╦╦  ╦╔═╗  ╔═╗╦═╗╔═╗╔═╗╔═╗╔═╗╔═╗]],
  [[ ║ ╠═╣║╣   ║  ╠╦╝║╣ ╠═╣ ║ ║╚╗╔╝║╣   ╠═╝╠╦╝║ ║║  ║╣ ╚═╗╚═╗]],
  [[ ╩ ╩ ╩╚═╝  ╚═╝╩╚═╚═╝╩ ╩ ╩ ╩ ╚╝ ╚═╝  ╩  ╩╚═╚═╝╚═╝╚═╝╚═╝╚═╝]],
  [[This is Amazing!]],
  [[This is difficult]],
  [[This is shit]],
  [[I am shit]],
  [[This might be OK]],
  [[This is Amazing!]],
}

local nameLine = {
  [[     /\/\   __ _ _ __ _   _ / _|   \ \  ___  _ __  _   _ ]],
  [[    /    \ / _` | '__| | | | |_     \ \/ _ \| '_ \| | | |]],
  [[   / /\/\ \ (_| | |  | |_| |  _| /\_/ / (_) | | | | |_| |]],
  [[   \/    \/\__,_|_|   \__,_|_|   \___/ \___/|_| |_|\__, |]],
  [[                                                   |___/ ]],
}

local zaiyaanLine = {
 [[⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿]],
 [[⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠿⠋⠁⠀⠉⠉⠈⠈⠉⠛⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿]],
 [[⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠟⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠙⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿]],
 [[⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿]],
 [[⣿⣿⣿⣿⣿⣿⠿⣿⠿⠿⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿]],
 [[⣿⣿⣿⣿⣿⣿⣿⣿⣿⡇⢀⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿]],
 [[⣿⣿⣿⣿⣿⣿⣿⣿⣿⡇⠰⠟⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⠁⢸⣿⣿⠋⢸⣿⣿⣿]],
 [[⣿⣿⣿⡟⢻⣿⣿⣿⣿⣿⢀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⣿⣷⣿⣿⣿⣧⢸⣿⣿⣿]],
 [[⣿⣿⣿⣷⣿⣿⣿⣿⣿⣿⣏⠀⠀⠀⠀⠀⠀⠀⠀⠘⠻⣾⣶⣆⠀⠀⠀⠙⢻⣿⣿⣿⣿⣿⣾⣿⣿⣿]],
 [[⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡄⠀⠀⢀⠀⠀⠀⠀⠀⣈⣿⣿⣿⣠⠄⡀⢠⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿]],
 [[⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠒⢸⣿⣿⣦⠀⠠⣴⣾⣿⣿⣿⡏⠰⣷⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿]],
 [[⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣄⠀⠀⠀⠀⠀⠀⠀⠈⠹⠿⣿⣿⣿⠹⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿]],
 [[⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣦⡀⠀⠀⠀⠀⠀⠀⠀⠀⠟⠁⠀⣰⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿]],
 [[⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣟⣤⣄⠀⠀⠀⠀⠀⠀⢀⣠⣾⣿⣯⣭⡿⣿⣿⣿⣿⣯⣙⣿⣿⣿]],
 [[⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⣿⣏⣌⠃⢀⣠⣴⣶⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⢿⣿⣿⣿]],
 [[⣿⣿⣿⣿⣿⠿⠿⠿⠿⣿⣿⣿⣯⣵⣿⣿⣷⣰⣿⣾⣿⣹⣿⣿⣿⣿⣿⣿⣿⠝⢿⣿⣿⣿⣷⣿⣿⣿]],
 [[⣿⣿⣿⣿⣿⣶⡦⠄⠀⢻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣶⣶⣽⣿⣿⣿⣿⣿⣿]],
 [[⣿⣿⣿⣿⣿⣿⣿⣦⣄⣿⣿⣿⣿⣿⡯⣻⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿]],
 [[⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣽⣿⣿⣧⣻⣿⣾⣿⣿⣿⣿⣿⣗⢻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿]],
}

local function lineColor(lines, popStart, popEnd)
  local out = {}
  for i, line in ipairs(lines) do
    local hi = "StartLogo" .. i
    if i > popStart and i <= popEnd then
      hi = "StartLogoPop" .. i - popStart
    elseif i > popStart then
      hi = "StartLogo" .. i - popStart
    else
      hi = "StartLogo" .. i
    end
    table.insert(out, { hi = hi, line = line})
  end
  return out
end

local headers = {
  lineColor(coolLines, 0, 1),
  lineColor(solveLines, 0, 0),
  lineColor(humourLines, 6, 9),
  lineColor(bugLines, 5, 9),
  lineColor(processLines, 0, 3),
  lineColor(fixLines, 0, 0),
  lineColor(nameLine, 0, 3),
  lineColor(zaiyaanLine, 0, 6),
}

local function header_chars()
  math.randomseed(os.time())
  return headers[math.random(#headers)]
end

local function header_color()
  local lines = {}
  for _, lineConfig in pairs(header_chars()) do
    local hi = lineConfig.hi
    local line_chars = lineConfig.line
    local line = {
      type = "text",
      val = line_chars,
      opts = {
        hl = hi,
        shrink_margin = false,
        position = "center",
      },
    }
    table.insert(lines, line)
  end

  local output = {
    type = "group",
    val = lines,
    opts = { position = "center", },
  }

  return output
end

local function get_greeting()
  local hour = tonumber(os.date("%H"))
  local greeting = "Hi Maruf, "
  if hour == 24 or hour < 7 then
      greeting = greeting .. "Sleep Well 🛌"
  elseif hour < 12 then
    greeting = greeting .. "Good Morning 🌅"
  elseif hour < 18 then
    greeting = greeting .. "Good Afternoon ☀️"
  elseif hour < 20 then
    greeting = greeting .. "Good Evening 🌇"
  else
    greeting = greeting .. "Good Night 🌙"
  end
  return string.format("%s\nIt's %s on %s. Make it count!", greeting, os.date("%I:%M %p"), os.date("%A, %B %d, %Y"))
end

local function get_random_quote()
  local quotes = {
      "The best way to predict the future is to invent it. - Alan Kay",
      "If you don't finish then you're just busy, not productive.",
      "Fools ignore complexity. Pragmatists suffer it. Some can avoid it. Geniuses remove it. - Alan Perlis",
      "If you don't fail at least 90% of the time, you're not aiming high enough. - Alan Kay",
      "I would rather die of passion than of boredom. - Vincent Van Gogh",
      "Be a catalyst for change. You can't force change on people. Instead, show them how the future might be and help them participate in creating it.",
      "DRY - Don't Repeat Yourself. Every piece of knowledge must have a single, unambiguous, authoritative representation within a system.",
      "Don't assume it - prove it. Prove your assumptions in the actual environment - with real data and boundary conditions.",
      "Don't think outside the box - find the box. When faced with an impossible problem, identify the real constraints. Ask yourself: 'Does it have to be done this way? Does it have to be done at all?'",
      "Think about your work. Turn off the autopilot and take control. Constantly critique and appraise your work.",
      "Remember the big picture. Don't get so engrossed in the details that you forget to check what's happening around you.",
      "Invest regularly in your knowledge portfolio. Make learning a habit.",
      "It's both what you say and the way you say it. There's no point in having great ideas if you don't communicate them effectively.",
      "Make it easy to reuse. If it's easy to reuse, people will. Create an environment that supports reuse.",
      "There are no final decisions. No decision is cast in stone. Instead, consider each as being written in the sand at the beach, and plan for change.",
      "Estimate to avoid surprises. Estimate before you start. You'll spot potential problems up front.",
      "No matter how far down the wrong road you have gone, turn back now.",
      "Why do we never have time to do it right, but always have time to do it over?",
      "Computers are useless. They can only give you answers. - Pablo Picasso",
      "The question of whether computers can think is like the question of whether submarines can swim. - Edsger W. Dijkstra",
      "It's ridiculous to live 100 years and only be able to remember 30 million bytes. You know, less than a compact disc. The human condition is really becoming more obsolete every minute. - Marvin Minsky",
      "There are only two industries that refer to their customers as 'users'. - Edward Tufte",
      "If you can't explain something to a six-year-old, you really don't understand it yourself. - Albert Einstein",
      "They did not know it was impossible, so they did it! - Mark Twain",
      "Do not take life too seriously. You will never get out of it alive. - Elbert Hubbard",
  }
  return quotes[math.random(#quotes)]
end

local function configure()
  local dashboard = require("alpha.themes.dashboard")
  local buttons = {
    type = "group",
    val = {
--      { type = "text", val = "Quick links", opts = { hl = "SpecialComment", position = "center" } },
--      { type = "padding", val = 1 },
      dashboard.button("f", " 📚  Find file", ":Telescope find_files<CR>"),
      dashboard.button("e", " 🌱  New file", "<cmd>ene<CR>"),
      dashboard.button("r", " 🚀  Recent", ":Telescope oldfiles<CR>"),
      dashboard.button("s", " 🔬  Settings", ":e $MYVIMRC | :cd %:p:h | split . | wincmd k | pwd<CR>"),
      dashboard.button("q", " 🏓  Quit NVIM", ":qa<CR>"),
      dashboard.button("u", " 💭  Update plugins", "<cmd>Lazy sync<CR>"),
    },
    position = "center",
  }

  local themeconfig = {
      layout = {
          { type = "padding", val = 2 },
          header_color(),
          { type = "padding", val = 2 },
          buttons,
          { type = "padding", val = 2 },
          { type = "text", val = get_greeting(), opts = { hl = "Function", position = "center" } },
          { type = "padding", val = 1 },
          { type = "text", val = get_random_quote(), opts = { hl = "Type", position = "center" } },
      },
      opts = {
          margin = 5,
      },
  }
  return themeconfig
end

require'alpha'.setup(configure())
-- Define the highlight groups for the gradient (different colors over lines)
vim.cmd([[
  highlight StartLogo1 guifg=#ff5f87
  highlight StartLogo2 guifg=#ff87af
  highlight StartLogo3 guifg=#ffafd7
  highlight StartLogo4 guifg=#ffd7ff
  highlight StartLogo5 guifg=#afffdf
  highlight StartLogo6 guifg=#87ffd7
  highlight StartLogo7 guifg=#5fffd7
  highlight StartLogo8 guifg=#00ffff
  highlight StartLogo9 guifg=#00d7ff
]])
