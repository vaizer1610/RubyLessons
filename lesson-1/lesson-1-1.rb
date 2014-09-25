#Numbers
num1 = 1
num2 = 2.0
num3 = 0b0010

#Strings
string1 = "String"
string2 = 'String' 

#Boolean
bool1 = true
bool2 = false

#Symbols
symbol1 = :symbol_one
symbol2 = :bymbol_two

#Arrays
array1 = []
array2 = [1,2,3,4]
array3 = ["one", "two", "three"]

puts array3[0] #Получение занчения по индексу

#Hashes
hash1 = {:one => "one_value", :two => "two_value"}
hash2 = {"one" => 1, :two => 2}

puts hash2["one"] #доступ к значению хеша по ключу

#conditional structures

puts 1 < 2
#if
if 1 < 2
    puts "two is greater that one"
elsif 2 < 3
    puts "three is greater that two"
else
    puts "something else"
end

# #if
# if 2 < 1
#     puts "two is greater that one"
# elsif 2 < 3
#     puts "three is greater that two"
# elsif 4 < 3
#     puts "three is greater that two"
# elsif 4 < 3
#     puts "three is greater that two"
# elsif 4 < 3
#     puts "three is greater that two"
# else
#     puts "something else"
# end


#unless
unless 1 > 2
    puts "What?! O_o"
else
    puts "That was a nice joke :)"
end

# #unless
# unless !(1 > 2)
#     puts "What?! O_o"
# else
#     puts "That was a nice joke :)"
# end


#If or unless statement after an expression
puts "Print this if 10 is greater that 5" if 10 > 5

if 10 > 5
    puts "Print this if 10 is greater that 5"
end

puts "Print this unless 5 is not greater that 10" unless 5 > 10

#case statement
age =  1
case age
when 0 .. 2
    puts "ребенок"
    puts "baby"
    puts "baby"
when 3 .. 6
     puts "little child"
when 7 .. 12
     puts "child"
when 13 .. 18
     puts "youth"
else
     puts "adult"
end
