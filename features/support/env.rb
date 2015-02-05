require 'capybara/cucumber'
require 'selenium-webdriver'
require 'pry'

Capybara.default_driver = :selenium

AfterStep('@pause') do
  print "Press Return to continue..."
  STDIN.getc
end

# Configure the base urls for frontend and backend here
$mobileweb_url = 'http://mhigh.usatoday.com'

def base_url(path)
  $mobileweb_url + path
end
