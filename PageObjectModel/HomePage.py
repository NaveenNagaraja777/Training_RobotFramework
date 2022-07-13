

def logo_xpath():
    return "(//img[@alt='Webucator Logo'])[2]"

def sign_xpath():
    return "//a[contains(text(),'SIGN IN')]"

def tecnical_xpath():
    return "//h1[text()='Technical & Business Training']"

def featured_Courses(headerName):
    return "//h1[@text='"+headerName+"']"

def featured_Courses(headerName):
    return "//h1[@text()='"+headerName+"']"

def featured_Courses_SubText(subText):
    return "//div[contains(text(),'"+subText+"')]"

def featured_Courses(position):
    return "//div[@class='col-lg-9']/div/div['"+position+"']/div/div[1]//h5/a"

def featured_Courses_duration(position):
    return "//div[@class='col-lg-9']/div/div['"+position+"']/div/div[1]//div/div[1]"

def featured_Courses_nextClass(position):
    return "//div[@class='col-lg-9']/div/div['"+position+"']/div/div[1]//div/div[2]/span"


