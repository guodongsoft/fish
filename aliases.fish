# alias
alias rm "rm -i"
alias cp "cp -i"
alias mv "mv -i"
alias mkdir "mkdir -p"

alias find "gfind"
alias xargs "gxargs"

alias sbcl 'rlwrap sbcl'
alias node_es6 'node --experimental-modules'

# alias for emacs
set EMACS_HOME /Applications/Emacs.app/Contents/MacOS
alias emacs "$EMACS_HOME/Emacs -nw"
alias em "$EMACS_HOME/Emacs -nw"

# alias for git
alias gst "git status"
alias gdif "git diff"
alias gdifc "git diff --cached"

# alias for Mac
alias ql "qlmanage -p $argv[1]"

# user defined functions
function cd
  builtin cd $argv
  ls -a
end

function fish_user_key_bindings
  bind \cr peco_select_history
  bind \co peco_select_ghq_repository
end
