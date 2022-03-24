#! /usr/bin/env python

from setuptools import setup

setup(
      name='sundries',
      packages=['sundries'],
      install_requires=[
            'click == 8.0.1',
      ],
      entry_points={
            'console_scripts': [
                  'dial = sundries.keypad:dial',
            ],
      },
)
