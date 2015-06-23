#The prime factors of 13195 are 5, 7, 13 and 29.

#What is the largest prime factor of the number 600851475143 ?
require "Prime"


def prime_factor(integer)
  range = *(1..Math.sqrt(integer))
  prime_numbers = []
  range.each do |number|
    if (integer % number == 0) && number.prime?
      prime_numbers << number
    end
  end
  return prime_numbers
end

p prime_factor(600851475143)