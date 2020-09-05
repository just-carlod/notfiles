#zsh config fie
#prompt='%K{black}%B[%F{white}%n@%m%f]%b at %T %1~ %k'
prompt='%K{blue}%B %n@%m%b %k%F{cyan} %fin
%B%K{black} %1~ $(git_status)%k%b '
setopt prompt_subst
setxkbmap pl

alias la='ls -al --color'
alias ls='ls --color'
#alias nvim='st -t nvim && nvim'
alias vim='nvim'
alias vifm='vim .'
alias pacman='sudo pacman'
alias rm='rm -r'
alias Rm='rm -rf'
alias tor='./.local/bin/tor/start-tor.desktop'
DISABLE_AUTO_TITLE="true"
function git_status() {
	ref=$(git symbolic-ref --quiet --short HEAD 2> /dev/null || git rev-parse --short HEAD 2> /dev/null)
	if [ $? -eq 0 ]; then
		echo -n "| %F{magenta}$ref%f"
		[[ $(git status --short | wc -l) -ne 0 ]] && echo -n "%F{white} +"
	fi
}
