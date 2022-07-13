from xml.dom import minidom
class ReadXML:
    def readTestDatafromXML(self, nodename):

        xmlobj =minidom.parse("D:\\PythonExcersiseFiles\\Day1PythonProgramming\\TestDir\\MyTest.xml")
        mydataValue = xmlobj.getElementsByTagName(nodename)[0]
        return mydataValue.firstChild.data

obj = ReadXML()
print(obj.readTestDatafromXML("userID"))