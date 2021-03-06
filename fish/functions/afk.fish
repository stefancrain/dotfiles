function afk --description 'Lock the box'
    switch (uname)
        case Linux
            command sudo systemctl suspend
        case Darwin
            command /System/Library/CoreServices/Menu\ Extras/User.menu/Contents/Resources/CGSession -suspend
    end
end
