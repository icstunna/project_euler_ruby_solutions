#The sum of the squares of the first ten natural numbers is,

#1^2 + 2^2 + ... + 10^2 = 385
#The square of the sum of the first ten natural numbers is,

#(1 + 2 + ... + 10)^2 = 552 = 3025
#Hence the difference between the sum of the squares of the first ten natural numbers and the square of the sum is 3025 − 385 = 2640.

#Find the difference between the sum of the squares of the first one hundred natural numbers and the square of the sum.

first = 1
last = 100

#ANSER = 25,164,150

def parameters(starting_int, ending_int)
  range = *(starting_int..ending_int)
  return range
end

def sum_of_squares(array)
  squares = array.map! do |integer|
    integer ** 2
  end
  sum = squares.inject(:+)
  return sum
end

def square_of_sum(array)
  sum = array.inject(:+)
  square = sum ** 2
  return square
end

def difference(starting_int, ending_int)
  range_array = parameters(starting_int, ending_int)
  difference = square_of_sum(range_array) - sum_of_squares(range_
end

# p sum_of_squares(parameters(first, last))
# p square_of_sum(parameters(first, last))
# p square_of_sum(parameters(first, last))
p difference(first, last)