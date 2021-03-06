function ll --description 'List directory contents in long format'
    switch (uname)
        case Linux
            command ls -l --color=auto $argv
        case Darwin
            command ls -l -G $argv
        case '*'
            command ls -l $argv
    end
end
