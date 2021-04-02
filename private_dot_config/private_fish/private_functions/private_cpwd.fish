function cpwd --description 'Copy the current directory path to the clipboard'
    switch (uname)
        case Linux
            pwd | tr -d "\n" | xclip -selection clipboard $argv
        case Darwin
            pwd | tr -d "\n" | pbcopy $argv
    end
end
