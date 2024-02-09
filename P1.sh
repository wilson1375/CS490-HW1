#!/bin/bash

sudo apt-get update -y
sudo apt-get install htop -y htop
sudo apt-get install htop -y screen

mini_path="$HOME/miniconda3"

mkdir -p $mini_path

wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh -O $mini_path/miniconda.sh

chmod +x $mini_path/miniconda.sh

bash $mini_path/miniconda.sh -b -u -p $mini_path

rm -rf $mini_path/miniconda.sh

$mini_path/bin/conda init bash

export PATH="$mini_path/bin:$PATH"

if type conda > /dev/null; then
    echo "Conda installed."
else
    echo "Conda missing, maybe check if url is still valid?"
fi
