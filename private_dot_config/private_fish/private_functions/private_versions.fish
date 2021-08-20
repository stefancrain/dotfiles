function versions --description 'program versions'
    echo "core ---- "
    echo "python "(python3 --version | awk '{print $NF}')
    echo "NodeJS "(node --version)
    echo "GO     "(go version)
    echo "brewed ---- "
    brew list --versions
end
