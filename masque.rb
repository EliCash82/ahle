require 'colorize'

class Game

	def initialize(start)
		@start =start
	end

	def prompt
		print "> ".white
	end

	def play
		next_room = @start

		while true
			puts "\n\n"
			room = method(next_room)
			next_room = room.call()
		end
	end

	def death()
		Process.exit
	end


	def intro
		puts ""
		puts ""
		puts ""
		puts ""
		puts "************Anderson's HyperLit Engine************".white
		puts ""
		puts "" 
		puts "#######                  #     #                                                                            ".blue      
		puts "   #    #    # ######    ##   ##   ##    ####   ####  #    # ######     ####  ######    ##### #    # ###### ".light_blue
		puts "   #    #    # #         # # # #  #  #  #      #    # #    # #         #    # #           #   #    # #      ".blue
		puts "   #    ###### #####     #  #  # #    #  ####  #    # #    # #####     #    # #####       #   ###### #####  ".light_blue
		puts "   #    #    # #         #     # ######      # #  # # #    # #         #    # #           #   #    # #      ".blue
		puts "   #    #    # #         #     # #    # #    # #   #  #    # #         #    # #           #   #    # #      ".light_blue
		puts "   #    #    # ######    #     # #    #  ####   ### #  ####  ######     ####  #           #   #    # ###### ".blue
		puts ""
		puts ""
		puts "######                   ######                             ".red
		puts "#     # ###### #####     #     # ######   ##   ##### #    # ".light_red
		puts "#     # #      #    #    #     # #       #  #    #   #    # ".red
		puts "######  #####  #    #    #     # #####  #    #   #   ###### ".light_red
		puts "#   #   #      #    #    #     # #      ######   #   #    # ".red
		puts "#    #  #      #    #    #     # #      #    #   #   #    # ".light_red
		puts "#     # ###### #####     ######  ###### #    #   #   #    # ".red
		puts ""
		puts ""
		puts "Engine Narrative 1.0.0".white
		puts "Copyright 2014 by Anderson Evans".white
		puts ""
		puts "____________________________________________________________________________________________________________".blue
		puts ""
		puts ""
		puts "You are Prince Prospero.  Your kingdom is diminishing from the spread of the plague, dubbed 'The Red Death'".white
		puts "You don't mind, because you know you are safe in your well guarded abbey.  In fact you are in the mood for".white
		puts "a celebration.  You've invited all of your richest friends over, and you begin your festivities in your blue".white
		puts "room.  The only direction you can go is WEST.  You can talk to PARTY GUEST 1 or PARTY GUEST 2.".white

		prompt()
		action = gets.chomp

		if action == "go west" or action == "west" or action == "WEST"
			puts "You are in the purple room".magenta
			return :death

		elsif action == "PARTY GUEST 1" or action == "guest 1"
			puts "Prince, you always throw the best parties!  But did you notice that strange character?".light_blue
			return :death

		elsif action == "PARTY GUEST 2" or action == "guest 2"
			puts "This place is dead anyway.".blue 

		else
			puts "You die".red
			return :death
		end
	end
end

a_game = Game.new(:intro)
a_game.play()


