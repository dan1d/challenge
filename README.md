# README

Ruby on Rails as API and React in the front end.

* React App paths
`/`
`/movies`
`/people`

* JSON paths:
`/v1/people`
`/v1/people/:id`
`/v1/movies`
`/v1/movies/:id`

Admin access under the `/admin` namespace

Admin email: `test@admin.com`
Admin password: `testadmin`

Rails admin used as CMS

* Ruby version
  `ruby 2.6.3p62`

* Rails version
  `'6.0.0'`

* Configuration
  `bundle install`
  `yarn install`

* Database creation
  config db/database.yml
  `rake db:create`
  `rake db:migrate`

* Database initialization
  `rake db:seed`

* Libraries/Frameworks
  - React
  - Ruby on Rails
  - Faker, to Fake data
  - factory_bot_rails easies way to create resources
  - gutentag used for tagging(works with Rails 6)
  - rails_admin CMS
  - devise Authentication


* How to run the test suite
  No tests

* Services (job queues, cache servers, search engines, etc.)
  No background jobs/services

* Deployment instructions
  Deployed at heroku
