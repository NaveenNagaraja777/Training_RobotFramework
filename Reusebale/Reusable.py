from xml.dom import minidom
from pathlib import Path

def readXMLTestData(nodeName):

    myXmlDoc = minidom.parse(str(Path(__file__).parent.parent)+"/testData.xml")
    data = myXmlDoc.getElementsByTagName(nodeName)[0]
    return  data.firstChild.data


def myImagePath(imageName):

    myXmlDoc = str(Path(__file__).parent.parent)+"/"+imageName+""
    return  myXmlDoc





