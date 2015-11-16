# See http://rubydoc.info/gems/rspec-core/RSpec/Core/Configuration
ENV["RAILS_ENV"] ||= 'test'
require 'spec_helper'
require File.expand_path("../../config/environment", __FILE__)
require 'capybara/rspec'
require 'shoulda/matchers'
require 'rspec/rails'
require 'devise'

Dir[Rails.root.join("spec/support/**/*.rb")].each { |f| require f }

Shoulda::Matchers.configure do |config|
  config.integrate do |with|
    with.test_framework :rspec
    with.library :rails
  end
end

RSpec.configure do |config|

  config.backtrace_exclusion_patterns = [/\.rvm/, /\.rbenv/]
  
  config.infer_spec_type_from_file_location!

  # Remove this line if you're not using ActiveRecord or ActiveRecord fixtures
  config.fixture_path = "#{::Rails.root}/spec/fixtures"

  config.expect_with :rspec do |expectations|
    expectations.include_chain_clauses_in_custom_matcher_descriptions = true
  end

  config.use_transactional_fixtures = false

  config.mock_with :rspec do |mocks|
    mocks.verify_partial_doubles = true
  end

  config.include Devise::TestHelpers, type: :controller
  config.include FeatureHelpers, type: :feature
end


def user
  @user ||= create(:user)
end
