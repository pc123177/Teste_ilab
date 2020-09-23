# frozen_string_literal: true

require 'capybara/cucumber'
require 'webdrivers'
require 'site_prism'

Capybara.default_driver = :selenium
Capybara.register_driver :selenium do |app|
  Capybara::Selenium::Driver.new(app, browser: :firefox)
end
