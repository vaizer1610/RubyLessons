def rec_add(n, acc = 0)
	if n < 0
		return acc
	end
	acc = acc + n
	rec_add(n - 1, acc)
end

puts rec_add(2)
