#1. Нужно обрабовать выражения типа 1 + 2 + 3 + 4
#2. При вводе ключевого слова 'once' в запросе нужно выполнить вычисление один раз
# Доп. задание
#3. В случае некорректного ввода пользователя вывести сообщение с описанием поддерживаемых операций. Отрабовать команду 
# "help". 


def comands_input(input_text = "Введите команду:")
	puts input_text
	br = false
	user_input = gets.chomp
	if user_input == "exit"
		br = true
	elsif user_input == "once"
		#puts "Введите выражение для вычисления: "
	end

	return {:input => user_input, :break => br}
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