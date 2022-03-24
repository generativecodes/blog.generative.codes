build:
	zola build

upload: build
	rsync -a ./public/* blog:/srv/www/

watch:
	watchexec -i 'public/**' -i 'public/' -- just upload
