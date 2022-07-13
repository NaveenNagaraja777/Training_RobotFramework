#My First Python Program

print("Welcome to python")

#Pyhton Variable
a=5 # a is type of integer variable
z="python" # z type of string variable

print(a)
print(z)

print(type(a))
print(type(z))

#Type Casting
x=float(2)

print(x)

b=str(3.0)
print(b)

#Python String CHaracters
d="Hello World"
print(d)
print(d[0])
print(d[6])
print(len(d))
myVoterID = "123233123"
print(myVoterID)
print("My Voter id is : "+str(len(myVoterID)))

#Searching partial text in complete text
text ="Welcome to Python1"
search_text="Python2"
print(search_text in text)

#python operations
#Arithmatic opertaion
print(10+10)
print(10*2)
print(30-20)
print(20/5)
print(7 % 3)
print(8 % 3)
print(9 % 3)

#Assignmnet operators
b = 1;
a+= 10;# a= a+10;
print(a)

#comparision operators
x=40
y=20
z=50

if(x>y):
    print("x is greater than y")
if(x==y):
    print("X is equals to y")
if(x<y):
    print("X is less than y")

if(x>y):
    print("x is greater than y")
elif(x<y):
    print("x is less than to y")
else:
    print("x is equals to y")

#One line if statement
if(x>y): print("x is greater than y")
elif(x<y):print("x is less than y")
else:print("x is equals to y")

if(x>y or x>z):print("X is greater than y and X is greater than z")
elif(x<y or x>z):print("x is less than y and greater than z")
else:print("Out of range")

if(x>y and x>z):print("X is greater than y and X is greater than z")
elif(x<y and x>z):print("x is less than y and greater than z")
else:print("Out of range")

#While loop

#for loop

cars =["Hyundai","Honda","Maruthi","Vw"]
for car in cars:
    print(car)

for a in "Naveen":
    print(a)

for car in cars:
    print(car)
    if car=="Honda":
        print("Honda is present")
        break
for car in cars:
    print(car)
    if car=="Honda":
        print("Honda is present")
        continue
for a in range(3):
    print(a)
for a in range(2,5):
    print(a)
for a in range(2,15,3):
    print(a)

#List
print(cars)
#Print all the brands in cars
for car in cars:
    print(car)

#Length in a list, Get List
print(len(cars))

#Type
print(type(cars))

#Getting a perticular item in the list
print(cars[0])
print(cars[3])

#Updating the list
cars[1] = "BMW"
print(cars)

#Updating the range in the list
cars[2:3]=["Test1" , "Test2"]
print(cars)

#Adding in to the list
cars.append("GM")
print(cars)

#Removing from the list
cars.remove("Test2")
print(cars)

#Sorting

rollNo = [22,5,46,0,32,22,100,78]
rollNo.sort()
print(rollNo)

#Tuples
carsTup =("Hyundai","Honda","Maruthi","Vw")
print(carsTup)

#Length of tuple
print(len(carsTup))

#Change the values in a tuple

myCar = list(carsTup)
myCar[2]="TupleCar"

carsTupNew=tuple(myCar)
print(carsTup)
print(carsTupNew)

#Adding in tuple
myCar.append("TestTuple")
carsTupNew = tuple(myCar)
print(carsTupNew)

#Looping in tuple
for ca in carsTupNew:
    print(ca)

#Dictionary
myFourWheelers = {"Name" : "BMW","Type" : "Automatic","Wheel" : 4,"Seaters":5, "Seaters":6}
print(myFourWheelers)
print(myFourWheelers["Seaters"])
#Length
print(len(myFourWheelers))
#Add new item
myFourWheelers["Gears"] = 7
print(myFourWheelers)

#Update item
myFourWheelers["Wheel"] = 6
print(myFourWheelers)

#Remove Item
myFourWheelers.pop("Seaters")
print(myFourWheelers)

for x in myFourWheelers:
    print(x)
    print(myFourWheelers[x])
for x,y in myFourWheelers.items():
    print(x,y)