.PHONY: up_grafana down_grafana up_prometheus down_prometheus

up_grafana:
	cd grafana && docker-compose up -d

down_grafana:
	cd grafana && docker-compose down

up_prometheus:
	cd prometheus && docker-compose up -d

down_prometheus:
	cd prometheus && docker-compose down

up_minio:
	cd minio && docker-compose up -d

down_minio:
	cd minio && docker-compose down

up_kibana:
	cd kibana && docker-compose up -d

down_kibana:
	cd kibana && docker-compose down

up_redis:
	cd redis && docker-compose up -d

down_redis:
	cd redis && docker-compose down


