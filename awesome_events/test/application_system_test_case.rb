require "test_helper"

Capybara.register_driver :remote_chrome do |app|
  url = "http://chrome:4444/wd/hub"
  caps = ::Selenium::WebDriver::Remote::Capabilities.chrome(
    "goog:chromeOptions" => {
      "args" => [
        "no-sandbox",
        "headless",
        "disable-gpu",
        "window-size=1680,1050"
      ]
    }
  )
  Capybara::Selenium::Driver.new(app, browser: :remote, url: url, capabilities: caps)
end

class ApplicationSystemTestCase < ActionDispatch::SystemTestCase
  include SignInHelper

  driven_by :remote_chrome
  Capybara.server_host = IPSocket.getaddress(Socket.gethostname)
  Capybara.server_port = 3000
  Capybara.app_host = "http://#{Capybara.server_host}:#{Capybara.server_port}"
end
