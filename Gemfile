source 'https://rubygems.org'


# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.0.0', '>= 5.0.0.1'
# Use Puma as the app server
gem 'puma', '~> 3.0'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
# gem 'jbuilder', '~> 2.5'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 3.0'
# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

# Use Rack CORS for handling Cross-Origin Resource Sharing (CORS), making cross-origin AJAX possible
# gem 'rack-cors'

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platform: :mri
   # Use sqlite3 as the database for Active Record
  gem 'sqlite3'

	#Personaliza los mensajes de error de Rails.
  gem "better_errors"

	#Muestra valores de variables de BetterErrors
  gem "binding_of_caller"

	#Use pry as your rails console
	gem 'pry-rails'

	#Adds 'step', 'next', 'finish', 'continue' and 'break' commands
  gem 'pry-byebug'

	#Walk the stack in a Pry session
  gem 'pry-stack_explorer'

	#Allows you to wrap code in Pry::rescue{ } to open a pry session
  gem 'pry-rescue'

	#pretty print Ruby objects to visualize their structure.
  gem 'awesome_print'

	#Hirb provides a mini view framework for console applications
  gem 'hirb'

  # Use RSpec for specs
  gem 'rspec-rails'
end

group :development do
  gem 'listen', '~> 3.0.5'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]

group :production do
  #base de datos PostgreSQL
  gem 'pg'
  #algo de heroku para archivos estaticos.
  gem 'rails_12factor'
end


gem 'watir-rails'

# gem 'google-search'

# gem 'sentimental'

gem 'azure_mgmt_cognitive_services'

gem 'rest-client'

gem 'dotenv-rails', :groups => [:development, :test]

ruby "2.3.1"

gem 'twitter'
