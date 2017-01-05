puts "Enter any number or string"
val= gets.chomp
len=val.length
puts "Number of characters in the #{val} are #{len}"
val1=val.to_i
sum=0
mul=1
dif=0
if val1==0 
	puts "#{val} is a string"
	up=val.upcase
	dwn=val.downcase
	cap=val.capitalize
	puts "Uppercase:#{up} \nLowercase:#{dwn}\nCapitalize:#{cap}"
else
	puts "#{val} is a integer"
	arr=val.split("")
	arr=arr.to_a
	div=1
	arr.each do |x|
		sum+=x.to_i
		mul*=x.to_i
		dif-=x.to_i
		if x!=0
			div/=x.to_i
		else
			div=x.to_i/div
		end
	end
	puts "Addition:#{sum}\nDiff:#{dif}\nMul:#{mul}\nDiv:#{div}"

end


puts "Enter number of times you awnt to print the string in reverse order:"
no=gets.chomp.to_i
no.times{puts "#{val.reverse}"}


puts "The result of split is #{val.split("")}"
puts "The result of split in reverse is #{val.reverse.split("")}"