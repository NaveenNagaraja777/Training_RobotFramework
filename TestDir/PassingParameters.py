class School:
    def __int__(self,name, age, rollNo):
        self.name=name
        self.age=age
        self.rollNo=rollNo
obj = School()
obj.__int__("ABCD",12,1)
print(obj.name, obj.age,obj.rollNo)
