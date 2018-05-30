@result = ""
File.open("calculator.txt", "r").each do | line |
	 	begin
	 	 	@result += line.chomp + "=" + eval(line).to_s + "\n"
	 	 rescue Exception
	 	 	@result += line.chomp + " invalid"
	 	 end 
end
File.open("calculator.txt", "w").puts @result