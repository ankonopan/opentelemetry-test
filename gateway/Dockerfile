#===========
#Build Stage
#===========
FROM elixir:1.10.4-alpine as build

#Copy the source folder into the Docker image
COPY ./app ./app

WORKDIR app

RUN rm -fr _build

ENV MIX_ENV=prod
RUN mix do local.hex --force, local.rebar --force
RUN mix do deps.get --only $MIX_ENV, deps.compile
RUN mix release

#================
#Deployment Stage
#================
FROM elixir:1.10.4-alpine

#Set environment variables and expose port
EXPOSE 4000
ENV REPLACE_OS_VARS=true \
    PORT=4000 \
    MIX_ENV=prod \
    SHELL=/bin/bash

COPY --from=build app/_build/prod/rel/gateway ./app

RUN pwd
RUN ls -lah app


#Set default entrypoint and command
CMD ["/app/bin/gateway", "start"]