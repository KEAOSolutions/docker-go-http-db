FROM golang:1.7.1-onbuild


# Container Labels
ARG BUILDDATE
ARG VCSREF
ARG VERSION

ENV BUILDDATE ${BUILDDATE}
ENV VCSREF ${VCSREF}
ENV VERSION ${VERSION}

LABEL \
  org.label-schema.name="GO Movie DB" \
  org.label-schema.description="GO based http movie load test" \
  org.label-schema.vendor="keaosolutions" \
  org.label-schema.url="https://github.com/keaosolutions/docker-go-http-movie" \
  org.label-schema.usage="https://github.com/keaosolutions/docker-go-http-movie/README.md" \
  org.label-schema.vcs-url="https://github.com/keaosolutions/docker-go-http-movie" \
  org.label-schema.vcs-ref="${VCSREF}" \
  org.label-schema.build-date="${BUILDDATE}" \
  org.label-schema.version="${VERSION}" \
  org.label-schema.license="internal" \
  org.label-schema.docker.schema-version="1.0" \
  org.label-schema.docker.cmd="docker run -d --name go_http_movie_db --host=net go_http_movie_db"
