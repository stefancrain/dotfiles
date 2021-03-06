function ssl_fast --description 'quickly test ssl for a domain'
    docker run --rm -ti drwetter/testssl.sh --quiet --sneaky --server-defaults $argv
end
