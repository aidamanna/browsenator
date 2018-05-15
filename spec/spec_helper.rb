require 'simplecov'

SimpleCov.start do
  add_filter 'spec'
end

require 'byebug'
require 'local'
require 'local/chrome'
require 'local/firefox'
require 'local/safari'

RSpec.configure do |config|
  config.expect_with :rspec do |expectations|
    expectations.include_chain_clauses_in_custom_matcher_descriptions = true
  end
end
