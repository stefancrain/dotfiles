function catz --description 'cat without comments'
    cat $argv | grep -v "^#"
end
