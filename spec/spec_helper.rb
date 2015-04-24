require 'rubygems'
require 'watir-webdriver'
require 'page-object'
require 'rspec'
require 'pry'

require_relative '../page/home_page'

RSpec.configure do |config|
  config.before(:each) do
    @driver = Watir::Browser.new :firefox

    def home_page; Page::HomePage.new @driver; end
  end

  config.after(:each) { @driver.quit rescue nil }
end
