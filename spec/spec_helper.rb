require 'simplecov'

SimpleCov.start do
  add_filter 'spec'
end

require 'byebug'
require 'browsenator'
require 'browsenator/local'
require 'browsenator/local/chrome'
require 'browsenator/local/firefox'
require 'browsenator/local/safari'

RSpec.configure do |config|
  config.expect_with :rspec do |expectations|
    expectations.include_chain_clauses_in_custom_matcher_descriptions = true
  end
end
