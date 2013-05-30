def reverse_each_word(sentence)
	words = sentence.split(' ')
	y = []
	words.each { |x|
		y << x.reverse
	}
	y.join(" ")
end

def square(number)
	number*number
end

def cube(number)
	square(number)*number
end


#print out all # between 1-100, if mult 3 fizz, if mult 5 buzz, if mult 10 fizzbuzz

def fizzbuzz
	y = (1..100)
	y.each { |x|
		if x % 3 == 0 && x % 5 == 0
			puts "fizzbuzz"
		elsif x % 3 == 0
			puts "fizz"
		elsif x % 5 == 0
			puts "buzz"
		else
			puts x
		end
	}
end

#calcit - calculator that can add, subtract, multiply, divide
# advanced - exponents and square roots

def add(x,y)
	x+y
end

def subtract(x,y)
	x-y
end

def multiply(x,y)
	x*y
end

def divide(x,y)
	x/y
end

def expo(x,y)
	x**y
end

def root(x,y)
	x**(1/y)
end

def standard
	puts "which operator? add, subtract, multiply, divide"
	operator = gets.chomp.downcase
	puts "first number"
	first = gets.chomp.to_f
	puts "second number"
	second = gets.chomp.to_f
	if first == 0.0 || second == 0.0
		puts "Sorry you need to put in numbers"
		standard
	else
		case operator
		when "add"
			add(first,second)
		when "subtract"
			subtract(first,second)
		when "multiply"
			multiply(first,second)
		when "divide"
			divide(first,second)
		else
			puts "Please try again"
			standard
		end
	end
end

def advanced
	puts "which operator? exponent, squareroot"
	operator = gets.chomp.downcase
	puts "first number"
	first = gets.chomp.to_f
	puts "second number"
	second = gets.chomp.to_f
	if first == 0.0 || second == 0.0
		puts "Sorry you need to put in numbers"
		advanced
	else
		case operator
		when "exponent"
			expo(first, second)
		when "root"
			root(first, second)
		else
			puts "Please try again"
			advanced
		end
	end
end

def calcit
	puts "Welcome to the CalcIt"
	puts "Enter '1' if you want standard"
	puts "Enter '2' if you want advanced"
	input = gets.chomp.to_i
	case input
	when 1
		standard
	when 2
		advanced
	else
		puts "Please try again"
		calcit
	end
end

def name_tag
	puts "what is your first name: "
	first = gets.chomp
	puts "what is your last name: "
	last = gets.chomp
	puts "what is your gender: "
	gender = gets.chomp
	puts "what is your age: "
	age = gets.chomp.to_i
	if age < 19 && gender == "female"
		puts "Miss #{first} #{last}"
	elsif age >= 19 && gender == "female"
		puts "Mrs #{first} #{last}"
	else
		puts "Mr #{first} #{last}"
	end
end
