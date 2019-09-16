require "selenium-webdriver"
require "pry"
require "pry-byebug"

driver = Selenium::WebDriver.for :chrome
driver.manage.timeouts.page_load = 120
driver.navigate.to "http://github.com"
print "website loaded \n"

print "finding sign-in button \n"
signin = driver.find_element(css: "body > div.position-relative.js-header-wrapper > header > div > div.HeaderMenu.HeaderMenu--logged-out.position-fixed.top-0.right-0.bottom-0.height-fit.position-lg-relative.d-lg-flex.flex-justify-between.flex-items-center.flex-auto > div.d-lg-flex.flex-items-center.px-3.px-lg-0.text-center.text-lg-left > a.HeaderMenu-link.no-underline.mr-3")
signin.click
print "clicked on sign-inbutton"


username = driver.find_element(name: "login")
username.send_keys "Reema-sohal"
print "username entered \n"

password = driver.find_element(name: "password")
print "Please add password \n"
passwordin = gets.strip
password.send_keys(passwordin)

submitbutton = driver.find_element(name: "commit")
submitbutton.click
print "clicked on sign-in \n"

#If the password is correct it goes in this functions exception
#if the password is wrong, this element will be found.
begin
	loginfailed = driver.find_element(css: "#js-flash-container > div > div")
	print "Login failed \n"
	print "Password Incorrect \n"
rescue 
	print "Login successful. \n"
end	

sleep 2
driver.quit	
