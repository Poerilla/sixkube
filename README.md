# Sixkube Analytics

Sixkube is a personal space for people who are interested in self expression and learning as they go while they engage is trading activities. Sixkube offers a platform on which a user can log all their trades for the day, blog about the how and why's of the trade, track real time prices of Canadian stocks. At sixkube we promote learning through reflection. Call it a traders journal.

The sixkube service is currently under construction but feel free to visit the construction site at: https://www.sixkube.com.
## Setting our Rails app

Install ruby using rbenv

`rbenv install 2.5.1`

If you do not use rbenv install using rvm

`rvm install 2.5.1
rvm use 2.5.1 --default
ruby -v`

If you neither have rvm or rbenv it is recommended that you use them as they make switching ruby versions simpler than having to install ruby from source. For a quick and easy tutorial on setting up ruby and Rails appls please follow [this](https://www.google.com) link.

The last step is to install Bundler

`gem install bundler`

Now we make sure all dependencies in your Gemfile are available to your application.

`bundle install`

Install Rails

`gem install rails -v 6.0.2.2`

If you're using rbenv, you'll need to run the following command to make the rails executable available:

`rbenv rehash`

Now that you've installed Rails, you can run the rails -v command to make sure you have everything installed correctly:

`rails -v`

`# Rails 6.0.2.2`

Setting Up PostgreSQL. For PostgreSQL, we're going to add a new repository to easily install a recent version of Postgres.

`sudo apt install postgresql-11 libpq-dev`

The postgres installation doesn't setup a user for you, so you'll need to follow these steps to create a user with permission to create databases. Feel free to replace chris with your username.

`sudo -u postgres createuser {user_name} -s`

If you would like to set a password for the user, you can do the following

`sudo -u postgres psql
postgres=# \password {user_name}`
