require 'simplecov'
require 'ostruct'
require "sidekiq/testing"
require 'textris/delay/active_job/missing'
require 'textris/delay/sidekiq/missing'
require 'active_support/testing/time_helpers'

if ENV["COVERAGE"]
  SimpleCov.start do
    add_filter "/lib/textris.rb"
    add_filter "/spec/"
    add_filter "vendor"
  end
end

require_relative '../lib/textris'

RSpec.configure do |config|
  config.include ActiveSupport::Testing::TimeHelpers

  config.expect_with :rspec do |expectations|
    expectations.include_chain_clauses_in_custom_matcher_descriptions = true
  end

  config.mock_with :rspec do |mocks|
    mocks.verify_partial_doubles = true
  end
end
