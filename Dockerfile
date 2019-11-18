FROM strapi/base

RUN yarn global add strapi@3.0.0-beta.17.5



WORKDIR /srv/app
VOLUME /srv/app

COPY ./package.json ./
COPY ./yarn.lock ./

ENV NODE_ENV development


EXPOSE 1337

COPY docker-entrypoint.sh /usr/local/bin/

RUN apt-get update && apt-get install -y dos2unix

RUN dos2unix /usr/local/bin/docker-entrypoint.sh && apt-get --purge remove -y dos2unix && rm -rf /var/lib/apt/lists/*


ENTRYPOINT ["docker-entrypoint.sh"]

CMD ["strapi", "develop"]
