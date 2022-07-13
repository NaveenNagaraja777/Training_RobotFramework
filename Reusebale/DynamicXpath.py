from xml.dom import minidom
from pathlib import Path

def subCourse_xpath(linkName):
    return "//h4[text()='Popular Courses']/../p[3]/a[text()='"+linkName+"']"

def readXmlfromrobotFrameork(nodeName):
    myXmlDoc = minidom.parse(str(Path(__file__).parent.parent) + "/robotFramework.xml")
    data = myXmlDoc.getElementsByTagName(nodeName)[0]
    return data.firstChild.data