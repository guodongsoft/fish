# For a full list of active aliases, run `alias`.
# alias & function 読み込み
. ~/.config/fish/aliases.fish

# 環境変数読み込み
if status --is-login
  . ~/.config/fish/env.fish
end

#function fish_prompt
#  powerline-shell --shell bare $status
#end

#set fish_function_path $fish_function_path "$PYTHONPATH/powerline/bindings/fish"
#powerline-setup
