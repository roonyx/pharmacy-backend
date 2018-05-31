# Pharmacy project

## Install

Clone the repo:
```
git clone git@github.com:roonyx/pharmacy-backend.git
cd pharmacy-backend
```

#### Install Ruby 2.5

[Install RVM](https://rvm.io/rvm/install)

```
rvm install 2.5
```

#### Install gems
```
bundle install
```

#### Create the databases
```
rake db:setup
```

#### Import data to DB
```
rake data:import
```

#### Run server
```
rails s
```

#### Deploy
```
git remote add heroku https://git.heroku.com/api-pharmacy.git
git push heroku master
heroku run db:migrate
```
