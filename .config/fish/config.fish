if status is-interactive
    fish_config theme choose None
end


alias ls="exa --icons"
alias v="nvim"
alias t="tmux"
alias copy="xclip -selection clipboard"
alias sel="xclip -o"
alias ts="tmux-sessionizer"
alias fd="fdfind"


function fish_title
    set -q argv[1]; or set argv fish
    # Looks like ~/d/fish: git log
    # or /e/apt: fish
    echo $argv;
end

set -gx EDITOR nvim
set -gx fish_greeting ($HOME/.scripts/ramoji)
set -U fish_prompt_pwd_dir_length 0

bind \ci up-or-search
bind \t complete
