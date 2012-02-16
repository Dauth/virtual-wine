.. -*- mode: rst ; ispell-local-dictionary: "american" -*-

=====================================
vwine - Virtual wine environments
=====================================

:Author:    Hartmut Goebel <h.goebel@goebel-consult.de>
:Version:   Version 0.1
:Copyright: 2011-2012 by Hartmut Goebel
:Licence:   GNU Public Licence v3 (GPLv3)
:Homepage:  https://github.com/htgoebel/virtual-wine


|vwine| eases setting up and using separated wine installations.

wine_ has a great feature for installing several separate
environments in parallel. This is done by setting a environment-variable
`WINEPREFIX` like::

   WINEPREFIX=/path/to/my/separate-env wine regedit

With |vwine| this gets easier: You do not have set the
environment-variable manually. Just do::

    . /path/to/your/virtual-env/bin/activate
    wine regedit
    python-2.7.3-installer.exe
    msiexe ...
    deactivate


|vwine| is inspired by `virtualenv
<http://pypi.python.org/pypi/virtualenv/>`_.


Installation
-----------------

Installation requires `scons <http://www.scons.org>`_.


Usage
------------


Setup a new |vwine| instance::

    vwine-setup /path/to/your/virtual/env


Use a |vwine| instance::

    . /path/to/your/virtual-env/bin/activate # bash
    . /path/to/your/virtual-env/bin/activate.csh # csh and friends
    . /path/to/your/virtual-env/bin/activate.fish # fish
    #... use it, e.g.
    wine regedit
    # deactivate the environment
    deactivate

Copy an existing |vwine| instance::

    vwine-copy-env /path/to/old-env /path/to/new-env


Install a new |vwine| instance using predefined `installer.bat`.

.. _wine: http://www.python.org/
.. |vwine| replace:: *vwine*
