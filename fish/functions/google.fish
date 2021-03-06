function google --description 'Google Search'
    switch (uname)
        case Linux
            command sudo systemctl suspend
        case Darwin
            open -na "Google Chrome" --args "https://www.google.com/search?q="$argv
    end
end
