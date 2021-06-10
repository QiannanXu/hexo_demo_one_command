#!/usr/bin/env bash

echo "$DOCKER_PASSWORD" | docker login -u "$DOCKER_USERNAME" --password-stdin

docker build -t hexo_demo_blog .
docker tag hexo_demo_blog registry.cherryland.cn/hexo_demo_blog
docker images
docker push registry.cherryland.cn/hexo_demo_blog