#!/bin/bash
#<thomas tsai thomas@biotrump.com>
#setup the update server by
sudo /usr/bin/software-properties-gtk
#http://ubuntu.aspcode.net/view/63540014012470517569326/how-do-you-select-the-fastest-mirror-from-the-command-line
#/etc/apt/sources.list
#!!!best in Taiwan!!!
#deb http://ftp.tku.edu.tw/ubuntu/ precise main restricted
#deb-src http://ftp.tku.edu.tw/ubuntu/ precise main restricted
#best in USA
#deb http://us.archive.ubuntu.com/ubuntu/ precise main restricted
#deb-src http://us.archive.ubuntu.com/ubuntu/ precise main restricted

sudo apt-get -y install aptitude
sudo aptitude -y install synaptic
#revision tool
sudo aptitude -y install vim vim-gnome git-core gitk vim-gtk svn git-svn ksh kate okteta jedit meld
sudo aptitude -y install emacs lyx

#git config --global user.name "thomas tsai"
#git config --global user.email thomas@biotrump.com

#xubuntu
#xubuntu-restricted-extras
sudo aptitude -y install xubuntu-desktop  xubuntu-default-settings xubuntu-icon-theme

#nvidia driver, acer s3 735M
#http://www.bleepingcomputer.com/forums/t/549534/nvidia-drivers-how-to-install-it-in-ubuntu-14041204/
#sudo add-apt-repository -y ppa:xorg-edgers/ppa
#https://launchpad.net/~graphics-drivers/+archive/ubuntu/ppa?field.series_filter=trusty
#Proprietary GPU Drivers
sudo add-apt-repository -y ppa:graphics-drivers/ppa
sudo apt-get update

#sudo apt-get install nvidia-346 nvidia-settings
#purge ppa
#sudo apt-get install ppa-purge && sudo ppa-purge ppa:xorg-edgers/ppa

#nvidia openCL
# pyrit
sudo aptitude -y install libcuda1-352-updates nvidia-352-updates \
nvidia-opencl-icd-352-updates nvidia-settings xserver-xorg-video-nouveau-lts-wilyd

#doxygen
sudo aptitude -y install doxygen doxygen-doc doxygen-gui doxygen-latex

sudo aptitude -y automake1.11 autoconf

sudo aptitude -y install ssh smb-nat nbtscan libpam-winbind winbind

#python2
sudo aptitude -y install python  python-dev python-all python-numpy python-scientific python-tables \
	python-scipy python-matplotlib python-scitools python-mpmath python-doc \
	python-imaging-tk python-examples python-sphinx python-setuptools \
	python-gdal python-gtkglext1 python-gtkglext1 \ 

#python3
sudo aptitude -y install python3 python3-dev python3-all python3-numpy python3-scipy  python3-doc \
	python3-examples python3-sphinx python3-setuptools python3-matplotlib

#samba
sudo aptitude -y install  samba system-config-samba 

#draw, camera
sudo aptitude -y install gimp vlc guvcview krdc freerdp-x11 xrdp grdesktop kscope kcachegrind \
	gdebi gtk-recordmydesktop
sudo aptitude -y install kfind p7zip-full p7zip-rar rar unrar lzop libbz2-dev

#latex
sudo aptitude -y install kile gummi okular

#QT 5
sudo aptitude -y install qt5-default qt5-doc qt5-doc-html qt5-image-formats-plugins

#=================================================
#locale and ime, refer to /var/log/dpkg.log
#!!!please select the main server from update manager or synpatic!!!
#sudo aptitude -y install fonts-arphic-uming language-pack-gnome-zh-hans-base language-pack-zh-hans-base \
#			language-pack-zh-hans language-pack-gnome-zh-hans language-pack-gnome-zh-hant-base \
#			language-pack-zh-hant-base language-pack-zh-hant language-pack-gnome-zh-hant \
#			libchewing3-data libchewing3 ibus-chewing ttf-wqy-zenhei ttf-arphic-ukai fonts-arphic-ukai
#font locale
#sudo aptitude -y install libreoffice-l10n-en-za language-pack-kde-en thunderbird-locale-en-gb \
#	libreoffice-help-en-gb hunspell-en-ca mythes-en-au kde-l10n-engb gimp-help-en \
#	libreoffice-l10n-en-gb
#

