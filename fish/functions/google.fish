function google --description 'Google Search'
    switch (uname)
        case Linux
            sensible-browser "https://www.google.com/search?q="$argv
        case Darwin
            open -na "Google Chrome" --args "https://www.google.com/search?q="$argv
    end
end
