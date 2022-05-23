# README

This README would normally document whatever steps are necessary to get the
application up and running.

##### Prerequisites

The setups steps expect following tools installed on the system.

- Docker
- Ruby [2.4.0](https://github.com/organization/project-name/blob/master/.ruby-version#L1)
- Rails [5.0.2](https://github.com/organization/project-name/blob/master/Gemfile#L12)
- Postgresql

The app can be run in both local and via Docker. 

1. Local
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
##### 3. Create and setup the database

Run the following commands to create and setup the database.

```ruby
bundle exec rake db:create
bundle exec rake db:setup
```

##### 4. Start the Rails server

You can start the rails server using the command given below.

```ruby
bundle exec rails s
```

And now you can visit the site with the URL http://localhost:3000