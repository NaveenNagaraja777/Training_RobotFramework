from selenium import webdriver
from selenium.webdriver.common.by import By
class readHTML:

    def launchMyChromeBrowser(self):
        driver = webdriver.Chrome("C:/Users/00004128/AppData/Local/Programs/Python/Python39/Scripts/chromedriver.exe")
        driver.get("https://testautomationpractice.blogspot.com/")
        driver.maximize_window()

    #get totla row count

        row_Count=len(driver.find_elements(By.XPATH, "//table[@name='BookTable']//tr"))

        print("No of rows : " +str(row_Count))
    #get total column count

    # get author subject price


obj = readHTML()
obj.launchMyChromeBrowser()
