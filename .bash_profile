# .bash_profile

# Get the aliases and functions
if [ -r ~/.profile ]; then 
	. ~/.profile; 
fi
case "$-" in 
	*i*) 
	if [ -r ~/.bashrc ]; then 
	. ~/.bashrc; 
	fi;; 
esac

# User specific environment and startup programs

