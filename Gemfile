source 'https://rubygems.org'
ruby "2.3.1"

gem 'rails', '4.2.3'
gem 'puma' #heroku recommended
gem 'jquery-rails'
gem 'fancybox2-rails', '~> 0.2.4'
gem 'rqrcode'
gem 'roadie'

gem 'activeadmin', '~> 1.0.0.pre2'
gem 'devise', '~> 3.2' #used with active admin

#for compatability with rails 4
gem 'protected_attributes'

#for photo processing and storage
gem 'paperclip'
gem 'aws-sdk', '1.29.1'

# Bundle edge Rails instead:
# gem 'rails', :git => 'git://github.com/rails/rails.git'

group :development do
  gem 'sqlite3'
  gem 'seed_dump' #not useful anymore I think
end

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails'
  gem 'coffee-rails'

  # See https://github.com/sstephenson/execjs#readme for more supported runtimes
  # gem 'therubyracer', :platforms => :ruby

  gem 'uglifier'
end

group :production do
  gem 'pg'
  gem 'rails_12factor' #update for rails 4 for heroku
end

# To use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

# To use Jbuilder templates for JSON
# gem 'jbuilder'

# Use unicorn as the app server
# gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano'

# To use debugger
# gem 'debugger'
