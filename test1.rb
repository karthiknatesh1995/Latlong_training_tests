puts "Enter any number or string"
val= gets.chomp
val1=val.to_i
if val1==0 
	puts "#{val} is a string"
else
	puts "#{val} is a integer"
end
