source 'https://rubygems.org'

	# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
	gem 'rails', 									'4.2.0'
	# for the hashing of the passwords:
	gem 'bcrypt',									'~> 3.1.7'
	# Use SCSS for stylesheets
	gem 'sass-rails', 						'~> 5.0'
	# Use Uglifier as compressor for JavaScript assets
	gem 'uglifier', 							'>= 1.3.0'
	# Use CoffeeScript for .coffee assets and views
	gem 'coffee-rails', 					'~> 4.1.0'
	# Use jquery as the JavaScript library
	gem 'jquery-rails'
	# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
	gem 'turbolinks'
	# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
	gem 'jbuilder', 							'~> 2.0'
	# bundle exec rake doc:rails generates the API under doc/api.
	gem 'sdoc', 									'~> 0.4.0', group: :doc
	# Twitter bootstrap
	gem 'bootstrap-sass', 				'~> 3.3.1'
	# Automatically add vendor prefixes
	gem 'autoprefixer-rails'
	# Helper for Google fonts
	gem 'google-webfonts-rails', 	'~> 0.0.4'
	# image uploader
	gem 'carrierwave', 						'0.10.0'
	gem 'mini_magick', 						'3.8.0'
	gem 'fog'
	# contact form gems
	gem 'simple_form'
	gem 'mail_form'
	# securely store environment variable
	gem 'figaro'
	# easily set maintenance mode
	gem 'turnout'

group :development, :test do
	# Use sqlite3 as the database for Active Record
	gem 'sqlite3'
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug'
  # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'web-console', '~> 2.0'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  # legibility for console output and irb
	gem 'awesome_print'
end

group :test do
	gem 'minitest-reporters', '1.0.5'
	gem 'mini_backtrace', 		'0.1.3'
	gem 'guard-minitest', 		'2.3.1'
end

group :production do
	gem 'pg', 						'0.17.1'
	gem 'rails_12factor', '0.0.2'
	gem 'unicorn'
end
