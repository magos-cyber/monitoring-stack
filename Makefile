.PHONY: up down logs restart backup

up:
	docker-compose up -d

down:
	docker-compose down

logs:
	docker-compose logs -f

restart:
	docker-compose restart

backup:
	tar -czf backup-$(shell date +%Y%m%d).tar.gz prometheus/data grafana/data loki/data
