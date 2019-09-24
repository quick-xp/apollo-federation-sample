# README
Review System For Apollo Federation Sample 


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
  topReviews {
    id
    authorId
    author {
      username
    }
    product {
      upc
    }
    score
  }
}
```
![image](https://user-images.githubusercontent.com/3175028/65484917-519da200-dedb-11e9-9a24-7f4289e7df36.png)


* Connect to the database
```
host: 127.0.0.1
user: root
port: 13308
```
