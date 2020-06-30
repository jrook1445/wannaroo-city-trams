#!/bin/bash
./clean.sh
mkdir wannaroo-city-trams
grfcodec -e wannaroo-city-trams.nfo
if [ $? -eq 0 ]
then
    echo "sucessful build"
    cp wannaroo-city-trams.grf wannaroo-city-trams
    cp README.md wannaroo-city-trams/readme.txt
    cp license.txt wannaroo-city-trams
    cp changelog.txt wannaroo-city-trams
    tar cvf wannaroo-city-trams.tar wannaroo-city-trams
    cp -i wannaroo-city-trams.tar $HOME/.openttd/newgrf
#    cp -i wannaroo-city-trams.grf $HOME/.openttd/newgrf
    echo -e "\e[92m*** build successful ***"
else
    echo -e "\e[91m*** grfcodec could not build newgrf ***"
fi
echo "grfcodec info:"
echo "---------------"
grfcodec -v

