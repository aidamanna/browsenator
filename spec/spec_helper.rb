require 'simplecov'

SimpleCov.start do
  add_filter 'spec'
end

SimpleCov.minimum_coverage 90

require 'byebug'
require 'dotenv'
require 'browsenator'

RSpec.configure do |config|
  config.expect_with :rspec do |expectations|
    expectations.include_chain_clauses_in_custom_matcher_descriptions = true
  end
end

Dotenv.load
