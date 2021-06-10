#!/usr/bin/env bash

echo "$DOCKER_PASSWORD" | docker login -u "$DOCKER_USERNAME" --password-stdin

docker pull registry.cherryland.cn/hexo_demo_blog

docker-compose -f /home/deploy/$PROJECT_NAME/docker-compose.yml up -d