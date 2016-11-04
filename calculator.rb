class Calculator

	def initialize
		# puts 'New calc'
	end

	def add(x, y)
		x + y
	end

	def sub(x, y)
		x - y
	end

	def divide(x, y)
		return "Not allowed" if y.zero?
		x/y
	end

	def reset
		puts 'reset'
	end
end