# XNAT

** Docker image for XNAT **

[XNAT](http://xnat.org) is an open-source imaging informatics software platform dedicated to helping you perform imaging-based research. XNAT’s core functions manage importing, archiving, processing and securely distributing imaging and related study data. But its extended uses continue to evolve.

[![DockerHub](https://img.shields.io/badge/docker-lren%2Fxnat-008bb8.svg)](https://hub.docker.com/r/lren/xnat/)
[![Circle CI](https://circleci.com/gh/LREN-CHUV/xnat-docker/tree/master.svg?style=svg)](https://circleci.com/gh/LREN-CHUV/xnat-docker/tree/master)
[![](https://badge.imagelayers.io/lren/xnat:1.6.5.svg)](https://imagelayers.io/?images=lren/xnat:1.6.5 'XNAT')

## Supported Docker versions

This image is officially supported on Docker version 1.10.3.

## How to use this image

With [docker-compose](https://docs.docker.com/compose/install/), docker-compose version 1.6 or better required:

Use this [docker-compose.yml](https://github.com/LREN-CHUV/xnat-docker/blob/master/docker-compose.yml) file to start XNAT and its Postgres database

The [xnat-docker](https://github.com/LREN-CHUV/xnat-docker) project contains scripts to start (run.sh) and stop (stop.sh) XNAT using Docker and docker-compose.

## License

### License for the XNAT software contained in this image

Copyright (c) 2015, Washington University School of Medicine.
All rights reserved.

Redistribution and use in source and binary forms, with or without modification, are permitted provided that the following conditions are met:

1. Redistributions of source code must retain the above copyright notice, this list of conditions and the following disclaimer.

2. Redistributions in binary form must reproduce the above copyright notice, this list of conditions and the following disclaimer in the documentation and/or other materials provided with the distribution.

THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

### License for the Docker configuration and scripts building this image

Copyright 2016 LREN.

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
