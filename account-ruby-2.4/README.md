# README
Account System For Apollo Federation Sample 


* Setup
```
docker-compose build
docker-compose run api bundle exec rake db:create
docker-compose run api bundle exec rake db:migrate
docker-compose run api bundle exec rake db:seed
```

* Run
```
docker-compose up api
```

* Sample
```
query {
  searchUser(id: 2) {
    id
    name
    username
    email
  }
}
```
![image](https://user-images.githubusercontent.com/3175028/65479525-b3a0dc00-dec8-11e9-80b7-f2e3d867f316.png)


* Connect to the database
```
host: 127.0.0.1
user: root
port: 13306
```
