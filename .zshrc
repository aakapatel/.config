# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="powerlevel10k/powerlevel10k"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git zsh-autosuggestions zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

#source /opt/ros/noetic/setup.zsh

source ~/ros_catkin_ws/devel_isolated/setup.zsh

export VISUAL=nvim;
export EDITOR=nvim;




# if [ -z "$SSH_AUTH_SOCK" ] || [ ! -S "$SSH_AUTH_SOCK" ] ; then
#     eval "$(ssh-agent -s > /dev/null 2>&1)"
#     ssh-add -l > /dev/null 2>&1 || ssh-add ~/.ssh/aakapatel > /dev/null 2>&1
# fi


# Check if SSH agent is running
if [ -z "$SSH_AUTH_SOCK" ]; then
    eval "$(ssh-agent -s)" >/dev/null 2>&1
fi

# Check if the SSH key is added
if ! ssh-add -l | grep -q "aakapatel"; then
    ssh-add ~/.ssh/aakapatel >/dev/null 2>&1
fi

alias sr="source devel/setup.zsh"
alias bs="source ~/.zshrc"
alias cbe="catkin build exploration"
alias cba="catkin build acl_exploration"
alias cbs="catkin build stage_planner"
alias tmkill="tmux kill-session"
alias cde="cd ~/catkin_workspaces/exploration_ws; sr"
alias remote_rviz="export ROS_MASTER_URI=http://10.42.0.1:11311; export ROS_IP=10.42.0.232"
alias remote_mesh_shafter3d="export ROS_MASTER_URI=http://192.168.10.35:11311; export ROS_IP=192.168.10.232"
alias remote_mesh_shafter2="export ROS_MASTER_URI=http://192.168.10.25:11311; export ROS_IP=192.168.10.232"
alias cbs="catkin build stage_planner"
alias ssh_mesh_shafter2_field="ssh shafter2@192.168.10.25"
alias ssh_mesh_shafter3d_field="ssh shafter3d@192.168.10.35"
alias ssh_mesh_shafter4_field="ssh shafter4@192.168.10.45"
alias ssh_dronedust_vicon="ssh dronedust@192.168.1.95"
alias dronedust_ssh_subt="ssh dronedust@10.42.0.1"
alias shafter4_field="ssh shafter4@10.42.0.1"
alias dronedust_ssh="ssh dronedust@10.42.0.1"
alias shafter2_field="ssh shafter2@10.42.0.1"
alias shafter3d_field="ssh shafter3d@10.42.0.1"
alias pioneer_field="ssh nucnuc@10.42.0.1"
alias spotnuc_vnc='ssh spotnuc@10.42.0.1 -L 5901:localhost:5901'
alias shafterx1_lab='ssh shafterx1@192.168.1.250'
alias shafterx1_field='ssh shafterx1@10.42.0.1'
alias vim="nvim"
# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
