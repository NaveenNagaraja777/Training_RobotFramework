from lib2to3.pgen2 import driver

from selenium import webdriver
from selenium.webdriver.common.by import By
from PageObjectModel import HomePage
from PageObjectModel import LoginPage
from Reusebale import Reusable
class WebCutorHome:

    def launchMyChromeBrowser(self):
        global driver
        driver = webdriver.Chrome(Reusable.readXMLTestData("browserPath"))
        driver.get(Reusable.readXMLTestData("url"))
        driver.maximize_window()

    def doWebucutoHomePageTest(self):
        # Click on logon ,Validate URL, Vaidate Title, Check for Technical details, Check SIgn in Button, Click on Sign In#
        logo=driver.find_element(By.XPATH, HomePage.logo_xpath())
        logo.click()
        driver.implicitly_wait(10)
        if driver.current_url=="https://www.webucator.com/":
            print("URL is pass")
        if driver.title=="Online and Onsite Instructor-led Training Classes | Webucator":
            print("Title is pass")
        if driver.find_element(By.XPATH,HomePage.tecnical_xpath()).is_displayed():
            print("Technical Details is Pass")
        if driver.find_element(By.XPATH,HomePage.sign_xpath()).is_displayed():
            print("Sign in is displayed")
        sign_in = driver.find_element(By.XPATH,HomePage.sign_xpath())
        sign_in.click()

    def doWebucutoLoginPageTest(self):
        if driver.find_element(By.XPATH, LoginPage.sign_in_Text()).is_displayed():
            print("Sign is displayed in Login Page")

    def webCutor_Quit(self):
        driver.close()
        print("Closing all browser")

obj = WebCutorHome()
obj.launchMyChromeBrowser()
obj.doWebucutoHomePageTest()
obj.doWebucutoLoginPageTest()
obj.webCutor_Quit()
