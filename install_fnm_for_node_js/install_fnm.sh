# Checking if fnm is installed
if ! [ -x "$(command -v fnm)" ]; then
    echo 'Installing fnm, node version manager...'

    # Change this for 'bash' or 'zsh'
    SHELL='fish' 

    # Install node via fnm
    curl -fsSL https://fnm.vercel.app/install | bash
    
    # Append the String 'eval "$(fnm env --use-on-cd)"' to the end of the .bashrc file
    if [ "$SHELL" = "bash" ]; then
        echo 'eval "$(fnm env --use-on-cd)"' >> ~/.bashrc
    elif [ "$SHELL" = "zsh" ]; then
        echo 'eval "$(fnm env --use-on-cd)"' >> ~/.zshrc
    elif [ "$SHELL" = "fish" ]; then
        touch ~/.config/fish/conf.d/fnm.fish
        echo 'fnm env --use-on-cd | source' >> ~/.config/fish/conf.d/fnm.fish
    fi

    # Reload the .bashrc file
else 
  echo 'node is installed.'
fi