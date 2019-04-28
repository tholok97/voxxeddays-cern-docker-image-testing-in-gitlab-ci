# Source of my presentation "Docker image testing in GitLab CI" for [VoxxedDays CERN](https://voxxeddays.com/cern/) 1st May 2019

[Link to presentation at 28 April 2019.](https://gitlab.cern.ch/tloekkeb/voxxeddays-cern-docker-image-testing-in-gitlab-ci/-/jobs/4042263/artifacts/file/tloekkeb_voxxeddays_cern_2019_05_01_docker_image_testing_in_gitlab_ci.pdf)

The presentation is built on each push by GitLab CI and published as an artifact. The artifact is accessible by browsing the pipeline for a particular pushed commit.

## Prerequisites

* Docker. I'm running version `18.09.5, build e8ff056`
* Make. I'm running version `4.1` `Built for x86_64-pc-linux-gnu`

## How to build

`make build` should produce a pdf at `build/main.pdf`. Note that the Docker image used is very big, so pulling might take a while.

## How to validate

This repo uses https://github.com/sider/goodcheck to lint repo using regex rules defined in goodcheck.yml. You'll have to build the Docker image yourself:

```
# ...move to directory to clone into
git clone https://github.com/sider/goodcheck.git
cd goodcheck
docker build -t goodcheck .
```

Once this is done run `make lint`.

## References

* Based on this template: <https://github.com/icot/cern-beamer/tree/e50916c89196f22452037fd9526d6b7a7a2ab440>
* Using this image to compile the LaTeX: <https://github.com/blang/latex-docker/tree/42d2c532a09a00938331512fd2b539f9944c400c>
