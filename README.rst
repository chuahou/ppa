###
ppa
###

|License: MIT|

`Personal PPA archive <https://en.wikipedia.org/wiki/RAS_syndrome>`_
files. PPA located at
https://launchpad.net/~c3hou/+archive/ubuntu/packages.

Many of these packages have pecularities making it difficult to build
them purely the Debian way on Launchpad (basically, they need
dependencies fetched from the web, that Launchpad can't do). Hence, each
directory may have a prepare.sh script that does modifications that need
to be done BEFORE running ``debuild``; see each directory's README for
details.

Warning
=======

Use my packages at your own risk. Often, the upstreams are rather easy
to install yourself, so these packages are not worth the risk.

.. |License: MIT| image:: https://img.shields.io/badge/License-MIT-yellow.svg
	:target: https://opensource.org/licenses/MIT
