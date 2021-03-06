function docker_stop_all --description 'docker stop: containers'
    docker stop (docker ps -a -q)
end
