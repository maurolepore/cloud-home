FROM rocker/verse
ARG USER_HOME
COPY $USER_HOME/.ssh /home/rstudio/.ssh
