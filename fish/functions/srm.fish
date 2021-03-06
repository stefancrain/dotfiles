function srm --description 'secure delete'
    switch (uname)
        case Linux
            srm -v $argv
        case Darwin
            rm -v -P $argv
    end
end