sudo aptitude -y install libv4l-dev libtool 
libsdl2-dev libsdl2-ttf-dev libsdl2-gfx-dev libsdl2-mixer-dev vlc-plugin-sdl
sudo aptitude -y install libjpeg-dev libpng-dev libtiff-dev libjasper-dev
sudo aptitude -y install libavcodec libgst-dev libgstreamer1.0-dev libavformat-dev \
	libswscale-dev libgstreamer-plugins-base1.0-dev libgstreamermm-0.10-dev

sudo aptitude -y install libgtk-3-dev

sudo aptitude -y install freeglut3-dev libx11-dev libxmu-dev \
  libxi-dev libglu1-mesa libglu1-mesa-dev binutils-dev

sudo aptitude -y install libwebkit-dev libwebkitgtk-dev  libwebkitgtk-3.0-dev

#openCV
#libgstreamer-0.10-dev libgstreamermm-0.10-2 \

#sudo aptitude -y install ant  libgtk2.0-dev libgtk-3-0  \
#  libgtkgl2.0-dev libgtkglext1 libgtkglext1-dev \
#  libumlib-dev matlab-support-dev libghc-gtkglext-dev \
#  libghc-gtkglext-doc libghc-gtkglext-prof libgtkglextmm-x11-1.2-dev  \
#  libgdal1-dev  gdal-bin autoconf-doc ccache

sudo aptitude -y install kwalletmanager maxima wxmaxima xmaxima maxima-doc maxima-emacs

sudo aptitude -y install cutecom minicom cpufrequtils indicator-cpufreq sysfsutils libsysfs2

#guvcview
#libportaudio-dev ffmpeg
sudo aptitude -y install libjack0 libjack-dev portaudio19-dev
sudo aptitude -y install intltool libudev-dev libusb-1.0-0-dev \
libusb-dev gsl-bin libgsl0-dev python3-pyudev python-pyudev

#Pillow
#sudo aptitude -y install libtiff4-dev libtiff5-dev libjpeg-dev libjpeg8-dev zlib1g-dev \
libfreetype6-dev liblcms2-dev libwebp-dev tcl8.6-dev tk8.6-dev python-tk

sudo easy_install3 pip
wget https://github.com/python-imaging/Pillow/archive/master.zip
mkdir pil
mv master.zip pil
cd pil
unzip master.zip
cd pil/Pillow-master
python3 setup.py build
sudo python3 setup.py install
#sudo pip install pillow
sudo pip uninstall Pillow
#or pip uninstall PIL
sudo pip install Pillow

#octave build
sudo aptitude -y install f2c gfortran libblas-dev liblapack-dev
sudo aptitude -y install libpcre3-dev libreadline-dev

#guvcview
sudo aptitude -y install intltool libjack0 libudev-dev python-pyudev python3-pyudev \
	libusb-1.0-0-dev libusb-dev libsdl2-dev ffmpeg gsl-bin libgsl0-dev octave-gsl \
	portaudio19-dev libsdl-ttf2.0-dev libsdl2-ttf libsdl2-ttf-dev

#android studio virtual machine
sudo aptitude -y kvm

#android
sudo aptitude -y install ninja gnupg flex bison gperf build-essential \
  zip curl libc6-dev  x11proto-core-dev g++-multilib mingw32 tofrodos \
	python-markdown libxml2-utils xsltproc libgl1-mesa-dev \
  libx11-dev:i386 libncurses5-dev:i386 libreadline6-dev:i386  \
  zlib1g-dev:i386

