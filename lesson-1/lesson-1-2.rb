#Ruby loops

#while statement

while true
    puts "I will print it over and over again!!!"
end


counter = 0

while counter < 5
    puts "Inside the loop counter = #{counter}" ##{counter} is a string interpolation
    counter = counter + 1 #better way to increment counter is   counter += 1
end


#until statement

counter = 0
until counter == 5
    puts "Inside the loop counter = #{counter}"
    counter += 1
end

#for statement

for i in 0..10 # 0..10 is a range
    puts "i = #{i}"
end


#break

counter = 0

while counter < 5
    if counter == 3
        break
    end
    puts "I can print in only three times before break... :("
end


#next

for i in 0..10
    if i < 5
        next
    end
    puts "i = #{i}. I start to count only when i will be equal to 6!"
end

#retry

for i in 0..10
    if i > 5
        retry
    end
    puts "I will count from 0 to 5 over and over again"
end
