FROM gitpod/workspace-full-vnc:latest

USER root
 
RUN echo “deb https://download.mono-project.com/repo/ubuntu stable-bionic main” | tee /etc/apt/sources.list.d/mono-official-stable.list && \
    apt-key adv –keyserver hkp://keyserver.ubuntu.com:80 –recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF && \
    apt update && \
    sudo apt install mono-devel && \
    sudo apt install mono-complete && \
    sudo apt install mono-dbg && \
    sudo apt install referenceassemblies-pcl && \
    sudo apt install ca-certificates-mono;
