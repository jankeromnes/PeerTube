FROM gitpod/workspace-postgres

USER gitpod

# Install PeerTube's dependencies.
RUN sudo apt-get update -q && sudo apt-get install -qy \
 ffmpeg \
 openssl

# Set up PostgreSQL.
COPY --chown=gitpod:gitpod setup_postgres.sql /tmp/
RUN sudo update-rc.d postgresql enable \
 && sudo service postgresql start \
 && sudo su postgres -c "psql --file=/tmp/setup_postgres.sql"

USER root
