# Path to your oh-my-zsh installation.
export ZSH=/Users/liam_dempsey/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="af-magic"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.

plugins=(
  homebrew
  z
  git
  osx
  )

# User configuration

export PATH="/Applications/MAMP/bin/php/php5.6.10/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/Applications/MAMP/Library/bin"
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set Alias for longer MAMP directory
alias htdocs='cd /Applications/MAMP/htdocs'

alias go1='cd /Volumes/Fileservers/LBDesign-Project'
alias go2='cd /Volumes/Fileservers/LBDesign-ProjectArchive'
alias go3='cd /Volumes/Fileservers/Archive-01'
alias go4='cd /Volumes/Fileservers/Archive-02'

alias vault1='~/Volumes/Fileservers/LBDesign-Project'

alias editz='atom ~/.zshrc'
alias sourcez='source ~/.zshrc'

# Set test Alias to create a new file
alias okay='afplay ~/Desktop/SuperAwesome.m4a'

# This will highlight the patterns you specify in a color of your choice.
ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets pattern cursor)
ZSH_HIGHLIGHT_PATTERNS=('rm -rf *' 'fg=white,bold,bg=red')

# This will add a 10 second wait before you can confirm a wildcard deletion.
setopt RM_STAR_WAIT

#  These will set our history to allow a ton more entires, ignore duplicate commands, and ignore some of the commands we don’t need a history of.
export HISTSIZE=32768;
export HISTFILESIZE=$HISTSIZE;
export HISTCONTROL=ignoredups;
export HISTIGNORE="ls:cd:cd -:pwd:exit:date:* --help";


# Functions
# Set up folders in a directory for a PRINT project
function pproj() {
	project="${PWD##*/}"

	echo "Setting up new project folder / file structure for $project..."
	echo "Making dirs..."

	mkdir -p "content"
	mkdir -p "images"
	mkdir -p "notes"
	mkdir -p "drafts"

	echo "Done!"

}

# Set up folders in a directory for a WEB project
function wproj() {
	project="${PWD##*/}"

	echo "Setting up new project folder / file structure for $project..."
	echo "Making dirs..."

	mkdir -p "content"
	mkdir -p "images"
	mkdir -p "notes"
	mkdir -p "misc"

	echo "Done!"

}
