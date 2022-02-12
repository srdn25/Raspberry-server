# raspberry

This repo for install required docker containers on RPI

Pre-require
* OS has docker-compose

### After clone repository 
```docker-compose -f docker-compose.yml up -d```

### To delete leftover images, containers, volumes and other related data, run the following command:

```sudo rm -rf /var/lib/docker```

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

___
### P.S:
* If you will change password or any value - this value should be without '$' symbols
