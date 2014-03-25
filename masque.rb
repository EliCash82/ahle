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
		puts "Based on the short story by Edgar Allan Poe (1842)".yellow
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
			puts "You walk into the purple room".magenta
			return :purple_room

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

	def purple_room
		puts "IIIIIIIIII7777IIIIIIIIIIIIIIIIIII:~=.::,,=~=:~~~~:?IIIIIIIIIIIIIIIIIIIIIIIIIIII7".magenta
		puts "IIIIIIIII77IIII7IIIIIIIIIIIII??=::,,,:+:,,,.,,,,:,~~??IIIIIIIIIIIIIIIIIIIIIIIII7".light_magenta
		puts "IIII7III777IIIIIIIIIIIIIIII+=~~~~,~=.,,,,:~~+:,.::==~~+IIIIIIIIIIIIIIIIIIIIIIII7".magenta
		puts "IIIIIIIII7IIIIIIIIIIIIIIII+,=:,,=+~:::++I?===,:,~,,~~:~IIIIIIIIIIIIIIIIIIIIIIII7".light_magenta
		puts "II7IIIIIIIIIIIIIIIIIIIIIII=,.::.~:~~=+III~,:.~I~+??+~,.,IIIIIIIIIIIIIII7IIIIIII7".magenta
		puts "7IIIIIIIIIIIIIIIIIIIIIIII~,:,,::+I?I7~+:==?III?I??????~~,IIIIIIIIIIIIIIIIIIIIII7".light_magenta
		puts "7IIIIIIIIIIIIIIIIIII??II?+,.:~::II?IIIIIIIIIII???+??=+I:,?IIIIIIIIIIIIIIIIIIIII7".magenta
		puts "7IIIII7IIII?IIIIII???I??I?..~,=???II?IIIIIIIII?????+++++==I?IIIIIIIIIIII7I777777".light_magenta
		puts "7II777IIIII?IIII?I????II~+:,,..?+????IIIIIIII???++?++=++:,~:?IIIIIIII7IIIII77II7".magenta
		puts "777IIIIIII?I??I?I????II?+.+:,:,=???IIIIIIIIIII?????I++~~~:=~+IIIIIIIIIIIIII77II7".light_magenta
		puts "7II77IIIIII??I??III?+?+~~:=::.~??I?I?IIIIIII????I????+==::I=?III7IIIIIIIIII7I7I7".magenta
		puts "II7IIII?I?I??I+?I+I??:,~.?:,.,=??????:=~~:~,~I??++~~~:+~,~I=IIIIIIIIIIIIIIII7II7".light_magenta
		puts "77I7IIIIIII????I?+I+I?::.:,::,==??+==,7.:,~~~???+,,::,~~:~~:?IIIIIIIIIIIIIIIII7 ".magenta
		puts "7IIIIIIIIII?+???I??I?I?:,,:.~,:???I+??~?++?I?+II.:I,.:=~,,==IIIIIIIIIIIIIIIIII7 ".light_magenta
		puts "7IIIIIIII?I??I+???I+?I?.:.:.,,~????IIII??+~?++?I:++??:=::~:~?IIIIIIIIIIIIIIIII77".magenta
		puts "IIIIIII?I???I???=I++I+?+,,:::=+?+++?III???I????I+++?++=..:~=IIIIIIIIIIIIIIIIII77".light_magenta
		puts "77IIII?I?I++I+??+I=+?=?+,:,???++++?+IIIIII?+?+??I~+?++~:IIII?IIIIIIIIIIIIIIIII77".magenta
		puts "IIIIIIII??I???+??=?=??+?=,,:??I+???+?????=?+???I?+++=+~I?III???I?IIIIIIIIIIII7I7".light_magenta
		puts "IIIIII?I+?I+I+?+++?+?=+?+~::,,:?+?????+??II7,,==,+=+==~???I?I?I?IIIIIIIIIIIIIII7".magenta
		puts "7IIII???+?+??+I+??++=+??II?,,,:=+???????+:=,,,:,,:==~~I?I?I???I??IIIIIIIIIIIIII7".light_magenta
		puts "7IIIIII+II???II++++?+?++I?+?~:,+++++?+???:,,...::=:~~?????I?????I?IIIIIIIIIIIII7".magenta
		puts "IIIII??I??++I=??+I~=?++=+?+?I~.I=??+++?+I????+=~=~=~~??????I?????II?IIIIIIIIIII7".light_magenta
		puts "IIIIIII??I?I?+????++++?++?+?+:?+++==?++???????+++===????I??I+?++??II?IIIIIIIIII7".magenta
		puts "IIIIIII?I?+?++?+?++?=+?=I+??=II+++=~~~++++???????=:~???????I????????I?IIIIIII7I7".light_magenta
		puts "IIIIIII???I?+?=??=?++?=?+=?+~IIII+++~=~==+++++=?~,?+???????+????????I?I?IIIIIII7".magenta
		puts "IIII????++I+I++?+++=?++++++:,II?III=+~+=::=~~:::,:???+??+I++?+????+????I?IIIIII7".light_magenta
		puts "IIIII?????+++=?=?+??+??+?~..,.IIII?III+=~~:::=:::+=??+????+????I+???IIIIIIIIIII7".magenta
		puts "IIIII???I+I+???+++?++?+:,:.=,.,?III??I?I?==~=~~,.:+=??+?+??++???+??????IIIIIIII7".light_magenta
		puts "IIIIII???+I+??+?++++=~.~,,,,,,,.,~I??III,.,:..,:.~.,I+???????????I+????IIIIIIII7".magenta
		puts "IIII?I?????+I+??+?+.::,:..~:.,,~~,.,.7+.:...,,.:,.:::~?+??+I???????II?IIIIIIIII7".light_magenta
		puts "IIII??I?I?????=I?,~,,:,~,.,=,..::,,,...,.:+,,,~.....,,,?+????+?????II?IIIIIIIII7".magenta
		puts "IIIIII?I?+????=:.:,::..::,,:.:,~~:,.,,,=,.:=.,,::~..,:+~~:?I???+?????IIIIIIIIII7".light_magenta
		puts "IIIII?I?I??I=,.::,:.,~..,,,:~,~~:.~,::,..?I~,..I:..:.~.:::=,~??+??????IIIIIIIII7".magenta
		puts "IIIIIII?I=,,..,=,,:.:,.::.,::,,:.,:.,.::,,??~~:.,:,..,,,~,=:=,.,?+???IIIIIIIIII7".light_magenta
		puts "IIIIII~.,..,:.::,~:.::,..,:..,.,,~::=:,,:~:,:,:..,:,,,~,,.,.:,,,,~??IIIIIIIIIII7".magenta
		puts "III:=,:~,::,,......,~,.::.,,,.~.,,,,==~,,..,.,,,:~,,:,,,,:..,,,..,+I?IIIIIIIII77".light_magenta
		puts "7++~::.:=,,=,:~~=:.,.:.:.:,,,:.,::..:..:,.:.,:,..,:,:,,:,:.:,,~,~:??IIIIIIIIII77".magenta
		puts "I~++=~:=,:=~::,.,,,,,:~,,.::::,,...,:,,,,,,=...:.....+:,,,:,~~,~:,+?IIIIIIIII77 ".light_magenta
		puts "7I??~,~:~,,,==~,,,,,,,.,..,,,.::..,,...,:~,::,:I,=.:...,.:,,,,,.,,~?IIIIIIIIII7 ".magenta
		puts "77=~+?==~~,,:~~==:~,:,::,,.,,:,:.~,,::,=,,.,,:.II~:.:.,:,~:.=,,,.::+=IIIIIII7777".light_magenta
		puts "I7I??++~=+~:~:,==:~~~:::,,::,,:=:,,~,:,::,.,~~.+II=:~,~:.:...=::~,:,:?IIIIII7777".magenta
		puts "777??++??++~?::~,=:=:~:::~:::,~=:.~,,.:~,..,:::,I??:.:,~,,..:=+~,.::+=IIIII77777".light_magenta
		puts "7III????++=:+~,,:~=~~~:,,..,,.,~::,~=:=~..,.,,,,III?,~~~~:.,::+=,.,~=~IIIII77777".magenta
		puts "7III?=+=======?=~:,:,~:,~~::=::~=::=,:~::,.,,:,:IIII?:=:=,~,,.~~~=:,+:IIIII777I7".light_magenta
		puts ""
		puts "THE PURPLE ROOM".white 
		puts "You are now in the purple room.".light_magenta
		puts "lorem ipsum lorem ipsum".light_magenta
		puts "lorem ipsum lorem ipsum".light_magenta
		puts "lorem ipsum lorem ipsum".light_magenta
		puts "lorem ipsum lorem ipsum".light_magenta
		return :death
 end
end

a_game = Game.new(:intro)
a_game.play()


