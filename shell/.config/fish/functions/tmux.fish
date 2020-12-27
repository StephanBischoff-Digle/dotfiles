function ta --description "Attaches to a TMUX session"
    tmux a -t $argv
end

function tls --description "Lists all TMUX sessions"
    tmux ls
end

function tn --description "Creates a new TMUX session"
    tmux new -s $argv
end

function tt --description "Creates or attaches to the TMUX session with the given name"
    tmux a -t $argv[1] || tmux new -s $argv[1]
end
