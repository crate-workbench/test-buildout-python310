# -*- coding: utf-8; -*-
from setuptools import setup, find_packages
import os
import re

setup(
    name='test-gha-macos-buildout-sqlalchemy',
    version='0.0.0',
    url='https://github.com/crate-workbench/test-gha-macos-buildout-sqlalchemy',
    install_requires='sqlalchemy>=1.0,<1.5',
)
