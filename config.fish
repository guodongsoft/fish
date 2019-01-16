# For a full list of active aliases, run `alias`.
# alias & function 読み込み
. ~/.config/fish/aliases.fish

# 環境変数読み込み
if status --is-login
  . ~/.config/fish/env.fish
end

if test -z $INSIDE_EMACS
  # Use powerline
  function fish_prompt
    powerline-shell --shell bare $status
  end
else
  function fish_title; end
  # Hide right prompt for emacs
  function fish_right_prompt; end
end
