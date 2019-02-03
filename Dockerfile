FROM gitpod/workspace-full-vnc:latest

USER root

RUN echo "deb http://download.mono-project.com/repo/debian xenial main" | tee /etc/apt/sources.list.d/mono.list \
    && apt-key adv --keyserver keyserver.ubuntu.com --recv-keys A6A19B38D3D831EF \
    && apt-get update \
    && apt-get install mono-complete
