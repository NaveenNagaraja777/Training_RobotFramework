from xml.dom import minidom
from pathlib import Path

def readFleekITXMLTestData(nodeName):

    myXmlDoc = minidom.parse(str(Path(__file__).parent.parent)+"/FleekIt.xml")
    data = myXmlDoc.getElementsByTagName(nodeName)[0]
    return  data.firstChild.data

def fleekTopMenuBars(menuBars):
    return "//nav[@class='main_menu drop_down right']//span[text()='"+menuBars+"']"

def fleekServicesLinks(menuBars):
    return "//nav[@class='main_menu drop_down right']//span[text()='"+menuBars+"']"