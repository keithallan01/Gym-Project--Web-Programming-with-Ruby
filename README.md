#  Serenity Now!

A yoga studio booking app with a Seinfeld theme? Wat? The brief was to create a booking management system for a gym, so I used my experience of yoga to create a system that could be used by my wife, who is a yoga teacher. I decided to call my app Serenity Now, which is related to yoga and of course, Seinfeld. 

This is a Ruby full stack application using Sinatra framework to create the front end and Ruby with SQL to create the backend. The application allows the studio manager to perform CRUD actions to manage a booking system. The user can view all members, activies and bookings and see which members are booked into what activities and making sure that there are spaces available for activites.

## To run this app

The following RubyGems must be installed in order to get the app up and running.

1. PostgreSQL- to create and manage databases.

2. Sinatra - to run the webserver.

```
gem install sinatra
```

3. PG is the Ruby interface to our PostgreSQL database.

```
gem install PG
```


4. Create a database and schema

```
createdb studio
psql -d "studio" db/studio.sql
```

5. Seed the database

```
ruby db/seeds.rb
```

6. Run the app

```
ruby app.rb
```

7. Open Google Chrome on localhost:4567 to view the page.


## Built With

* [Ruby](https://www.ruby-lang.org/en/)
* [MiniTest](http://docs.seattlerb.org/minitest/)
* [Sinatra](http://sinatrarb.com/)
