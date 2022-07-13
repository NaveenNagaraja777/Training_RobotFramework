

class TestClass:
    a=5
    def testMethodName(self,frame):
        print(frame+" "+"Test")
    def addingNumbers(self, a, b):
        print(a+b)
    def mulplicationNumbers(self, a,b):
        print(a*b)

#Return statement
    def retStatement(self,a ,b):
        x="Mobile"
        if a>b:
            x="Computer"
            print(x)
        else:
            x="Laptop"
            print(x)
        return x
obj = TestClass()
obj.testMethodName("This is arguement")
obj.addingNumbers(3,6)
obj.mulplicationNumbers(3,6)
obj.retStatement(4,5)
obj.retStatement(10,5)
