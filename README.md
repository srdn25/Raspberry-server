# raspberry

This repo for install required docker containers on RPI

Pre-require
* OS has docker-compose
* place /
* cloned repository in /raspberry
* data folders in /data/psql and /data/redis

### After clone repository
* mkdir data/redis data/psql
* execute `./scripts/decode.sh`
* enter default password 123
* run `docker-compose -f docker-compose.yml up -d`

### To delete leftover images, containers, volumes and other related data, run the following command:

`sudo rm -rf /var/lib/docker`

### For connect to PSQL CLI
* find container ID of postgres ```docker ps```
* execute ```docker exec -it 0551b18789b7 psql -U admin -d postgres```

### Create new user and database for him
```
create database friend_db;
create user friend with encrypted password 'friendpass';
grant all privileges on database friend_db to friend;
```
* or SQL
```
CREATE DATABASE friend_db;
CREATE USER friend WITH ENCRYPTED PASSWORD 'friendpass';
GRANT ALL PRIVILEGES ON DATABASE friend_db TO friend;
```

### Remove all the user databases and user
```
DROP OWNED BY your_user;
DROP USER your_user;
```

### For share secret data (credentials or docker-compose with secret credentials)
You can use scripts scripts/encode and scripts/decode

* Place for execute is root raspberry repository folder
* `touch open-store.sh` (if haven't this file)
* Put secret data with set environments to this file (look at example)
* Execute `./scripts/encode`
* Script will ask password for encode. Enter any password
* Will create or update file `private-store.pem`. Send this file and password to other developer
* On side other developer, just run `./scripts/decode`
* Enter password which used for encode
* Script will create encoded `open-store.sh`

___
### P.S:
* If you will change password or any value - this value should be without '$' symbols
* After update docker-compose config just execute `docker-compose down` than `docker-compose -f docker-compose.yml up -d`
* minio data store in docker default path (using global volume)