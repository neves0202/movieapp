#!/usr/bin/ruby -w

###############################################################################
#
# Back-End Web Development - Homework #1
#
# Secret Number
# The purpose of the game is to have players guess a secret number from 1-10.
#
###############################################################################

# Setting up the Intro

puts ""
puts "Hi, welcome to the game"
puts ""
puts "#################### RANDOM NUMBERS ####################"
puts ""
puts "Do you wish to continue, type yes or no"

# Getting the name of the Player

answer = gets.chomp
if answer == "yes"
	puts ""
	puts "Please enter your name"
	name = gets.chomp
	puts ""
	puts "Hi #{name}"
	sleep 1
  	puts ""
  	puts "Here are some rules of the game"
  	puts "1. You must guess a number between 1 and 10"
  	puts "2. You have 3 tries to do so"
  	sleep 1
  	answer = "incorrect"
  	puts ""
  	puts "Please think of a random number between 1 to 10 and enter"
	count = 3

# Asking the player to guess the number. Then run this in a loop for 3 times

while count > 0
  	 	num = (1 + rand(10)).to_s
  	 	ran = gets.chomp
  	 	puts ""
  			if ran == num
        		puts "Congratulation #{name} you have guessed the number. It was #{num}"
  		  		break
  			else
  		  		puts "Better luck next time."
  		  		count -=1
  		  		if count > 0
  		  			puts "You have #{count} guesses before the game is over. Enter another number"
        			else
        			puts "You have lost the game. The random number was #{num}"
        			end
  			end
end
end
puts ""
sleep 1
puts "#################### GAME OVER ####################"


# Asking the player to guess the number. Then run this in a loop for 3 time

###############################################################################
