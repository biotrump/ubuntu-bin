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

sudo apt-get install aptitude -y
sudo aptitude -y install synaptic
#locale and ime, refer to /var/log/dpkg.log
#!!!please select the main server from update manager or synpatic!!!
sudo aptitude -y install fonts-arphic-uming language-pack-gnome-zh-hans-base language-pack-zh-hans-base \
			language-pack-zh-hans language-pack-gnome-zh-hans language-pack-gnome-zh-hant-base \
			language-pack-zh-hant-base language-pack-zh-hant language-pack-gnome-zh-hant \
			libchewing3-data libchewing3 ibus-chewing ttf-wqy-zenhei ttf-arphic-ukai fonts-arphic-ukai
#font locale
sudo aptitude -y install libreoffice-l10n-en-za language-pack-kde-en thunderbird-locale-en-gb \
	libreoffice-help-en-gb hunspell-en-ca mythes-en-au kde-l10n-engb gimp-help-en \
	libreoffice-l10n-en-gb
#nvidia openCL
# pyrit
sudo aptitude -y install nvidia-opencl-dev nvidia-cuda-doc
sudo aptitude -y install freeglut3-dev build-essential libx11-dev libxmu-dev \
  libxi-dev libglu1-mesa libglu1-mesa-dev
#libgl1-mesa-glx
#
sudo aptitude -y install vim kate git-core gitk samba system-config-samba gimp \
	vlc guvcview krdc freerdp-x11 xrdp grdesktop meld kscope kcachegrind \
	gdebi gtk-recordmydesktop kfind p7zip-full p7zip-rar rar unrar
sudo aptitude -y install vim-gnome vim-gtk jedit emacs lyx
#openCV
sudo aptitude -y install ant libavformat-dev libswscale-dev libgtk2.0-dev libgtk-3-0 libgtk-3-dev \
  libjpeg-dev libpng-dev libtiff-dev libjasper-dev libgtkgl2.0-dev libgtkglext1 libgtkglext1-dev \
  libgst-dev libgstreamer0.10-dev libgstreamermm-0.10-2 libgstreamer-plugins-base0.10-dev \
  libv4l-dev libbz2-dev doxygen libumlib-dev matlab-support-dev libghc-gtkglext-dev libghc6-gtkglext-dev\
  libghc-gtkglext-doc libghc-gtkglext-prof libgtkglextmm-x11-1.2-dev python-gtkglext1 \
  libgdal1-dev python-gdal gdal-bin autoconf autoconf2.13 ccache

sudo aptitude -y install kwalletmanager maxima wxmaxima xmaxima

#python2
sudo aptitude -y install python python-all python-numpy python-scientific python-tables \
	python-scipy python-matplotlib python-scitools python-mpmath python-doc \
	python-imaging-tk python-examples python-sphinx python-setuptools
#python3
sudo aptitude -y install python3 python3-all python3-numpy python3-scipy  python3-doc \
	python3-examples python3-sphinx python3-setuptools
#Pillow
sudo aptitude -y install libtiff4-dev libjpeg-dev libjpeg8-dev zlib1g-dev \
libfreetype6-dev liblcms2-dev libwebp-dev tcl8.5-dev tk8.5-dev python-tk
sudo easy_install3 pip
sudo aptitude -y install python3-dev
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

############################################
#acrobat, ebook reader
sudo add-apt-repository "deb http://archive.canonical.com/ubuntu $(lsb_release -sc) partner"
sudo aptitude -y update
sudo aptitude -y install acroread fbreader
#latex
sudo aptitude -y install kile okular
#xubuntu
#xubuntu-restricted-extras
sudo aptitude -y install xubuntu-desktop  xubuntu-default-settings xubuntu-icon-theme

sudo aptitude -y install ssh smb-nat nbtscan libpam-winbind winbind
#android
sudo aptitude -y install git gnupg flex bison gperf build-essential \
  zip curl libc6-dev libncurses5-dev:i386 x11proto-core-dev \
  libx11-dev:i386 libreadline6-dev:i386 g++-multilib mingw32 tofrodos \
  python-markdown libxml2-utils xsltproc zlib1g-dev:i386 libgl1-mesa-dev
#libgl1-mesa-glx:i386
#=======================
#ppa
#=======================
sudo add-apt-repository ppa:yannubuntu/boot-repair
#sudo apt-get update
sudo aptitude -y update
sudo aptitude -y install boot-repair

#wine
#deb http://ppa.launchpad.net/ubuntu-wine/ppa/ubuntu YOUR_UBUNTU_VERSION_HERE main
#deb-src http://ppa.launchpad.net/ubuntu-wine/ppa/ubuntu YOUR_UBUNTU_VERSION_HERE main
sudo add-apt-repository ppa:ubuntu-wine/ppa
sudo aptitude -y update
sudo aptitude -y install wine

#
#sudo aptitude -y install gummy
sudo add-apt-repository ppa:gummi/gummi
sudo aptitude -y update
sudo aptitude -y install gummi

#pgfplots
sudo apt-add-repository ppa:texlive-backports/ppa
sudo aptitude -y update
sudo aptitude -y install texlive texlive-fonts-extras

#cmake
#deb http://ppa.launchpad.net/kalakris/cmake/ubuntu precise main
#deb-src http://ppa.launchpad.net/kalakris/cmake/ubuntu precise main
sudo add-apt-repository ppa:kalakris/cmake
sudo aptitude -y update
sudo aptitude -y install cmake cmake-gui

#chewing daily build ppa
sudo add-apt-repository ppa:chewing/chewing
sudo aptitude -y update
sudo aptitude -y install chewing-editor libchewing scim-chewing

#deb http://ppa.launchpad.net/chewing/chewing/ubuntu precise main
#deb-src http://ppa.launchpad.net/chewing/chewing/ubuntu precise main

#python3-matplotlib
#deb http://ppa.launchpad.net/takluyver/python3/ubuntu precise main
#deb-src http://ppa.launchpad.net/takluyver/python3/ubuntu precise main
sudo add-apt-repository ppa:takluyver/python3
sudo aptitude -y update
sudo aptitude -y install python3-matplotlib

#octave
sudo add-apt-repository ppa:octave/stable
sudo aptitude -y update
sudo aptitude -y install octave

#eigen
#deb http://ppa.launchpad.net/kalakris/eigen/ubuntu precise main
#deb-src http://ppa.launchpad.net/kalakris/eigen/ubuntu precise main
sudo add-apt-repository ppa:kalakris/eigen
sudo aptitude -y update
sudo aptitude -y install libeigen3-dev libeigen3-dev:i386 libeigen3-doc

#Boost C++
sudo add-apt-repository ppa:boost-latest/ppa
sudo aptitude -y update
sudo aptitude -y install boost

#armadillo
sudo add-apt-repository ppa:comp-phys/stable
sudo aptitude -y update
sudo aptitude -y install armadillo

#QT 5
sudo apt-add-repository ppa:ubuntu-sdk-team/ppa
sudo aptitude -y update
#sudo aptitude -y install qtdeclarative5-dev


