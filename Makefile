start:
	docker compose up -docker
build:
	docker compose up --build -d
stop:
	docker compose stop
down:
	docker compose down
exec:
	docker compose exec cookpad bash