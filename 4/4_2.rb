# map in this construction is redundant. It's just an artefact from previous exercise,
# because statement says about the same method for both exercises.
def total(numbers)
  numbers.map { |n| n.to_i }.inject { |sum, i| i + sum }
end

puts "Sum of all numbers from 1 to 1000 inclusively equals #{total 1..1_000}"
