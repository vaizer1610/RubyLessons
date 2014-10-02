#functions

# def fun1
# 	puts "Hello world"
# end

# def fun2(name)
# 	puts "Hello #{name}"
# end

# def fun3 (firstName, lastName)
# 	puts "Hello #{firstName} #{lastName}"
# end

# def fun4 (firstName = "John", lastName = "Doe")
# 	puts "Hello #{firstName} #{lastName}"
# end

#classes

#without constructor
# class User
# 	#getters
# 	def firstName
# 		@firstName
# 	end

# 	def lastName
# 		@lastName
# 	end

# 	#just a method
# 	def fullName
# 		"#{@firstName} #{@lastName}"
# 	end

# 	#setters
# 	def firstName=(firstName)
# 		@firstName = firstName
# 	end

# 	def lastName=(lastName)
# 		@lastName = lastName
# 	end
# end


# class User
# 	def initialize(firstName, lastName)
# 		@firstName = firstName
# 		@lastName = lastName
# 	end

# 	def firstName
# 		return @firstName
# 	end

# 	def lastName
# 		return @lastName
# 	end

# 	def firstName=(firstName)
# 		@firstName = firstName
# 	end

# 	def lastName=(lastName)
# 		@lastName = lastName
# 	end

# 	def fullName
# 		return "#{@firstName} #{@lastName}"
# 	end

# 	def hello(greeting)
# 		puts "#{greeting} #{fullName}"
# 	end
# end

# user1 = User.new("John", "Doe")
# user1.hello("Привет")
# puts user1.firstName
# puts user1.lastName

# user1.firstName=("Sergey")
# user1.lastName = "Golovin"

# puts user1.firstName
# puts user1.lastName
# user1.firstName = "John"
# user1.lastName = "Doe"
# puts user1.fullName


#with constructor
# class User1
# 	#constructor
# 	def initialize(firstName, lastName)
# 		@firstName = firstName
# 		@lastName = lastName
# 	end

# 	#getters
# 	def firstName
# 		@firstName
# 	end

# 	def lastName
# 		@lastName
# 	end

# 	def fullName
# 		"#{@firstName} #{@lastName}"
# 	end
# end

# user2 = User1.new("Sam", "Serious")

# puts user2.fullName

#with attr_reader and attr_writer
class User2
	#constructor
	def initialize(firstName, lastName)
		@firstName = firstName
		@lastName = lastName
	end

	#getters
	attr_reader :firstName, :lastName, :email, :phone
	#setters
	attr_writer :firstName, :lastName, :email, :phone

	def fullName
		"#{@firstName} #{@lastName}"
	end
end

user1 = User2.new("Sergey", "Golovin")
puts user1.fullName
user1.email = "email@mail.com"
user1.phone = "+700000000"

puts user1.phone


#with attr_accessor
class User3
	#constructor
	def initialize(firstName, lastName)
		@firstName = firstName
		@lastName = lastName
	end

	attr_accessor :firstName, :lastName, :email, :phone

	def fullName
		"#{@firstName} #{@lastName}"
	end
end
