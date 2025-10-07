source "https://rubygems.org"

gem "rails", "~> 8.0.2"
# The modern asset pipeline for Rails [https://github.com/rails/propshaft]
gem "propshaft", "~> 1.1"
# Use postgresql as the database for Active Record
gem "pg", "~> 1.1"
# Use the Puma web server [https://github.com/puma/puma]
gem "puma", ">= 5.0"
# Use JavaScript with ESM import maps [https://github.com/rails/importmap-rails]
gem "importmap-rails", "~> 2.1"
# Hotwire's SPA-like page accelerator [https://turbo.hotwired.dev]
gem "turbo-rails", "~> 2.0"
# Hotwire's modest JavaScript framework [https://stimulus.hotwired.dev]
gem "stimulus-rails", "~> 1.3"
# Use Tailwind CSS [https://github.com/rails/tailwindcss-rails]
gem "tailwindcss-rails", "~> 4.2"
# Build JSON APIs with ease [https://github.com/rails/jbuilder]
gem "jbuilder", "~> 2.13"

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem "tzinfo-data", "~> 1.2025", platforms: %i[ windows jruby ]

# Use the database-backed adapters for Rails.cache, Active Job, and Action Cable
gem "solid_cache", "~> 1.0"
gem "solid_queue", "~> 1.1"
gem "solid_cable", "~> 3.0"

# Use Mission Control Jobs to provide a frontend for Solid Queue jobs
gem "mission_control-jobs", "~> 1.1"

# Reduces boot times through caching; required in config/boot.rb
gem "bootsnap", "~> 1.18", require: false

# Deploy this application anywhere as a Docker container [https://kamal-deploy.org]
gem "kamal", "~> 2.7", require: false

# Add HTTP asset caching/compression and X-Sendfile acceleration to Puma [https://github.com/basecamp/thruster/]
gem "thruster", "~> 0.1", require: false

# Use Active Storage variants [https://guides.rubyonrails.org/active_storage_overview.html#transforming-images]
gem "image_processing", "~> 1.2"

# Use Better HTML to replace the normal ERB parser with an HTML aware ERB parser
gem "better_html", "~> 2.1"

# Use Paper Trail to track and store changes to models
gem "paper_trail", "~> 16.0"

# Use FriendlyID to customize URL slugs for models
gem "friendly_id", "~> 5.5"

# Use Kaminari to paginate views
gem "kaminari", "~> 1.2"

# Use Local Time to display datetimes in the user's timezone
gem "local_time", "~> 3.0"

# Use Devise for user authentication
gem "devise", "~> 4.9"

group :development, :test do
  # See https://guides.rubyonrails.org/debugging_rails_applications.html#debugging-with-the-debug-gem
  gem "debug", "~> 1.11", platforms: %i[ mri windows ], require: "debug/prelude"

  # Static analysis for security vulnerabilities [https://brakemanscanner.org/]
  gem "brakeman", "~> 7.1", require: false

  # Use Bundler Audit to check for insecure versions of gems in Gemfile.lock
  gem "bundler-audit", "~> 0.9"

  # Omakase Ruby styling [https://github.com/rails/rubocop-rails-omakase/]
  gem "rubocop-rails-omakase", "~> 1.1", require: false
  # Rubocop Rake is used by Rubocop to lint rake files
  gem "rubocop-rake", "~> 0.7", require: false
  # Rubocop RSpec is used by Rubocop to lint rspec tests
  gem "rubocop-rspec", "~> 3.6", require: false
  # Rubocop RSpec Rails is used by Rubocop to simplify adopting new RSpec Rails functionality
  gem "rubocop-rspec_rails", "~> 2.31", require: false
  # Rubocop Factory Bot is used by Rubocop to lint test factories from Factory Bot
  gem "rubocop-factory_bot", "~> 2.27", require: false
  # Rubocop Capybara is used by Rubocop to lint Capybara tests
  gem "rubocop-capybara", "~> 2.22", require: false

  # Use ERB Lint to lint HTML and ERB files
  gem "erb_lint", "~> 0.9", require: false

  # Use RSpec Rails as the testing framework
  gem "rspec-rails", "~> 8.0"

  # Use Factory bot to create test fixtures
  gem "factory_bot_rails", "~> 6.5"
  # Use Faker to create pseduofake test data
  gem "faker", "~> 3.5"
end

group :development do
  # Use console on exceptions pages [https://github.com/rails/web-console]
  gem "web-console", "~> 4.2"

  # Use Foreman to run necessary servers for development
  gem "foreman", "~> 0.88"

  # Use AnnotateRB to automatically comments summarizing model scheme to the top of relevant files
  gem "annotaterb", "~> 4.16"

  # Letter Opener opens sent emails to a new tab of the default web browser
  gem "letter_opener", "~> 1.10"
  # Letter Opener Web adds a UI for browsing sent emails
  gem "letter_opener_web", "~> 3.0"

  # Rack Mini Profiler adds a speed badge to every HTML badge
  gem "rack-mini-profiler", "~> 4.0"
  # Memory Profiler adds memory profiling to Rack Mini Profiler
  gem "memory_profiler", "~> 1.1"
  # Stackprof adds call stack profiling flamegraphs to Rack Mini Profiler
  gem "stackprof", "~> 0.2"
end

group :test do
  # Use Capybara for tests simulating user interactions
  gem "capybara", "~> 3.40"
  # Selenium Webdriver is used by Capybara as the headless web browser
  gem "selenium-webdriver", "~> 4.34"
  # Use Capybara Screenshot to automatically save a screenshot of failing Capybara tests
  gem "capybara-screenshot", "~> 1.0"

  # Use Shoulda Matcheres to add common one-liner tests
  gem "shoulda-matchers", "~> 6.5"

  # Use Fuubar to improve the RSpec progress bar
  gem "fuubar", "~> 2.5"

  # Use Superdiff to improve the diff between RSpec test objects
  gem "super_diff", "~> 0.16"

  # Use SimpleCov to measure test code coverage
  gem "simplecov", "~> 0.22", require: false
end
