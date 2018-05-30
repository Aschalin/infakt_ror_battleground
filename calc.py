result = ""
myFile = open("calculatorpy.txt", "r")
for line in myFile:
	try:
			if (line.isupper() or line.islower()):
				result += line.strip() + "invalid\n"
			else:
    				result += line.strip() + "=" + str(eval(line)) + "\n"
    	except:
    		result += line.strip() + "invalid\n"
myFile = open("calculatorpy.txt", "w")
myFile.write(result)
