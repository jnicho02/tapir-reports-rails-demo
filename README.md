# TapirReports demo app

This is a demo Rails app for the [TapirReports](https://github.com/jnicho02/tapir-reports) gem

The [live demo](https://tapir-reports-demo.herokuapp.com) is on Heroku

Ruby version
============
2.3.0+

Configuration
=============
this demo uses sqlite, so there _should_ be no need for a database server

Docker
======
```
docker-compose build
dip provision
dip rails s
```

Database creation and initialization
====================================
rake db:create db:migrate db:seed
