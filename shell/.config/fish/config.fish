source $HOME/.config/fish/vars.fish
source $HOME/.config/fish/functions/tmux.fish

abbr -a bat batcat

abbr -a e nvim
abbr -a g git
abbr -a vimdiff 'nvim -d'
abbr -a o xdg-open

if command -v exa > /dev/null
abbr -a l 'exa'
abbr -a ls 'exa'
abbr -a ll 'exa -la'
abbr -a lg 'exa -alh --git'
abbr -a lgt 'exa -alh --tree --git --ignore-glob=".git"'
end


# Fish git prompt
set __fish_git_prompt_showuntrackedfiles 'yes'
set __fish_git_prompt_showdirtystate 'yes'
set __fish_git_prompt_showstashstate 'yes'
set __fish_git_prompt_showupstream 'none'
set -g fish_prompt_pwd_dir_length 3

# colored man output
# from http://linuxtidbits.wordpress.com/2009/03/23/less-colors-for-man-pages/
setenv LESS_TERMCAP_mb \e'[01;31m'       # begin blinking
setenv LESS_TERMCAP_md \e'[01;38;5;74m'  # begin bold
setenv LESS_TERMCAP_me \e'[0m'           # end mode
setenv LESS_TERMCAP_se \e'[0m'           # end standout-mode
setenv LESS_TERMCAP_so \e'[38;5;246m'    # begin standout-mode - info box
setenv LESS_TERMCAP_ue \e'[0m'           # end underline
setenv LESS_TERMCAP_us \e'[04;38;5;146m' # begin underline

function fish_prompt
    set last_status $status
    if test $last_status -ne 0
        set_color red
    else
        set_color brblack
    end
    echo -n "[$last_status]"
    set_color brblack
    echo -n "["(date "+%H:%M")"] "
    set_color blue
   echo -n (hostname)
    if [ $PWD != $HOME ]
        set_color brblack
        echo -n ':'
        set_color yellow
        echo -n (basename $PWD)
    end
    set_color green
    printf '%s ' (__fish_git_prompt)
    set_color red
    echo -n '❯ '
    set_color normal
end

function fish_greeting
end
