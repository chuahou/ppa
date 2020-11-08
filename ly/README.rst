To replicate build, run::

	./prepare.sh <tag> <location>

This will clone `nullgemm/ly <https://github.com/nullgemm/ly>`_ to
``<location>``, check out tag ``<tag>``, clone submodules and recreate
an upstream tarball. Finally it will copy the debian/ directory from
here to ``<location>``.

Make sure ``<location>`` is NOT inside an existing git repository.
