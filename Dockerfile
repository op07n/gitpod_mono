# get opensuse image and run interactive session:

docker pull opensuse:tumbleweed
docker run -it -u root opensuse:tumbleweed /bin/bash

# install all the stuff in the container

zypper addrepo https://download.opensuse.org/repositories/windows:mingw:win32/openSUSE_Tumbleweed/windows:mingw:win32.repo
zypper addrepo https://download.opensuse.org/repositories/windows:mingw:win64/openSUSE_Tumbleweed/windows:mingw:win64.repo
zypper refresh

zypper install mingw32-cross-gcc-c++
zypper install mingw64-cross-gcc-c++
zypper install meson
zypper install glslang-devel
zypper install wine

exit
