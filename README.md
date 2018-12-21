# fish #

## fish インストール ##

### Ubuntu ###

``` shell
sudo apt-add-repository ppa:fish-shell/release-2
sudo apt-get update
sudo apt-get install fish
```

### Mac ###

``` shell
brew install fish
```

## fisherman インストール ##

``` shell
curl -Lo ~/.config/fish/functions/fisher.fish --create-dirs https://git.io/fisher
```

## fishのテーマ変更 ##

- どのようなテーマがあるかは、以下ページが参考になります。
- https://github.com/oh-my-fish/oh-my-fish/blob/master/docs/Themes.md
- ここで「bobthefish」というテーマを利用しており、以下手順でインストールしています。

``` shell
fisher omf/theme-bobthefish
```

-------------------------------------------------------------------------------

# Powerline settings #

## Redefine fish_prompt in ~/.config/fish/config.fish ##

``` fish
function fish_prompt
  powerline-shell --shell bare $status
end
```
