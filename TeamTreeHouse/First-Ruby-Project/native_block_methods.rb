puts "Hello World"


# Some block calls.
k = 5.downto(2)
puts "-" * 30
k.each do |num|
    puts num
end
puts "-" * 30

puts "Arrays", "-"*30
array = [4,5,6,7,0,-2,-4]
bigger_than_two = array.select { |item| item > 2}
print "Items that are bigger than 2 (.select): ".ljust(60) ,bigger_than_two.to_s.rjust(10)

puts""

not_div_by_three = array.reject {|item| item % 3 == 0}
print "Items that are not divisible by 3 (.reject): ".ljust(60), not_div_by_three.to_s.rjust(10)

puts "\n", "-" * 30