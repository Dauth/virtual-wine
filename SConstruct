# -*- mode: python ; coding: utf-8 -*-

import os
from os.path import basename, dirname
import glob

SConsignFile()

WINREPO = Dir(os.path.expanduser('~/devel/windows-repos'))
BINDIR = Dir(os.path.expanduser('~/bin'))

SCRIPTS = ['vwine-setup', 'vwine-copy-env', 'vwine-setup-install']

Default(BINDIR)

for fn in SCRIPTS:
    Command(File(fn, BINDIR), fn,
            'ln -s $SOURCES.abspath $TARGET')
