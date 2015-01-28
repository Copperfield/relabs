version=2.4.10
# Based on https://www.raben.com/book/export/html/3
echo installing developer enviroment
sudo apt-get -y install build-essential cmake pkg-config
echo Installing Image I/O libraries
sudo apt-get -y install libjpeg62-dev libtiff4 libjasper
echo Installing the GTK dev library
sudo apt-get -y install  libgtk2.0-dev
echo Installing Video I/O libraries
sudo apt-get -y install libavcodec-dev libavformat-dev libswscale-dev libv4l-dev
echo installing support for Firewire video cameras
sudo apt-get -y install libdc1394-22-dev
echo installing video streaming libraries
sudo apt-get -y install libxine-dev libgstreamer0.10-dev libgstreamer-plugins-base0.10-dev 
echo installing the Python development environment and the Python Numerical library
sudo apt-get -y install python-dev python-numpy
echo installimg the parallel code processing library. The Intel tbb library
sudo apt-get -y install libtbb-dev
echo installing the Qt dev library
sudo apt-get -y install libqt4-dev
echo Installing unzip
sudo apt-get -y install unzip
echo make directory
mkdir opencv
cd opencv
echo downloading opencv library
wget http://sourceforge.net/projects/opencvlibrary/files/opencv-unix/$version/opencv-$version.zip
echo Descompressing
unzip opencv-$version.zip
echo build project
cd opencv-$version
mkdir build
cd build
cmake -D CMAKE_BUILD_TYPE=RELEASE -D CMAKE_INSTALL_PREFIX=/usr/local -D WITH_TBB=ON -D BUILD_NEW_PYTHON_SUPPORT=ON -D WITH_V4L=ON -D INSTALL_C_EXAMPLES=ON -D INSTALL_PYTHON_EXAMPLES=ON -D BUILD_EXAMPLES=ON -D WITH_QT=ON -D WITH_OPENGL=ON ..
echo compile opencv
make
echo installing opencv 
sudo make install
exit 0
