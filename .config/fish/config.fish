# Function definitions
set -U fish_greeting ""
atuin init fish | source
function cp
    command cp -i $argv
end

function mv
    command mv -i $argv
end

function rm
    command trash -v $argv
end

function performance
    command sudo auto-cpufreq --force performance
end

function powersave
    command sudo auto-cpufreq --force powersave
end

function mkdir
    command mkdir -p $argv
end

# Change directory functions
function home
    cd ~
end

function cd..
    cd ..
end

function security
    sudo rkhunter --checkall
end

function bspwmrc
    vim ~/.config/bspwm/bspwmrc
end

function sxhkdrc
    vim ~/.config/bspwm/keybinding/sxhkdrc
end

function ..
    cd ..
end

function ...
    cd ../..
end

function ....
    cd ../../..
end

function .....
    cd ../../../..
end

# Function to go back to the old directory 
function bd
    cd "$OLDPWD"
end

# Remove a directory and all files function 
function rmd
    /bin/rm --recursive --force --verbose $argv 
end

# Show open ports function 
function openports 
    sudo netstat -nape --inet $argv 
end 

# Other functions 
function grub-update 
    sudo grub-mkconfig -o /boot/grub/grub.cfg 
end 

function update 
    paru -Syu --noconfirm  
end 

function clone 
    git clone $argv  
end 

function music 
    ncmpcpp  
end 

function i 
    paru -S --noconfirm $argv  
end 

function remove 
    paru -R --noconfirm $argv  
end 

function a 
    paru -S $argv  
end 

function n 
    neofetch  
end 

function ff 
    fastfetch --logo-type sixel  
end 

# Custom ls function with eza (if installed)
function ls  
   eza --icons=always --color=always -a $argv  
end  

# Custom ll function with eza (if installed)
function ll  
   eza --icons=always --color=always -la $argv  
end  

alias vim=nvim
ff
