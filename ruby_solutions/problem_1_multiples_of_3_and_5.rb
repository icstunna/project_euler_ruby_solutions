#If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.

#Find the sum of all the multiples of 3 or 5 below 1000.

def multiple_of_3_and_5(integer)
  conditional_numbers = []
  range = *(0...integer)
  range.each do |number|
    if number % 3 == 0 || number % 5 == 0
      conditional_numbers.push(number)
    end
  end
  return conditional_numbers.inject { |sum, n| sum + n}
end

p multiple_of_3_and_5(1000)