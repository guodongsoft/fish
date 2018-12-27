function dired
  emacsclient -e "(dired \"$PWD\")"
end
