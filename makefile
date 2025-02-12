
install:
	bin/composer install

start:
	php -S localhost:8080

test:
	# cd tst && ../vendor/bin/phpunit
	./vendor/bin/phpunit tst


lint:
	echo ça peut prendre beaucoup de temps
	php -l $(find . -name "*.php")
	./vendor/bin/phpcs --extensions=php .      	
	./vendor/bin/phpmd . ansi codesize,unusedcode,naming
