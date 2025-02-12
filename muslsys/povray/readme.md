https://github.com/POV-Ray/povray/

https://github.com/POV-Ray/povray/archive/refs/tags/v3.7.0.10.tar.gz

# deps

[x] libz
[x] libpng
[_] libjpeg
[_] libtiff
[_] libboost
[_] libboost-date-time
[_] libopenexr
[_] libsdl ??

# Generating configure and building the code

    % cd unix/
    % ./prebuild.sh
    % cd ../
    % ./configure COMPILED_BY="your name <email@address>"
    % make

# Installing

    % make install
