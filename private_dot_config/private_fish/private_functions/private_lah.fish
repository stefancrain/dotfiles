function lah --description 'List directory contents in long format, all files, human readable'
    switch (uname)
        case Linux
            set LS_COLORS ''
            set -a LS_COLORS 'no=1;39:' # global default
            set -a LS_COLORS 'di=1;36:' # directory
            set -a LS_COLORS 'ex=1;32:' # executable file
            set -a LS_COLORS 'fi=1;39:' # file
            set -a LS_COLORS 'ec=:' # non-filename text
            set -a LS_COLORS 'mi=1;31:' # non-existent file pointed to by a symlink
            set -a LS_COLORS 'ln=target:' # symbolic link
            set -a LS_COLORS 'or=31;01' # symbolic link pointing to a non-existent file
            set -x LS_COLORS
            command ls -l -a -h --color $argv
        case Darwin
            set -x LSCOLORS (vivid generate molokai)
            command gls -l -a -h --color $argv
        case '*'
            command ls -l -a -h $argv
    end
end
