PI = 3.141592654

print "Input new radius: "
radius = gets.chomp.to_f
radius = 0 if radius < 0

circumference = 2 * PI * radius
puts "Circuference of radius #{radius} is equal #{circumference}"
