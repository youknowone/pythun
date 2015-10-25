
PYTHON=python

clean: testclean
	-@ rm *.py
	ln -s pythun.pyu pythun.py
	ln -s tokenizer.pyu tokenizer.py
	ln -s translator.pyu translator.py

build:
	$(PYTHON) pythun.py pythun.pyu > .pythun
	$(PYTHON) pythun.py tokenizer.pyu > .tokenizer
	$(PYTHON) pythun.py translator.pyu > .translator
	-@ rm *.py
	mv .pythun pythun.py
	mv .tokenizer tokenizer.py
	mv .translator translator.py

test: clean build
	$(PYTHON) pythun.py pythun.pyu > pythun.py.test
	$(PYTHON) pythun.py tokenizer.pyu > tokenizer.py.test
	$(PYTHON) pythun.py translator.pyu > translator.py.test
	diff -u pythun.py pythun.py.test
	diff -u tokenizer.py tokenizer.py.test
	diff -u translator.py translator.py.test

testclean:
	-@ rm *.py.test
