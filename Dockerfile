FROM gitpod/workspace-full-vnc:latest

USER root

RUN echo "deb https://download.mono-project.com/repo/debian vs-stretch main" | tee /etc/apt/sources.list.d/mono-official-vs.list \
    && apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF \
    && apt-get update && apt-get upgrade -y \
    && apt-get install -y --no-install-recommends mono-devel    
