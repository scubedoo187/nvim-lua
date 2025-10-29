export ZSH=$HOME/.oh-my-zsh
export UPDATE_ZSH_DAYS=13

ZSH_THEME="robbyrussell"
CASE_SENSITIVE="true"
DISABLE_AUTO_UPDATE="true"
DISABLE_LS_COLORS="false"
DISABLE_AUTO_TITLE="false"
DISABLE_CORRECTION="false"
COMPLETION_WAITING_DOTS="false"
DISABLE_UNTRACKED_FILES_DIRTY="false"
ZSH_CUSTOM=$HOME/.nvim-lua/zsh
DEFAULT_USER=`whoami`

plugins=(
    git
    dotenv
    python
    tmux
    tmuxinator
    virtualenv
    zsh-autosuggestions
    zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh
[ -f "$HOME/.zshrc.local" ] && source ~/.zshrc.local

# bun completions
[ -s "/Users/yg_jung/.bun/_bun" ] && source "/Users/yg_jung/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
