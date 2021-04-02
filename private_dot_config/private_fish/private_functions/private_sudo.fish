function sudo --description "when you forget sudo, sudo !!"
    if test "$argv" = !!
        eval command sudo $history[1]
    else
        command sudo $argv
    end
end
