# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi
source ~/iTerm/powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# Ignores a command if the same command was recorded before
export HISTCONTROL=ignoredups

# Add ~/bin to PATH
export PATH=$PATH:~/bin

# Some helpful aliases
alias la="ls -alh"
alias ll="ls -l"
alias l.="ls -d .*"
alias cd1="cd ~/Developer/Switch/"
alias cd2="cd ~/Developer/Projects/"
alias cda="cd; cd ../../Applications/"
alias vi="vim"
alias chmod='chmod --preserve-root'
alias chown='chown --preserve-root'
alias free='top -l 1 -s 0 | grep PhysMem'
alias ports='lsof -i -P -n | grep LISTEN'
alias whoah="~/Library/Python/3.9/bin/gif-for-cli 18002878"
alias ij="open -a /Applications/IntelliJ\ IDEA\ CE.app"

# Plugin
# Zsh syntaxe highlighting
source /Users/ricardomendes/iTerm/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/Users/ricardomendes/.sdkman"
[[ -s "/Users/ricardomendes/.sdkman/bin/sdkman-init.sh" ]] && source "/Users/ricardomendes/.sdkman/bin/sdkman-init.sh"