#ATLAS, OpenBLAS
#http://osdf.github.io/blog/numpyscipy-with-openblas-for-ubuntu-1204.html
sudo aptitude -y install gfortran swig rcconf dialog
#libgl1-mesa-glx:i386

#acrobat
wget -c http://ardownload.adobe.com/pub/adobe/reader/unix/9.x/9.5.5/enu/AdbeRdr9.5.5-1_i386linux_enu.deb
sudo dpkg -i AdbeRdr9.5.5-1_i386linux_enu.deb
sudo apt-get install -f
#ebook reader
sudo add-apt-repository -y "deb http://archive.canonical.com/ubuntu $(lsb_release -sc) partner"
sudo aptitude -y update
sudo aptitude -y install fbreader

#QT 5
sudo apt-get build-dep libqt4-dev qt5-default qt5-doc qt5-doc-html qtchooser \
	qt5-image-formats-plugins appmenu-qt5 qtmultimedia5-examples
#
sudo apt-get install gperf bison

#Boost C++
#sudo add-apt-repository -y ppa:boost-latest/ppa
#sudo aptitude -y update
sudo aptitude -y install libboost_serialization1.55-dev libboost_filesystem1.55-dev \
libboost_thread.1.55-dev libboost-program-options1.55-dev

#build NDK toolchain from source build
sudo aptitude -y install libppl-dev ppl-dev
#=======================
#ppa
#=======================
#sudo add-apt-repository -y ppa:yannubuntu/boot-repair
#sudo apt-get update
#sudo aptitude -y update
#sudo aptitude -y install boot-repair

#wine
#deb http://ppa.launchpad.net/ubuntu-wine/ppa/ubuntu YOUR_UBUNTU_VERSION_HERE main
#deb-src http://ppa.launchpad.net/ubuntu-wine/ppa/ubuntu YOUR_UBUNTU_VERSION_HERE main
sudo add-apt-repository -y ppa:ubuntu-wine/ppa
sudo aptitude -y update
sudo aptitude -y install wine

#
#sudo aptitude -y install gummy
#sudo add-apt-repository -y ppa:gummi/gummi
#sudo aptitude -y update
#sudo aptitude -y install gummi

#pgfplots
#sudo add-apt-repository -y ppa:texlive-backports/ppa
#sudo aptitude -y update
#sudo aptitude -y install texlive texlive-fonts-extras

#cmake
#deb http://ppa.launchpad.net/kalakris/cmake/ubuntu precise main
#deb-src http://ppa.launchpad.net/kalakris/cmake/ubuntu precise main
#sudo add-apt-repository -y ppa:kalakris/cmake
#sudo aptitude -y update
#sudo aptitude -y install cmake cmake-gui

#chewing daily build ppa
#sudo add-apt-repository -y ppa:chewing/chewing
#sudo aptitude -y update
#chewing-editor
#sudo aptitude -y install libchewing scim-chewing

#deb http://ppa.launchpad.net/chewing/chewing/ubuntu precise main
#deb-src http://ppa.launchpad.net/chewing/chewing/ubuntu precise main

#python3-matplotlib
#deb http://ppa.launchpad.net/takluyver/python3/ubuntu precise main
#deb-src http://ppa.launchpad.net/takluyver/python3/ubuntu precise main
#sudo add-apt-repository -y ppa:takluyver/python3
#sudo aptitude -y update
#sudo aptitude -y install python3-matplotlib

#libamd2.3.1
#https://packages.debian.org/sid/amd64/libamd2.3.1/download
#octave
#Most recent octave : https://launchpad.net/ubuntu/+source/octave
sudo add-apt-repository -y ppa:octave/stable
sudo aptitude -y update
sudo aptitude -y install octave liboctave-dev octave-info  octave-control octave-doc \
octave-general octave-signal octave-plot octave-info octave-image octave-benchmark
#octave-openmpi-ext octave-io octave-miscellaneous octave-linear-algebra  o
#octave-gsl

