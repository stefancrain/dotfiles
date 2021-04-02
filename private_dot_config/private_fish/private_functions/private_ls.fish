function ls --description 'List directory contents'
    switch (uname)
        case Linux
            command ls --color=auto $argv
        case Darwin
            command ls -G $argv
        case '*'
            command ls $argv
    end
end
