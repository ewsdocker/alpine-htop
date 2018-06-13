# ========================================================================================
# ========================================================================================
#
#    Dockerfile
#      Dockerfile for alpine-htop container - htop display for docker host.
#
#    Example "run htop inside a container" from the docker run reference at
#        https://docs.docker.com/engine/reference/run/#example-run-htop-inside-a-container
#
# ========================================================================================
#
# @author Jay Wheeler.
# @version 0.0.1
# @copyright © 2018. EarthWalk Software.
# @license Licensed under the Academic Free License version 3.0
# @package alpine-htop
# @subpackage Dockerfile
#
# ========================================================================================
#
#	Copyright © 2018. EarthWalk Software
#	Licensed under the Academic Free License, version 3.0.
#
#	Refer to the file named License.txt provided with the source,
#	or from
#
#		http://opensource.org/licenses/academic.php
#
# ========================================================================================
# ========================================================================================
#
#     docker run -it --rm --pid=host userns=host ewsdocker/alpine-htop:latest
#
# ========================================================================================
FROM  nimmis/alpine-micro:edge

RUN apk add --update htop \
 && rm -rf /var/cache/apk/*
 
CMD ["htop"]
