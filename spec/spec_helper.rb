require 'simplecov'

SimpleCov.start do
  add_filter 'spec'
end

SimpleCov.minimum_coverage 90

require 'byebug'
require 'dotenv'
require 'browsenator'
require 'browsenator/local'
require 'browsenator/local/chrome'
require 'browsenator/local/firefox'
require 'browsenator/local/safari'
require 'browsenator/remote/browserstack'
require 'browsenator/remote/browserstack/browserstack_credentials'
require 'browsenator/remote/browserstack/desktop/chrome'
require 'browsenator/remote/browserstack/desktop/safari'
require 'browsenator/remote/browserstack/desktop/edge'
require 'browsenator/remote/browserstack/desktop/ie'
require 'browsenator/remote/browserstack/mobile/samsung_galaxy_s8'

RSpec.configure do |config|
  config.expect_with :rspec do |expectations|
    expectations.include_chain_clauses_in_custom_matcher_descriptions = true
  end
end

Dotenv.load
