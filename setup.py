# -*- coding: utf-8; -*-
from setuptools import setup, find_packages
import os
import re

setup(
    name='test-gha-macos-sqlalchemy',
    version='0.0.0',
    url='https://github.com/crate-workbench/test-gha-macos-sqlalchemy',
    platforms=['any'],
    extras_require=dict(
        test=['zope.testing>=4,<5',
              'zc.customdoctests>=1.0.1,<2',
              'stopit>=1.1.2,<2'],
        sqlalchemy=['sqlalchemy>=1.0,<1.5', 'geojson>=2.5.0']
    ),
    python_requires='>=3.4',
    install_requires='urllib3>=1.9',
)
