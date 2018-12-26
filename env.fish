set -x TERM xterm-256color
set -x LANG ja_JP.UTF-8
set -x LD_LIBRARY_PATH /usr/local/lib
set -x LIBRARY_PATH /usr/local/lib
set -x CPATH /usr/local/include
set -x NODE_PATH /usr/local/lib/node_modules

set -x EDITOR emacs
set -x VISUAL "emacsclient -nw"

if test (uname) = "Linux"
  # for ruby
  status --is-interactive; and source (rbenv init - | sed 's/setenv/set -gx/' | psub)
else
  # for ruby
  eval (rbenv init - | source)

  set -x PYTHONPATH $HOME/Library/Python/2.7/lib/python/site-packages
  set -x PYTHON $HOME/Library/Python/2.7/bin
  set fish_user_paths $PYTHON $fish_user_paths

  set -x MECAB_PATH /Users/dongguo/work/project/mbv/poc/mecab/binary/bin
  set fish_user_paths $fish_user_paths $MECAB_PATH
end

# for go
if test -x go
  set -x GOPATH $HOME/go $HOME/work/project/mbv/go $HOME/work/go/study/goeg $HOME/work/go/test
  set fish_user_paths $GOROOT/bin $fish_user_paths
  set fish_user_paths $HOME/go/bin $fish_user_paths
end

# my bin
set fish_user_paths $HOME/bin $fish_user_paths

function local_bin
  for dir in (ls $HOME/local)
    set BIN $HOME/local/$dir/bin
    if test -d $BIN
        set fish_user_paths $fish_user_paths $BIN
    end

    set SBIN $HOME/local/$dir/sbin
    if test -d $SBIN
        set fish_user_paths $fish_user_paths $SBIN
    end
  end
end
local_bin
