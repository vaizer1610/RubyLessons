class Token
	def initialize(value)
		@value = value
	end

	attr_reader :value
end

class OperandToken < Token
end

class OperatorToken < Token
end

class Parser

	def initialize
		@numbers = ["0","1","2","3","4","5","6","7","8","9"]
		@operators = ["+","-","/","*"]
		@tokens = []
	end

	attr_reader :tokens

	NUM = 0
	OP = 1

	def parse(source)
		accumulateToken = ""
		currentTokenType = nil
		tmpSource = source.split " "

		for char in tmpSource
			if @numbers.include? char
				if currentTokenType == NUM
					accumulateToken += char
				else
					currentTokenType = NUM
					if accumulateToken != ""
						@tokens << OperatorToken.new(accumulateToken)
						accumulateToken = char
					else
						accumulateToken += char
					end
				end
			elsif @operators.include? char
				if currentTokenType == OP
					accumulateToken += char
				else
					puts char
					currentTokenType = OP
					if accumulateToken != ""
						@tokens << OperandToken.new(accumulateToken)
						accumulateToken = char
					else
						accumulateToken += char
					end
					
				end
			end
		end

		if currentTokenType == OP
			@tokens << OperatorToken.new(accumulateToken)
		else
			@tokens << OperandToken.new(accumulateToken)
		end
	end
end

parser = Parser.new

parser.parse("1 + 3 * 2 / 10")
p parser.tokens