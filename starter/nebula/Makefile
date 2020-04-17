.PHONY: up down clean

install:
	mkdir -p ./data/meta0/nebula
	mkdir -p ./data/meta1/nebula
	mkdir -p ./data/meta2/nebula
	mkdir -p ./data/storage0/nebula
	mkdir -p ./data/storage1/nebula
	mkdir -p ./data/storage2/nebula
	mkdir -p ./data/web/

up:
	docker-compose up

down:
	docker-compose down
	docker-compose -f docker-compose-web.yml down

web:
	docker-compose -f docker-compose-web.yml up

clean:
	rm -rf ./data/meta0/nebula/*
	rm -rf ./data/meta1/nebula/*
	rm -rf ./data/meta2/nebula/*
	rm -rf ./data/storage0/nebula/*
	rm -rf ./data/storage1/nebula/*
	rm -rf ./data/storage2/nebula/*
	rm -rf ./data/web/*
	rm -rf ./logs/*
