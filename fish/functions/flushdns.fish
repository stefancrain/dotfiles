function flushdns --description "Reset DNS Cache"
    switch (uname)
        case Linux
            command sudo systemd-resolve --flush-caches
        case Darwin
            command sudo killall -HUP mDNSResponder
    end
end
