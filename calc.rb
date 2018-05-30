@result = ""
File.open("calculatorrb.txt", "r").each do | line |
	 	begin
	 		if line =~ /[A-Za-z]/
	 			@result += line.chomp + " invalid\n"
	 		else
	 	 		@result += line.chomp + "=" + eval(line).to_s + "\n"
	 	 	end
	 	rescue Exception
	 	 	@result += line.chomp + " invalid\n"
	 	end 
end
File.open("calculatorrb.txt", "w").puts @result