def sign_in_Text():
    return  "//h2[text()='Sign In']"

def author_name(bookName):
    return "//table[@name='BookTable']//tbody/tr/td[text()="'+bookName+'"]/../td[2]"
def sub_name(bookName):
    return "//table[@name='BookTable']//tbody/tr/td[text()="'+bookName+'"]/../td[3]"
def price(bookName):
    return "//table[@name='BookTable']//tbody/tr/td[text()="'+bookName+'"]/../td[4]"