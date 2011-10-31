
# About Pythun
Pythun(PYTHon UNindented) is indent-insensitive python dialect.
You should add ';' to end of each statement and '#;' to end of each block.

Pythun itself is written in python-compatible pythun code.

Pythun gets only .pyu file, currently.

Pythun wants to generate perfectly compatible syntax, semantic and code layout.

# Test this version
This is self-buildable pythun implementation.

Command below makes all code to current python-compatible pythun code

	make clean

Command below makes all code to compiled python code from pythun code

	make build

Command below test all code compiled by pythun code is identical to all code compiled by compiled python code

	make test

# Known problems
Current implementation do not has parser but only rough translator.
If you wrote wrong pythun code, this implementation merely not available to catch it.

Code indentation and line changes are not kept well. This is bug.

