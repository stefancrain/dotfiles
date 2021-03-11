function d_prune --description 'docker remove: stopped containers, unused networks, dangling images, build cache'
    docker system prune -f
end
