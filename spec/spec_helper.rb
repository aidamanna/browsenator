require 'simplecov'

SimpleCov.start do
  add_filter 'spec'
end

require 'local/chrome'
require 'local/headless_chrome'

RSpec.configure do |config|
  config.expect_with :rspec do |expectations|
    expectations.include_chain_clauses_in_custom_matcher_descriptions = true
  end
end