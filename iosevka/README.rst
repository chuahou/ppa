To replicate build, run::

	./prepare.sh <tag> <location>

This will clone `be5invis/Iosevka
<https://github.com/be5invis/Iosevka>`_ to ``<location>``, check out tag
``<tag>``, install dependencies and recreate an upstream tarball.
Finally it will copy the debian/ directory from here to ``<location>``.
