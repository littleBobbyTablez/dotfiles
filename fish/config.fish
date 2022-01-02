set -gx VAULT_SKIP_VERIFY 1 # Communication is SSL-encrypted but uses a self-signed certificate
set -gx VAULT_ADDR https://decgn-pr-mbb-vault.de.valtech.com:8200/
export JAVA8_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_221.jdk/Contents/Home/
export JAVA11_HOME=/Library/Java/JavaVirtualMachines/jdk-11.0.2.jdk/Contents/Home/
export JAVA_HOME=$JAVA8_HOME
export LC_ALL=de_DE.UTF-8

# note: this erases the default fish_mode_prompt, which adds a vi mode
# indicator to the left of your prompt
function fish_mode_prompt; end

export EDITOR='nvim'

## SASHIMI

#function fish_prompt
#  set -l last_status $status
#  set -l cyan (set_color -o cyan)
#  set -l yellow (set_color -o yellow)
#  set -g red (set_color -o red)
#  set -g blue (set_color -o blue)
#  set -l green (set_color -o green)
#  set -g normal (set_color normal)
#
#  set -l ahead (_git_ahead)
#  set -g whitespace ' '
#
#  if test $last_status = 0
#    set initial_indicator "$green◆"
#    set status_indicator "$normal❯$cyan❯$green❯"
#  else
#    set initial_indicator "$red✖ $last_status"
#    set status_indicator "$red❯$red❯$red❯"
#  end
#  set -l cwd $cyan(basename (prompt_pwd))
#
#  if [ (_git_branch_name) ]
#
#    if test (_git_branch_name) = 'master'
#      set -l git_branch (_git_branch_name)
#      set git_info "$normal git:($red$git_branch$normal)"
#    else
#      set -l git_branch (_git_branch_name)
#      set git_info "$normal git:($blue$git_branch$normal)"
#    end
#
#    if [ (_is_git_dirty) ]
#      set -l dirty "$yellow ✗"
#      set git_info "$git_info$dirty"
#    end
#  end
#
#  # Notify if a command took more than 5 minutes
#  if [ "$CMD_DURATION" -gt 300000 ]
#    echo The last command took (math "$CMD_DURATION/1000") seconds.
#  end
#
#  echo -n -s $initial_indicator $whitespace $cwd $git_info $whitespace $ahead $status_indicator $whitespace
#end
#
#function _git_ahead
#  set -l commits (command git rev-list --left-right '@{upstream}...HEAD' ^/dev/null)
#  if [ $status != 0 ]
#    return
#  end
#  set -l behind (count (for arg in $commits; echo $arg; end | grep '^<'))
#  set -l ahead  (count (for arg in $commits; echo $arg; end | grep -v '^<'))
#  switch "$ahead $behind"
#    case ''     # no upstream
#    case '0 0'  # equal to upstream
#      return
#    case '* 0'  # ahead of upstream
#      echo "$blue↑$normal_c$ahead$whitespace"
#    case '0 *'  # behind upstream
#      echo "$red↓$normal_c$behind$whitespace"
#    case '*'    # diverged from upstream
#      echo "$blue↑$normal$ahead $red↓$normal_c$behind$whitespace"
#  end
#end
#
#function _git_branch_name
#  echo (command git symbolic-ref HEAD ^/dev/null | sed -e 's|^refs/heads/||')
#end
#
#function _is_git_dirty
#  echo (command git status -s --ignore-submodules=dirty ^/dev/null)
#end
#
## END SASHIMI




### SET EITHER DEFAULT EMACS MODE OR VI MODE ###
function fish_user_key_bindings
  # fish_default_key_bindings
    fish_vi_key_bindings
    end
### END OF VI MODE ###

### AUTOCOMPLETE AND HIGHLIGHT COLORS ###
set fish_color_normal brcyan
set fish_color_autosuggestion '#7d7d7d'
set fish_color_command brcyan
set fish_color_error '#ff6c6b'
set fish_color_param brcyan



# Functions needed for !! and !$
function __history_previous_command
    switch (commandline -t)
        case "!"
            commandline -t $history[1]; commandline -f repaint
        case "*"
            commandline -i !
    end
end

function __history_previous_command_arguments
    switch (commandline -t)
        case "!"
            commandline -t ""
            commandline -f history-token-search-backward
        case "*"
            commandline -i '$'
    end
end

# The bindings for !! and !$
if [ $fish_key_bindings = fish_vi_key_bindings ];
    bind -Minsert ! __history_previous_command
    bind -Minsert '$' __history_previous_command_arguments
    bind -Minsert \cX\cE edit_command_buffer
    
else
    bind ! __history_previous_command
    bind '$' __history_previous_command_arguments
    bind \cX\cE edit_command_buffer
end

##ALIASES

alias vim='nvim'

starship init fish | source

set PATH $HOME/.cargo/bin $PATH
