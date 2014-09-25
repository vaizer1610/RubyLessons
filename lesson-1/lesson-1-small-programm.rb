while true
	puts "Введите выражение для вычисления: "
	value = gets.chomp
	if value == "exit"
		puts "Пока!"
		break
	end
	splited_values = value.split " "
	result = []
	operation  = ""
	for elem in splited_values
		begin
			tmpElem = Integer(elem)
			result << tmpElem
		rescue Exception => e
			operation = elem
		end
	end

	case operation
		when "+"
			puts "Результат выполнения операции равен #{result[0] + result[1]}"
		when "-"
			puts "Результат выполнения операции равен #{result[0] - result[1]}"
		when "/"
			puts "Результат выполнения операции равен #{result[0] / result[1]}"
		when "*"
			puts "Результат выполнения операции равен #{result[0] * result[1]}"
		else
			puts "Данный оператор не поддрерживается программой!"
	end
end