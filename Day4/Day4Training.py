from selenium import webdriver
from selenium.webdriver.common.by import By
from Reusebale import Reusable

class Day4:

    def launchChrome(self):
        global driver
        driver = webdriver.Chrome(Reusable.readXMLTestData("browserPath"))
        driver.implicitly_wait(10)
        driver.get(Reusable.readXMLTestData("url"))
        driver.maximize_window()
    def closeApp(self):
        driver.close()

    def feature_CoursesTesting(self):
        print("test")
obj = Day4()
obj.launchChrome()
obj.closeApp()
