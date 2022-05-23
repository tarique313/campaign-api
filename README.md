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

### Test the API
##
###  Campaign API
##### 1. Create a Campaign
```
POST /api/v1/campaigns
```
![Screenshot 2022-05-23 165407](https://user-images.githubusercontent.com/2160924/169818682-1a7d8b98-3dbd-40a8-9ff3-374974d616cd.png)

##### 2. Getting the List of Campaigns
```
GET /api/v1/campaigns
```
![Get all Campaigns](https://user-images.githubusercontent.com/2160924/169819266-e79aa4c1-c514-4881-9c7c-f03e9a753ab8.png)

##### 3. Getting a Single Campaign
```
GET /api/v1/campaigns/1
```
![get a campaign](https://user-images.githubusercontent.com/2160924/169819361-f3bd3836-fcc0-4b14-8cfe-7f0774d0f3d7.png)

##### 4. Update a Campaigns
```
PUT /api/v1/campaigns/1
```
![Update a Campaign](https://user-images.githubusercontent.com/2160924/169819430-42d1346c-a5ff-4d3e-b846-329010a0c4a8.png)

###  Investment API
##### 1. Create a Investment
```
POST /api/v1/campaigns/1/investments/
```
![Create a investment](https://user-images.githubusercontent.com/2160924/169819513-8df79282-1f64-414b-a127-b4b962632bed.png)

##### 2. Getting the List of Investments of a Campaign
```
GET /api/v1/campaigns/1/investments/
```
![all investments](https://user-images.githubusercontent.com/2160924/169820761-f6677d6f-3fd1-44db-b966-d8899c1bb4fb.png)

