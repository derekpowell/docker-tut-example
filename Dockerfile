####### Dockerfile #######
FROM rocker/tidyverse:3.4.3

ENV DEBIAN_FRONTEND noninteractive

RUN mkdir -p /home/rstudio/.rstudio/monitored/user-settings \
&& echo 'uiPrefs={"theme" : "Solarized Dark"}' >> \
	/home/rstudio/.rstudio/monitored/user-settings/user-settings \
&& chown -R rstudio /home/rstudio \
&& apt-get update -qq && apt-get -y --no-install-recommends install \
	libglu1-mesa-dev \
&& install2.r --error \
    --deps TRUE \
    lme4 \
    car