# 1. Доделать once. Один раз считает и выходит
# 2.1 Написать лексер
# 2.2 Написать парсер
# 2.3 Написать интерпретатор


def comands_input(input_text = "Введите команду:")
	puts input_text
	br = false
	once = false
	user_input = gets.chomp
	if user_input == "exit"
		br = true
	elsif user_input == "once"
		once = true
	end

	return {:input => user_input, :break => br, :once => once }
end

def parse_input(input)
	splited_user_inputs = input.split " "
	operands = []
	operator  = ""
	for elem in splited_user_inputs
		begin
			tmpElem = Integer(elem)
			operands << tmpElem
		rescue Exception => e
			operator = elem
		end
	end

	return {:operands => operands, :operator => operator}
end

def calculate(operation, operands)
	result = 0
	for operand in operands
		result = operation.call(result, operand)
	end
	result
end

def execute(operator, operands)
	result = nil
	tmpResult = 0
	case operator
		when "+"
			result = calculate(Proc.new {|a,b| a + b}, operands)
		when "-"
			result = calculate(Proc.new {|a,b| a - b}, operands)	
		when "/"
			result = calculate(Proc.new {|a,b| a / b}, operands)	
		when "*"
			result = calculate(Proc.new {|a,b| a * b}, operands)	
		else
			result
	end
end

flag = true
while flag
	input = comands_input("Введите выражение для вычисления: ")
	parsed_input = parse_input(input[:input])
	if input[:break]
		puts "Пока!"
		break
	end
	result = execute(parsed_input[:operator], parsed_input[:operands])
	if result != nil
		puts "Результат #{result}"
	end
end