# Overview

This is a base image with a little added on to library/node:alpine * :4-alpine

# Env vars

A few environment vars have been added as build `ARG`s with reasonable defaults so that you can customize the build.

See any of the `-onbuild` `Dockerfile`s `ARG` lines.

# Additions

* jq
* curl
* git
* zip
* GNU c/c++ toolchain (incl. make)
* rsync
* imagemagick
* py-pip
* awscli (via pip)
* yarn (the biggest reason for this image)
