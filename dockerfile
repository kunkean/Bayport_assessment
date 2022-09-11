FROM mariadb:latest as builder
RUN apt-get update
RUN apt-get install -y mariadb-server
EXPOSE 3307
LABEL version="1.0"
LABEL description="MariaDB Server"
HEALTHCHECK --start-period=5m \
CMD mariadb -e 'SELECT @@datadir;' || exit 1
CMD ["mysqld"]