function d_rm_exited --description 'docker: remove all exited containers'
    docker rm (docker ps -aq --no-trunc -f status=exited)
end
