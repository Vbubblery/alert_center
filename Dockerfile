FROM hasura/graphql-engine:v1.3.1.cli-migrations-v2

ARG DB_USER
ARG DB_PW
ARG DB_HOST
ARG DB_PORT
ARG DB_NAME

COPY migrations /hasura-migrations
COPY metadata /hasura-metadata

ENV HASURA_GRAPHQL_ENABLE_CONSOLE=true
ENV HASURA_GRAPHQL_DATABASE_URL=postgres://$DB_USER:$DB_PW@$DB_HOST:$DB_PORT/$DB_NAME
ENV HASURA_GRAPHQL_MIGRATIONS_DIR=/hasura-migrations
ENV HASURA_GRAPHQL_METADATA_DIR=/hasura-metadata
ENV HASURA_GRAPHQL_ENABLED_LOG_TYPES="startup, http-log, webhook-log, websocket-log, query-log"
ENV HASURA_GRAPHQL_ADMIN_SECRET="flowlity"
ENV HASURA_GRAPHQL_UNAUTHORIZED_ROLE=client
ENV HASURA_GRAPHQL_DEV_MODE=false

EXPOSE 8000

CMD graphql-engine serve --server-port 8000