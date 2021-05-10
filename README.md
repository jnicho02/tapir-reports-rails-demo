# TapirReports demo app

This is a demo Rails app for the [TapirReports](https://github.com/jnicho02/tapir-reports) gem

TapirReports turns Word documents into erb templates, making it easy to generate production quality documents from Rails.

The [live demo](https://tapir-reports-demo.herokuapp.com) is on Heroku

Ruby version
============
2.3.0+

Configuration
=============
this demo uses sqlite, so there _should_ be no need for a database server

Docker
======
* Install Docker Desktop
* Rubyists, install the 'dip' gem and:
```
dip provision
dip rails s
```
* Alternatively, use docker-compose directly
```
docker-compose build
docker-compose up
```

Database creation and initialization
====================================
```
rake db:setup
```
