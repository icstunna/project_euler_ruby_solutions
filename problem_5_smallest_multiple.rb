#2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.

#What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?

#ANSWER == 232,792,560

require "Prime"

range = *(1..20)

def integer_divisors(int, divisor, hash = Hash.new(0))
  divisor_frequency = hash
  if int == 1
    return divisor_frequency
  elsif divisor == 1
    divisor_frequency[divisor] += 1
    divisor = next_prime(divisor)
    integer_divisors(int, divisor, divisor_frequency)
  elsif int % divisor != 0
    divisor = next_prime(divisor)
    integer_divisors(int, divisor, divisor_frequency)
  else
    int = int / divisor
    divisor_frequency[divisor] += 1
    integer_divisors(int, divisor, divisor_frequency)
  end
end

def next_prime(divisor)
  divisor = divisor + 1
  if divisor.prime?
    return divisor
  else
    next_prime(divisor)
  end
end

p integer_divisors(20,1)