export LANG=ja_JP.UTF-8
export LD_LIBRARY_PATH=/usr/local/lib
export LIBRARY_PATH=/usr/local/lib
export CPATH=/usr/local/include
export NODE_PATH=/usr/local/lib/node_modules

set -x EDITOR emacs
set -x VISUAL "emacsclient -nw"

# for ruby
eval (rbenv init - | source)

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

export MECAB_PATH=/Users/dongguo/work/project/mbv/poc/mecab/binary/bin
set fish_user_paths $fish_user_paths $MECAB_PATH

set fish_user_paths $HOME/Library/Python/3.7/bin $fish_user_paths
