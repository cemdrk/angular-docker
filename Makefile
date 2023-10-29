.PHONY: up down shell

down:
	docker compose down --rmi local --volumes --remove-orphans

up:
	docker compose up $(filter-out $@,$(MAKECMDGOALS))

shell:
	docker compose exec app bash

%:
	@:
