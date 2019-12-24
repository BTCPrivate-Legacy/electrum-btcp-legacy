BTCP Electrum - Lightweight Bitcoin Private Wallet
==========================================
.. image:: https://opencollective.com/electrum-btcp/backers/badge.svg

    :alt: Backers on Open Collective

    :target: #backers

.. image:: https://opencollective.com/electrum-btcp/sponsors/badge.svg

    :alt: Sponsors on Open Collective

    :target: #sponsors



Download the current Release: https://github.com/BTCPrivate/electrum-btcp/releases/


Viewing & Sending from Z addresses is not yet supported on this wallet.


Know about your data directory:

    Linux & Mac: ~/.electrum-btcp/
    Windows: C:\Users\YourUserName\AppData\Roaming\Electrum-btcp\

    ~/.electrum-btcp/wallets/ has your wallet files - BACK UP THIS FOLDER

You can also use the 'Export Private Keys' and 'Show Seed' functions from inside the application to write down and safely store your the keys to your funds.

Please use the issue tracker for bug reports, feature requests, and other mission-critical information. It is actively monitored by the Zclassic development team. For general support, please visit our Discord: https://discord.gg/2PRZ5q

Development Version
===================

First, clone from Github::

    git clone git://github.com/BTCPrivate/electrum-btcp.git
    cd electrum-btcp

For Mac:
--------

Using Homebrew::

    # Setup Homebrew
    ./setup-mac

    # Install Homebrew dependencies
    brew bundle

    # Install Python dependencies
    pip3 install -r requirements.txt

    # Build icons
    pyrcc5 icons.qrc -o gui/qt/icons_rc.py

    # Compile the protobuf description file
    protoc --proto_path=lib/ --python_out=lib/ lib/paymentrequest.proto

    # Build .app, .dmg
    ./create-dmg

    # Run
    ./electrum-btcp


For Linux:
----------

Install Dependencies::

  sudo apt-get install $(grep -vE "^\s*#" packages.txt  | tr "\n" " ")

  pip install -r requirements.txt

  // ^ pip3 for newer version

  (Ubuntu with ledger wallet)
  ln -s /lib/x86_64-linux-gnu/libudev.so.1 /lib/x86_64-linux-gnu/libudev.so

  # For yum installations (no apt-get), or for a clean python env, use Anaconda with Python 3:

  #https://poweruphosting.com/blog/install-anaconda-python-ubuntu-16-04/


Compile the icons file for Qt::

    pyrcc5 icons.qrc -o gui/qt/icons_rc.py

For the Linux app launcher (start menu) icon::

    sudo desktop-file-install electrum.desktop

Compile the protobuf description file::

    protoc --proto_path=lib/ --python_out=lib/ lib/paymentrequest.proto

Create translations (optional)::

    ./contrib/make_locale

Run::

    ./electrum-btcp

For Ubuntu 18.04 including Docker install:
----------------------

Update apt package index and upgrade packages as needed

    sudo apt-get update && apt-get upgrade

Install Docker package from Ubuntu repository

    sudo apt install docker.io

Build the docker image::

    sudo ./build-docker.sh

Run the docker image::

    ./run-docker.sh


For Linux with docker:
----------------------

Build the docker image::

    ./build-docker.sh

Run the docker image::

    ./run-docker.sh


Building Releases
=================


MacOS
------

Simply - ::

    ./setup-mac.sh

    sudo ./create-dmg.sh

Windows
-------

See `contrib/build-wine/README` file.


Android
-------

See `gui/kivy/Readme.txt` file.
UPSTREAM PATCH: https://github.com/spesmilo/electrum/blob/master/gui/kivy/Readme.md

---

To just create binaries, create the 'packages/' directory::

    ./contrib/make_packages

(This directory contains the Python dependencies used by Electrum.)


BTCP Hints and Debug
===================

There are several useful scripts in:

    scripts

This is a good initial check to determine whether things are working:

    cd scripts
    python3 block_headers

--

The Zclassic Wiki is located at: https://github.com/z-classic/zclassic/wiki. Please use this as a reference and feel free to contribute.

    ~/.electrum-btcp/

    ~/.electrum-btcp/wallets/ has your wallet files - ** back up this folder **

    ~/.electrum-btcp/config has your Electrum connection object.

Credits

+++++++

Contributors

------------

This project exists thanks to all the people who contribute! 

.. image:: https://opencollective.com/electrum-btcp/contributors.svg?width=890&button=false

Backers

-------

Thank you to all our backers! `Become a backer`__.

.. image:: https://opencollective.com/electrum-btcp/backers.svg?width=890

    :target: https://opencollective.com/electrum-btcp#backers

__ Backer_

.. _Backer: https://opencollective.com/electrum-btcp#backer

Sponsors

--------

Support us by becoming a sponsor. Your logo will show up here with a link to your website. `Become a sponsor`__.

.. image:: https://opencollective.com/electrum-btcp/sponsor/0/avatar.svg

    :target: https://opencollective.com/electrum-btcp/sponsor/0/website

__ Sponsor_

.. _Sponsor: https://opencollective.com/electrum-btcp#sponsor



Original Project Info
---------------------
::

  Forked from **spesmilo/electrum**: https://github.com/spesmilo/electrum

  Licence: MIT Licence
  Author: Thomas Voegtlin
  Language: Python (GUI: Qt, Kivy)
  Platforms: Windows, Mac, Linux, Android
  Homepage: https://electrum.org/


.. image:: https://travis-ci.org/spesmilo/electrum.svg?branch=master
    :target: https://travis-ci.org/spesmilo/electrum
    :alt: Build Status
.. image:: https://coveralls.io/repos/github/spesmilo/electrum/badge.svg?branch=master
    :target: https://coveralls.io/github/spesmilo/electrum?branch=master
    :alt: Test coverage statistics


---

The Bitcoin Private Team
