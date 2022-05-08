FROM mongo:latest
RUN mkdir -p /data/db2 
COPY  ./mongod.conf /etc/mongod.conf
RUN chown -R mongodb:mongodb /data/db2
COPY . /data/db2
EXPOSE 27017

