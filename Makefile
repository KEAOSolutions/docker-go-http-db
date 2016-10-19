
GITREF  = $(shell git show --oneline -s | head -n 1 | awk '{print $$1}')
VERSION = $(shell git tag | tail -n 1)


build:
	@docker build -t go_http_movie_db:$(VERSION) --build-arg BUILDDATE=`date -u +%Y-%m-%dT%H:%M:%SZ` --build-arg VERSION=$(VERSION) --build-arg VCSREF=$(GITREF) .

run:
	@docker run -it --rm --name go_http_movie_db_$(VERSION) --host=net go_http_movie_db:$(VERSION)

build_dirty:
	@docker build -t go_http_movie_db:$(VERSION)_dirty --build-arg BUILDDATE=`date -u +%Y-%m-%dT%H:%M:%SZ` --build-arg VERSION="$(VERSION)_dirty" --build-arg VCSREF="$(GITREF)" .

run_dirty:
	@docker run -it --rm --host=net --name go_http_movie_db_$(VERSION)_dirty go_http_movie_db:$(VERSION)_dirty

