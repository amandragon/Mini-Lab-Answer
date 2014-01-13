require './animal.rb'
require './client.rb'

class Shelter
	def initialize(client_list=[], animal_list=[])
		@client_list=client_list
		@animal_list=animal_list
	end

	def add_client(name,number_children,age,number_pets)
		new_client= Client.new(name, number_children, age, number_pets)
		@client_list.push(new_client)
	end

	def add_animal(name,age,gender,species,mult_toys,adoption_status) #creating animals
		new_animal=Animal.new(name, age, gender, species, mult_toys, adoption_status)
		@animal_list.push(new_animal)
	end


	def display_animals
		@animal_list.each do |key, value| 
			puts "#{key}: #{value}" 
		end
	end

	def display_clients
		@client_list.each do |key, value| 
			puts "#{key}: #{value}" 
		end
	end
	
end


happi_tails=Shelter.new
puts "Welcome to Happi Tails! Type anything to get to our command list."

choice=gets.chomp

until choice==("end")
if choice !=(1..6)
puts "Here are our options."
puts "1) Display all animals"
puts "2) Display all clients"
puts "3) Create an animal."
puts "4) Create a client"
puts "5) Adopt an animal"
puts "6) Put animal up for adoption"
puts "Type a number to get to the next screen."
puts "Type 'end' to end the program."
choice=gets.chomp
end

	if choice=="1"
	puts "Here is the list of animals living at our shelter."
	puts "#{happi_tails.display_animals}"
	end
	if choice=="2"
	puts "Here is the list of clients at our shelter."
	puts "#{happi_tails.display_clients}"
	end
	if choice=="3"
	puts "Ok. Please give us your animal's information."
	puts "What is your animal's name?"
	animal_name=gets.chomp
	puts "What is your animal's age?"
	animal_age=gets.chomp
	puts "What is your animal's gender? M or F"
	animal_gender=gets.chomp
	puts "What is your animal's species?"
	animal_species=gets.chomp
	puts "Please list your animal's toys."
	animal_toys=gets.chomp
	adoption_status="available"
	happi_tails.add_animal(animal_name,animal_age,animal_gender,animal_species,animal_toys,adoption_status)
	puts "Thank you! Your animal has been added to our list."
	end


	if choice=="4"
	puts "Ok. Please give me your information."
	puts "What is your name?"
	client_name=gets.chomp
	puts "How many children do you have?"
	client_children=gets.chomp
	puts "How old are you?"
	client_age=gets.chomp
	puts "How many pets do you have?"
	client_pets=gets.chomp
	happi_tails.add_client(client_name,client_children,client_age,client_pets)
	puts "Thank you! You have been added to our client list."
	end

	if choice=="5"
	puts  "Ok. Here is our list of animals:"
	puts "#{happi_tails.display_animals}."
	puts "Please send us an email at happi_tails@woof.org and we'll get back to you shortly!"


	#first display the animal list.
	#figure out how to delete an animal from the animal list
	#then display the animal list.
	end

	if choice=="6"
	puts "Ok. Please give us your animal's information."
	puts "What is your animal's name?"
	animal_name=gets.chomp
	puts "What is your animal's age?"
	animal_age=gets.chomp
	puts "What is your animal's gender? M or F"
	animal_gender=gets.chomp
	puts "What is your animal's species?"
	animal_species=gets.chomp
	puts "Please list your animal's toys."
	animal_toys=gets.chomp
	adoption_status="available"
	happi_tails.add_animal(animal_name,animal_age,animal_gender,animal_species,animal_toys,adoption_status)
	puts "Thank you! Your animal has been put up for adoption." 
	end
end



#take out the keys and list them by number?







