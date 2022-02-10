# https://chrisedrego.medium.com/20-best-practise-in-2020-for-dockerfile-bb04104bffb6
FROM alpine:edge
LABEL \
    maintainer="François-David Collin <Francois-David.Collin@umontpellier.fr>" \
    description="DiyabcGUI shiny server image"

WORKDIR /app

COPY install.R .

RUN apk add --no-cache R R-dev R-doc g++ libxml2-dev libgit2-dev linux-headers git automake autoconf libtool

RUN Rscript install.R

RUN apk del gcc R-doc g++ linux-headers git automake autoconf libtool

COPY launch.R .
