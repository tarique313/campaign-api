# README

  

This README would normally document whatever steps are necessary to get the

application up and running.

  

##### Prerequisites

  

The setups steps expect following tools installed on the system.

  

- Docker

- Ruby [3.0.2](https://www.ruby-lang.org/en/news/2021/07/07/ruby-3-0-2-released/)

- Rails [6](https://edgeguides.rubyonrails.org/6_0_release_notes.html)

- Postgresql [13](https://www.postgresql.org/about/news/postgresql-13-released-2077/)

  

The app can be run in both local and via Docker.

  

1. Run in Local

2. Run from Dockerfile

  
  

### 1. Run in Local

  

##### 1.1 Check out the repository

  

```bash
git@github.com:tarique313/campaign-api.git
```

  

##### 1.2 Change .env file

You can find a .env file in the project's root directory. Create a .env file if the file is not present. Enter your Postgresql database username and password.

```ruby

DB_USERNAME:<your_postgresql_username>

DB_USER_PASSWORD=<your_postgresql_password>

````

  

##### 1.3 Install Gems

Run <code>bundle install</code> to install gem files. If you encounter Ruby version mismatch error, change the the ruby version with the Ruby version installed in your machine. To do that, you will find Ruby version mentioned in <code>Gemfile</code> and <code>.ruby-version</code> files. Both files can be found in project's root directory.

##### 1.4 Create and Seed the Database

  

Run the following commands to create development and test databases. The second command is for migration and the third command is for generating seed data.

```ruby

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