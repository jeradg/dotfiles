# .zsh

(Based on [my previous attempt at customizing oh-my-zsh](https://github.com/jeradg/oh-my-zsh/blob/master/.zshrc).)

My zsh config (for use with oh-my-zsh).

## Usage

1. Install [oh-my-zsh](https://github.com/ohmyzsh/ohmyzsh)
2. Remove the `.zshrc` created by oh-my-zsh
    ```
    rm ~/.zshrc
    ```
4. Clone this repo
    ```
    git clone git@github.com:jeradg/.zsh.git ~/.zsh
    ```
4. Symlink ~/.zshrc to the file in this repo

    ```
    ln -s ~/.zsh/.zshrc ~/.zshrc
    ```
5. Reload your terminal. Game on.
    ```
    source ~/.zshrc
    ```
