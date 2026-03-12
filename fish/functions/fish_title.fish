function fish_title
    if set -q TMUX
        return
    end
    set -l ssh
    set -q SSH_TTY
    and set ssh "["(prompt_hostname | string sub -l 10 | string collect)"]"
    echo -- $ssh (status current-command) (prompt_pwd -d 1 -D 1)
end
