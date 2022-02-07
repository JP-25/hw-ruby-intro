# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  # the code from the ruby introduction from the help tutorials class materials
  if arr.length == 0
    return 0
  else
    return arr.inject(0, :+)
  end
end

def max_2_sum arr
  # YOUR CODE HERE
  # check array length first
  if arr.length == 0
    return 0
  elsif arr.length == 1
    return arr[0]
  else
    # sort to get the two maximum value
    num1 = arr.sort[-2]
    num2 = arr.sort[-1]
    ans = num1 + num2
    return ans
  end
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  # create a dictionary to program, check the remaining sum
  d = {}
  for i in 0..(arr.length - 1)
    if d.key?(arr[i])
      return true
    end
    d[n - arr[i]] = i
  end
  return false
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  # string implementation
  return "Hello, " + name.to_s
end

def starts_with_consonant? s
  # YOUR CODE HERE
  # check if it is alphabet or empty
  if s.length == 0
    return false
  end
  # ord->A is 65, and ord->Z is 90
  # ord(a) is 97, ord(z) is 122
  if s.upcase[0].ord < 65 or s.upcase[0].ord > 90
    return false
  end
  # # then any letter start without "AEIOU" returns true 
  if "AEIOU".include?(s.upcase[0])
    return false
  else
    return true
  end
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  if not(s.is_a? Integer) and !(s =~ /\A[-+]?[0-9]+\z/)
    return false
  end
  # convert it to integer then check if it can be divided by 4
  # if s == "0"
  #   return false
  # end
  # convert to integer
  return s.to_i % 4 == 0
end

# Part 3

class BookInStock
# YOUR CODE HERE
  attr_accessor :isbn
	attr_accessor :price
	def initialize (isbn, price)
		@isbn = isbn
		@price = price
		if @isbn.empty? || price <= 0
			raise ArgumentError
		end
	end
	
	def price_as_string
    format("$%.2f", @price)
  end
end
