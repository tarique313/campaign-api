# README

  

This README would normally document whatever steps are necessary to get the

application up and running.

  

##### Prerequisites

  

The setups steps expect following tools installed on the system.

  

- Docker

- Ruby [3.0.3](https://www.ruby-lang.org/en/news/2021/11/24/ruby-3-0-3-released/)

- Rails [7.0.3](https://rubyonrails.org/2022/5/9/Rails-7-0-3-6-1-6-6-0-5-and-5-2-8-have-been-released)

- Postgresql [13](https://www.postgresql.org/about/news/postgresql-13-released-2077/)

  

The app can be run in both local and via Docker.

  

1. Run in Local

2. Run from Dockerfile

  
  

### 1. Run in Local

  

##### 1.1 Check out the repository

  

```bash

git clone git@github.com:organization/project-name.git

```

  

##### 1.2 Change .env file

You can find a .env file in the project's root directory. Create a .env file if the file is not present. Enter your Postgresql database username and password.

  

```bash

DB_USERNAME:<your_postgresql_username>

DB_USER_PASSWORD=<your_postgresql_password>

````

  

##### 1.3 Install Gems

Run <code>bundle install</code> to install gem files. If you encounter Ruby version mismatch error, change the the ruby version with the Ruby version installed in your machine. To do that, you will find Ruby version mentioned in <code>Gemfile</code> and <code>.ruby-version</code> files. Both files can be found in project's root directory.

  
  

##### 1.4 Create and Seed the Database

  

Run the following commands to create development and test databases. The second command is for migration and the third command is for generating seed data.

```bash

rails db:create

rails db:migrate

rails db:seed

````


##### 1.5. Start the Rails server

You can start the rails server using the command given below.

  

```ruby
rails s
```

  

And now you can visit the site with the URL http://localhost:3000


### 2. Run from Dockerfile
##### 2.1. Docker
Make sure you have Docker installed and running in your machine.

##### 2.2 Docker Commands
```bash
docker-compose -f docker-compose.yml build
```
```bash
docker-compose -f docker-compose.yml run web rails db:create db:migrate
```
```bash
docker-compose -f docker-compose.yml up -d
```