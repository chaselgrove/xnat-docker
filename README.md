# XNAT on Docker

postgres: example postgres image

repo: local repository for XNAT source

builder: source for builder image

example: source for example XNAT image


docker build -t xnat-postgres postgres
docker run --name xnat-postgres xnat-postgres

docker build -t xnat-repo repo
docker run --name xnat-repo xnat-repo

repo2 builds from a local cache of source tarballs

docker build -t xnat-builder builder

docker build -t xnat example
docker run -P --name xnat --link xnat-postgres:postgres --link xnat-repo:repo xnat
