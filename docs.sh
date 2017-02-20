#! /bin/bash

set -ex

mkdir -p build/docs/
build/tox/docs/bin/rst2html.py --report=info --exit-status=error \
    README.rst build/docs/README.html
build/tox/docs/bin/rst2html.py --report=info --exit-status=error \
    CHANGES.rst build/docs/CHANGES.html
