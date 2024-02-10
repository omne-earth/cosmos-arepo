sudo apt-get update

# core dependencies
sudo apt-get -y install libopenmpi-dev
sudo apt-get -y install libgsl-dev

# optional dependencies, generally needed
sudo apt-get -y install fftw-dev
sudo apt-get -y install fftw3-dev
sudo apt-get -y install libhd5-dev
sudo apt-get -y install libhd5-serial-dev
sudo apt-get -y install hwloc
sudo apt-get -y install libgmp-dev

CPATHS  = -I./src -I$(HOME)/local/include -I/opt/local/include -I/usr/local/include -I/usr/include/hdf5/serial/ -DH5_USE_16_API
LPATHS  = -L$(HOME)/local/lib -L/opt/local/lib -L/usr/local/lib -L/usr/lib/x86_64-linux-gnu/hdf5/serial/ -lhdf5 -lz

sudo apt-get -y autoremove

sudo apt-get -y install python3 python-is-python3 python3-pip
sudo apt-get -y install python3-sphinx
pip install numpy
echo "export PATH=$PATH:/home/$(whoami)/.local/bin" >> ~/.bashrc && source ~/.bashrc
pip install scipy
pip install h5py
pip install matplotlib

# TESTS+="cosmo_box_star_formation_3d ", n = 16 hw threads
# Mon Jan 22 04:36:38 PM PST 2024
# Mon Jan 22 05:07:17 PM PST 2024