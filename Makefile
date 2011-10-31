
clean: testclean
	-@ rm *.py
	ln -s pythun.pyu pythun.py
	ln -s tokenizer.pyu tokenizer.py
	ln -s translator.pyu translator.py

build:
	python pythun.py pythun.pyu > .pythun
	python pythun.py tokenizer.pyu > .tokenizer
	python pythun.py translator.pyu > .translator
	-@ rm *.py
	mv .pythun pythun.py
	mv .tokenizer tokenizer.py
	mv .translator translator.py

test: clean build
	python pythun.py pythun.pyu > pythun.py.test
	python pythun.py tokenizer.pyu > tokenizer.py.test
	python pythun.py translator.pyu > translator.py.test
	diff -u pythun.py pythun.py.test
	diff -u tokenizer.py tokenizer.py.test
	diff -u translator.py translator.py.test

testclean:
	-@ rm *.py.test