#eigen
#deb http://ppa.launchpad.net/kalakris/eigen/ubuntu precise main
#deb-src http://ppa.launchpad.net/kalakris/eigen/ubuntu precise main
#sudo add-apt-repository -y ppa:kalakris/eigen
#sudo aptitude -y update
#sudo aptitude -y install libeigen3-dev libeigen3-dev:i386 libeigen3-doc

#armadillo
#sudo add-apt-repository -y ppa:comp-phys/stable
#sudo aptitude -y update
#sudo aptitude -y install armadillo

#sudo apt-get install libxcb1 libxcb1-dev libx11-xcb1 libx11-xcb-dev libxcb-keysyms1 \
#libxcb-keysyms1-dev libxcb-image0 libxcb-image0-dev libxcb-shm0 libxcb-shm0-dev \
#libxcb-icccm4 libxcb-icccm4-dev libxcb-sync0 libxcb-sync0-dev libxcb-xfixes0-dev \
#libxrender-dev libxcb-shape0-dev
#sudo add-apt-repository -y ppa:ubuntu-sdk-team/ppa
#sudo aptitude -y update
#sudo aptitude -y install qtdeclarative5-dev

#ppa:nilarimogard/webupd8
#alternative to this is to use the webupd8 ppa and the update-java package.
#sudo add-apt-repository -y ppa:nilarimogard/webupd8
#sudo aptitude -y update
sudo aptitude -y install openjdk-7-jdk update-java

#grub customizer
#sudo add-apt-repository ppa:danielrichter2007/grub-customizer
#sudo aptitude -y update
#sudo aptitude -y install grub-customizer

#guvcview
#sudo add-apt-repository -y ppa:zoogie/sdl2-snapshots
#sudo aptitude -y update
#sudo aptitude -y install libsdl2 libsdl2-dev

#autoconf >=2.69 for ubuntu 12.04
#https://launchpad.net/~dns/+archive/ubuntu/gnu/+build/3647209
#sudo add-apt-repository -y ppa:costamagnagianfranco/autoconf
#sudo aptitude -y update
#sudo aptitude -y install autoconf

#automake 1.14
#http://packages.ubuntu.com/en/trusty/all/automake/download
#
#android chromium_org webkit build necessary
#https://code.google.com/p/chromium/wiki/AndroidBuildInstructions
#sudo update-alternatives --config javac
#sudo update-alternatives --config java
#sudo update-alternatives --config javaws
#sudo update-alternatives --config javap
#sudo update-alternatives --config jar
#sudo update-alternatives --config jarsigner
#If you prefer to use Oracle Java JDK, you can follow the section Oracle JDK.
#Install build dependencies
#Update the system packages required to build by running:
#~/chromium$ src/build/install-build-deps-android.sh

#ubuntu 14.04 precise new gcc 4.7,4.8,4.9
#https://launchpad.net/~ubuntu-toolchain-r/+archive/ubuntu/test?field.series_filter=precise
#http://mortenvp.com/installing-a-newer-gccg-on-ubuntu-12-04-lts/
sudo add-apt-repository ppa:ubuntu-toolchain-r/test
#sudo add-apt-repository -y ppa:ubuntu-toolchain-r/ppa 
sudo aptitude -y update
sudo aptitude -y install gcc-4.9 g++-4.9 gfortran-4.9
sudo update-alternatives --display gcc
#change the default gcc
sudo update-alternatives --config gcc
sudo update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-4.9 80 --slave /usr/bin/g++ g++ /usr/bin/g++-4.9
sudo update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-4.8 70 --slave /usr/bin/g++ g++ /usr/bin/g++-4.8
#sudo update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-4.7 60 --slave /usr/bin/g++ g++ /usr/bin/g++-4.7
sudo update-alternatives --install /usr/bin/gfortran gfortran /usr/bin/gfortran-4.9 80
sudo update-alternatives --install /usr/bin/gfortran gfortran /usr/bin/gfortran-4.8 70
#sudo update-alternatives --install /usr/bin/gfortran gfortran /usr/bin/gfortran-4.7 70

