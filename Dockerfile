FROM node:5.3.0
RUN apt-get update ; apt-get install -y nkf unzip ; apt-get clean
RUN npm install -g csv2geojson
RUN sed -i '1a\process.noDeprecation=true' /usr/local/lib/node_modules/csv2geojson/csv2geojson
COPY ./convert.sh /usr/local/bin/convert.sh
RUN mkdir /data
WORKDIR /data
ENTRYPOINT ["/usr/local/bin/convert.sh"]
