class User

	def initialize(firstName, lastName)
		@firstName = firstName
		@lastName = lastName
	end

	attr_reader :firstName, :lastName
	attr_accessor :email, :description, :phone

	def get_full_name
		"#{@firstName} #{@lastName}"
	end
end


class EmailSender

	def initialize(greeting, sing)
		@greeting = greeting
		@sing = sing
	end

	def send_email(user)
		puts "Sended to #{user.email}\n\n#{@greeting}, #{user.get_full_name}, blah blah blah! \n\n#{@sing}"
	end
end


user = User.new("Sergey", "Golovin")
user.email = "test@mail.com"

sender = EmailSender.new("Hi", "Good Sender")

sender.send_email(user)