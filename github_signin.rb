require "selenium-webdriver"

driver = Selenium::WebDriver.for :chrome
driver.navigate.to "http://github.com"
print "website loaded \n"

element = driver.find_element(css: "body > div.position-relative.js-header-wrapper > header > div > div.HeaderMenu.HeaderMenu--logged-out.position-fixed.top-0.right-0.bottom-0.height-fit.position-lg-relative.d-lg-flex.flex-justify-between.flex-items-center.flex-auto > div.d-lg-flex.flex-items-center.px-3.px-lg-0.text-center.text-lg-left > a.HeaderMenu-link.no-underline.mr-3")
print "finding sign-in button \n"
element.click
print "clicked on sign-inbutton"


element = driver.find_element(name: "login")
element.send_keys "Reema-sohal"
print "username entered \n"

element = driver.find_element(name: "password")
print "Please add password \n"
password = gets

element = driver.find_element(name: "commit")
element.click
print "clicked on sign-in \n"

driver.quit 
