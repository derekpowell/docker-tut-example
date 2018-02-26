####### Dockerfile #######
FROM rocker/tidyverse:3.4.3

ENV DEBIAN_FRONTEND noninteractive

COPY git_config.sh /etc/cont-init.d/gitconfig
COPY set_theme.sh /etc/cont-init.d/theme

RUN apt-get update -qq && apt-get -y --no-install-recommends install \
	libglu1-mesa-dev \
&& install2.r --error \
    --deps TRUE \
    lme4 \
    car