# fedcloud-userinterface

Installation recipes and image builders for a FedCloud User Interface

Check [EGI HOWTO 11](https://wiki.egi.eu/wiki/HOWTO11#Installation) for more
information.

## Linux installation

The `fedcloud-ui.sh` script is able to install OCCI-CLI and VOMS with a single
command. This script is designed to work under Ubuntu (tested under 12.04 and
14.04) and RH6 derivatives (CentOS/SL).

A short-url provides direct access to the latest version of the script:

        curl -L http://go.egi.eu/fedcloud.ui | sudo /bin/bash -

or (directly as root):

        curl -L http://go.egi.eu/fedcloud.ui | /bin/bash -

The script can also be used as user_data of a VM to turn a basic OS
into a FedCloud client.

## Mac OS X installation

Installation script also works under Mac OS X, although it has some
prerequisites:
* [Homebrew](http://brew.sh) installed (used for installing fetch-crl and voms-clients)
* Working Ruby>=1.9.3 installation, if not available, check
  [RVM](https://rvm.io/) for installation

Once you have those installed, open a terminal and type:
        curl -L http://go.egi.eu/fedcloud.ui | /bin/bash -

It will ask for your password to gain root privileges to create VOMS
configuration files.

## Docker image

Included Dockerfile will build an image with rOCCI-cli and VOMS installed and
configured with fedcloud.egi.eu and training.egi.eu VOs.

The `occi` script provides a wrapper around the container and tools which
simplifies its usage.

## VM

The `packer` directory contains packer configuration files to build a VM image
with the rOCCI client. This image is
[published in AppDB](https://appdb.egi.eu/store/vappliance/egi.fedcloud.clients)
