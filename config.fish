# For a full list of active aliases, run `alias`.
# alias & function 読み込み
. ~/.config/fish/aliases.fish

# 環境変数読み込み
if status --is-login
  . ~/.config/fish/env.fish
end

if test -z $INSIDE_EMACS
  function fish_prompt
    powerline-shell --shell bare $status
  end
end

function dired
  emacsclient -e "(dired \"$PWD\")"
end
