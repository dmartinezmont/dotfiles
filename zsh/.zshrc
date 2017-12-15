source ~/.config/zsh/antigen.zsh

antigen use oh-my-zsh

antigen bundle git
antigen bundle yarn
antigen bundle command-not-found

antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-completions
antigen bundle zsh-users/zsh-history-substring-search
antigen bundle zsh-users/zsh-autosuggestions

antigen apply

alias mc="emacs -nw"
alias vim="nvim"
alias .="cd .."
alias ..="cd ../.."

export RUST_SRC_PATH="$HOME/.rustup/toolchains/stable-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/src"
export JAVA_HOME="/usr/lib/jvm/java-8-openjdk-amd64"
export ANDROID_HOME="$HOME/Android/Sdk"

export PATH="~/.cargo/bin:$PATH"
export PATH="~/.local/bin:$PATH"
export PATH="$ANDROID_HOME:$PATH"

if [ -f ~/.config/zsh/personal.zsh-theme ]; then
  source ~/.config/zsh/personal.zsh-theme
else
  print "Theme not found"
fi

