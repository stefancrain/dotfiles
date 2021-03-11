function d_rm --description 'docker: remove all containers'
    docker rm (docker ps -a -q)
end
