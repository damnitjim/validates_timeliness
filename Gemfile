source 'http://rubygems.org'

gemspec

gem 'rails', "~> #{ENV['RAILS_VERSION'] || '3.2'}"
gem 'rspec', '~> 2.8'
gem 'rspec-rails'
gem 'timecop'
gem 'rspec_tag_matchers'
gem 'ruby-debug', :platforms => [:ruby_18, :jruby]
gem 'debugger', :platforms => [:ruby_19]
gem 'appraisal'
gem 'sqlite3'

group :mongoid do
  gem 'mongoid'
  gem 'bson_ext'
  gem 'system_timer', :platforms => [:ruby_18]
end

group :active_record do
  gem 'sqlite3-ruby', :require => 'sqlite3'
end