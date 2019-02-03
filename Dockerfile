FROM gitpod/workspace-full-vnc:latest

USER root

RUN echo “deb https://download.mono-project.com/repo/ubuntu stable-bionic main” | tee /etc/apt/sources.list.d/mono-official-stable.list && \
    apt-key adv –keyserver keyserver.ubuntu.com –recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF;
