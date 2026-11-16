VERSION=3.3.25

build:
	docker build -t agate .
	docker tag agate vlahavas/agate:$(VERSION)
	docker tag agate vlahavas/agate:latest

push:
	docker push vlahavas/agate:$(VERSION)
	docker push vlahavas/agate:latest

download:
	rm -f agate.x86_64-unknown-linux-gnu.gz
	wget https://github.com/mbrubeck/agate/releases/download/v$(VERSION)/agate.x86_64-unknown-linux-gnu.gz
	gunzip agate.x86_64-unknown-linux-gnu.gz

.PHONY: download build push
