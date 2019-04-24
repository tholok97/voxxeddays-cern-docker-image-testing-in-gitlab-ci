# Source of my presentation "Docker image testing in GitLab CI" for [VoxxedDays CERN](https://voxxeddays.com/cern/) 1st May 2019

## Prerequisites

* Docker. I'm running version `18.09.5, build e8ff056`
* Make. I'm running version `4.1` `Built for x86_64-pc-linux-gnu`

## How to build

`make build` should produce a pdf at `build/main.pdf`. Note that the Docker image used is very big, so pulling might take a while.

## References

* Based on this template: <https://github.com/icot/cern-beamer/tree/e50916c89196f22452037fd9526d6b7a7a2ab440>
* Using this image to compile the LaTeX: <https://github.com/blang/latex-docker/tree/42d2c532a09a00938331512fd2b539f9944c400c>
