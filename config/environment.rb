# Load the Rails application.
require File.expand_path('../application', __FILE__)

# Initialize the Rails application.
Rails.application.initialize!

build:
    tests:
        override:
            -
                command: 'bundle exec rspec spec'
                environment:
                    'SCRUTINIZER_CC_FILE': 'my-coverage'
                coverage:
                    file: 'my-coverage'
                    format: 'rb-cc'
