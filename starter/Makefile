.PHONY: up_grafana down_grafana up_prometheus down_prometheus

export GRAFANA_PORT=3001
export PROMETHEUS_PORT=9090
export MINIO_ACCESS_KEY=tradingAI
export MINIO_SECRET_KEY=tradingAI
export MINIO_PORT=9000
export MINIO_DATA=/home/ubuntu/data/minio/data
export KIBANA_PORT=5601

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
