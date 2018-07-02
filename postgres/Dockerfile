FROM postgres:9
ADD ./setup.sql /docker-entrypoint-initdb.d
ADD ./healthcheck /
RUN chmod +x /healthcheck
HEALTHCHECK CMD ["/healthcheck"]
