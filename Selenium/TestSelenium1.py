from selenium import webdriver
from selenium.webdriver.common.by import By
class Day2TestScripts:

    def launchMyChromeBrowser(self):
        driver = webdriver.Chrome("C:/Users/00004128/AppData/Local/Programs/Python/Python39/Scripts/chromedriver.exe")
        driver.get("https:\\www.google.co.in")
        driver.maximize_window()
        google_logo=driver.find_element(By.CLASS_NAME, "lnXdpd")
        google_logo.is_displayed()
        print("Is present")
        i_am_feeling_lucky_button = driver.find_element(By.NAME, "btnI")
        i_am_feeling_lucky_button.is_displayed()
        print("Button is displayed")
        i_am_feeling_lucky_button.click()
        google_searchtext = driver.find_element(By.NAME,"q")
        google_searchtext.send_keys("Testing")
        driver.implicitly_wait(10)

        driver.implicitly_wait(10)

obj = Day2TestScripts()
obj.launchMyChromeBrowser()