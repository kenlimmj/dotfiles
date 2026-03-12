if status is-interactive
  abbr --add grep "grep --color"
  abbr --add ls "eza -hlTX -L=3 --no-permissions --no-user --git --git-ignore --group-directories-first"

  starship init fish | source
end
