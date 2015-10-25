
# About Pythun
Pythun(PYTHon UNindented) is an indent-insensitive python dialect.
You should add ';' to the end of each statement and '#;' to the end of each
block.

Pythun itself is written in python-compatible pythun code.

Pythun takes only .pyu files, currently.

Pythun wants to generate perfectly compatible syntax, semantic and code layout.

# Test this version
This is self-buildable pythun implementation.

Next command will turn .py files into pythun files.

	make clean

Next command will build pythun files to generate python files.

	make build

Next command will test pythun files and compiled python files are identical.

	make test

# Known problems
This implementation does not have proper parser but only rough translator.
If you write wrong pythun code, translater will not catch it - mostly.

Code indentation and line changes are not preserved very well. This is a bug.

