tests:
	./bin/test

docs:
	mkdir -p site
	shocco -t 'Python Buildpack Compiler' ./bin/compile > site/index.html
	shocco -t 'Django Buildpack Compiler' ./bin/steps/django > site/django.html
	shocco -t 'Python Buildpack Detector' ./bin/detect > site/detect.html
	shocco -t 'Pylibmc Buildpack Compiler' ./bin/steps/pylibmc > site/pylibmc.html
	shocco -t 'Python Buildpack Changelog' ./Changelog.md > site/changelog.html

site: docs
	cd site && git add -A && git commit -m 'update' && git push heroku master



