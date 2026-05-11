if status is-interactive
    zoxide init fish | source
end

function y
    set tmp (mktemp -t "yazi-cwd.XXXXXX")
    yazi $argv --cwd-file="$tmp"

    if test -s "$tmp"
        set cwd (cat "$tmp")
        if test -n "$cwd" -a "$cwd" != "$PWD"
            cd "$cwd"
        end
    end

    rm -f "$tmp"
end
# pnpm
set -Ux PNPM_HOME /Users/shashaminchokjaroenwathanakul/Library/pnpm


abbr gs "git status"
abbr gp "git push"
abbr gc "git commit"
abbr gcm "git commit -m"
abbr gaa "git add ."
abbr ga "git add"
abbr gpl "git pull"
abbr c "claude"
abbr cds "claude --dangerously-skip-permissions"

abbr v nvim
abbr vim nvim

abbr ta "tmux attach"
abbr tl "tmux ls"
abbr tks "tmux kill-session -t"
abbr tkns "tmux kill-server"
