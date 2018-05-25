require 'simplecov'

SimpleCov.start do
  add_filter 'spec'
end

require 'byebug'
require 'dotenv'
require 'browsenator'
require 'browsenator/local'
require 'browsenator/local/chrome'
require 'browsenator/local/firefox'
require 'browsenator/local/safari'
require 'browsenator/remote/browserstack'
require 'browsenator/remote/browserstack/browserstack_credentials'
require 'browsenator/remote/browserstack/chrome'
require 'browsenator/remote/browserstack/safari'
require 'browsenator/remote/browserstack/edge'
require 'browsenator/remote/browserstack/ie'

RSpec.configure do |config|
  config.expect_with :rspec do |expectations|
    expectations.include_chain_clauses_in_custom_matcher_descriptions = true
  end
end

Dotenv.load
