# # require 'capybara'
# # require 'capybara/rspec'
# # require 'selenium-webdriver'

# # ​RSpec.configure do |config|
# #   config.expect_with :rspec do |expectations|
# #     expectations.include_chain_clauses_in_custom_matcher_descriptions = true
# #   end
# # ​
# #   config.mock_with :rspec do |mocks|
# #     mocks.verify_partial_doubles = true
# #   end
# # ​
# #   config.shared_context_metadata_behavior = :apply_to_host_groupsbunld
# #   config.include Capybara::DSL
# # end
# # ​
# # Capybara.configure do |config|
# #   config.default_driver = :selenium_chrome
# #   config.default_max_wait_time = 15
# #   config.app_host = 'https://training-wheels-protocol.herokuapp.com'
# end






require 'capybara'
require 'capybara/rspec'
require 'selenium-webdriver'

RSpec.configure do |config|
  
  config.expect_with :rspec do |expectations|
    
    expectations.include_chain_clauses_in_custom_matcher_descriptions = true
    config.filter_gems_from_backtrace "ignored_gem", "another_ignored_gem",

  end

  config.mock_with :rspec do |mocks|
    
    mocks.verify_partial_doubles = true
  end

  config.shared_context_metadata_behavior = :apply_to_host_groups
  config.include Capybara::DSL

end
Capybara.configure do |config|
  config.default_driver = :selenium_chrome
  config.default_max_wait_time = 15
  config.app_host = 'https://training-wheels-protocol.herokuapp.com'
end
