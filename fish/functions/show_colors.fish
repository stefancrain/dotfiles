function show_colors --description 'look at how pretty this terminal is'
    set_color -c | xargs -I'{}' fish -c "set_color {}; echo '{}'; set_color normal"
end
