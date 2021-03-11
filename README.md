# README

* Ruby version: 2.6.6
* Rails Version: 6.0.3.3

To install the gems defined in the gemfile. please run  `bundle install`
To run the migrations, run `rake db:create db:migrate`
Run the server with the command, `rails s`

In order to send the mails, please add the smtp configurations in development.rb 

![image](https://user-images.githubusercontent.com/31825416/110789303-ba2a3b80-8295-11eb-9e7d-bc113c04ae28.png)

To run the specs, run the migrations in the test environment by running the follow command
`rake db:migrat RAILS_ENV=TEST`

To run the specs,
`rspec <file_path>`
