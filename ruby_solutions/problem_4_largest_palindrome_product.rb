#A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.

#Find the largest palindrome made from the product of two 3-digit numbers.

def palindrome?(integer)
  integer.to_s.reverse.to_i == integer ? true : false
end

def three_digit_product
  palindrome = []
  range = *(100..999)
  range.each do |num|
    range.each do |int|
      if palindrome?(num*int)
        palindrome << (num*int)
      end
    end
  end
  return palindrome.sort.last
end

p three_digit_product