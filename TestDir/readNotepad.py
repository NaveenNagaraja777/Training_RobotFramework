class ReadNotePad:

    def readingNotepad(self):
        a = open("D:/PythonExcersiseFiles/Day1PythonProgramming/TestDir/notepad.txt", "r")
        print(a.read())
    def appendingNotepad(self, myAppeningLine):
        a = open("D:/PythonExcersiseFiles/Day1PythonProgramming/TestDir/notepad.txt", "a")
        a.write(myAppeningLine)
        a.close()
    def appendingNumber(self, myAppeningLine):
        for x in range(myAppeningLine):
            a = open("D:/PythonExcersiseFiles/Day1PythonProgramming/TestDir/notepad.txt", "a")
        a.write(str(x))
        a.close()
obj1 = ReadNotePad()
obj1.readingNotepad()
obj1.appendingNotepad("This is Test")
obj1.appendingNumber(5)
