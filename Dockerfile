FROM maven:3.8.8-eclipse-temurin-21-alpine AS base
WORKDIR /app
COPY . .

FROM base AS run
ENV VERSION 8.9.63
ENV ADDRESS 0.0.0.0
ENV PORT 8080

EXPOSE 8080
 
ENTRYPOINT [ "/bin/sh", "entrypoint.sh" ]
