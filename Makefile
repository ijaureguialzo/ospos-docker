#!make

help: _header
	${info }
	@echo Opciones:
	@echo ----------------------
	@echo start / stop / restart
	@echo clean
	@echo ----------------------

_header:
	@echo -------------------------
	@echo Open Source Point of Sale
	@echo -------------------------

_urls: _header
	${info }
	@echo -----------------------------------------------
	@echo [OSPOS] https://ospos.test
	@echo [Traefik] https://traefik.ospos.test/dashboard/
	@echo -----------------------------------------------

_start-command:
	@docker compose up -d --remove-orphans

start: _header _start-command _urls

stop:
	@docker compose stop

restart: stop start

clean:
	@docker compose down -v --remove-orphans
