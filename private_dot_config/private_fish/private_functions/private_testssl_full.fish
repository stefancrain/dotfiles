function testssl_full --description 'fully test ssl for a domain'
    docker run --rm -ti drwetter/testssl.sh --cipher-per-proto --grease --header --quiet --sneaky --full --hints $argv
end
