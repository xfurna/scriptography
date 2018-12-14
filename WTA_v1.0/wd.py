from selenium import webdriver
import targets
from selenium.webdriver.common.keys import Keys

a = webdriver.Chrome('CHROMEDRIVER.EXE COMPLETE PATH')
a.get("https://web.whatsapp.com/")
input()
for i in range(len(targets.this)):
    to = a.find_element_by_xpath('//*[@id="side"]/div[1]/div/label/input')
    to.click()
    to.send_keys(targets.this[i])
    to.send_keys(Keys.RETURN)
    hr = a.find_element_by_xpath('//*[@id="main"]/footer/div[1]/div[2]/div/div[2]')
    hr.send_keys(targets.it)
    hit = a.find_element_by_xpath('//*[@id="main"]/footer/div[1]/div[3]/button/span')
    hit.click()
