#!/usr/bin/ruby -w

puts "Hi Welcome to the game"
puts "#################### RANDOM NUMBERS ####################"
puts "Do you wish to continue, type yes or no"
answer = gets.chomp
if answer == "yes"
	puts "Please enter your name"
	name = gets.chomp

	puts "Hi #{name}"
	sleep 1
  	puts ""
  	puts "Here are some rules of the game"
  	puts "1. You must guess a number between 1 and 10"
  	puts "1. You have 3 tries to do so"
  	sleep 1
  	val = 1
  	answer = "incorrect"
  	if answer == "incorrect"
  	num = rand(6)
  	puts ""
  	puts "Please think of a random number between 1 to 10 and enter"
  		input = gets.chomp
  		if num == input

  		puts "Congratulation #{name} you have guessed the number in the #{val}st try"
  		answer = "correct"
  		else
  		puts "Better luck next time. Try again."
  		end

	else 
	puts "Thank You"
	puts "#################### GAME OVER ####################"
	end
end

