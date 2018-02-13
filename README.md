# cimpl-docker
A Docker file and notes for creating a R-based cimpl image

A simple wrapper around the NKI's R implementation of the Common Insertion
site Mapping Platform (CIMP) to get it to play nicely in the Docker
world.

To build the Docker image: `<docker build -t biostair/cimplr_docker .>`

To then start the image up as an interactive R session: `<docker run -it biostair/cimplr_docker R>`


Docker Version 17.12.0-ce-mac49 (21995) was running on a Mac desktop.

