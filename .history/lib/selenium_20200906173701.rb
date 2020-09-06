require "selenium-webdriver"

module AASS
  class Error < StandardError; end

  def self.selenium
    driver = Selenium::WebDriver.for :chrome
    driver.navigate.to "http://google.com"

    element = driver.find_element(name: 'q')
    element.send_keys "facebook"
    element.submit

    res = driver.find_element(:css, '.g a')

    res.click

    puts driver.title

    driver.quit
  end
end

SeleniumTest.sel