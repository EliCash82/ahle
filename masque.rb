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
		puts "  ************Anderson's HyperLit Engine************".white
		puts ""
		puts "" 
		puts "  #######                  #     #                                                                            ".blue      
		puts "     #    #    # ######    ##   ##   ##    ####   ####  #    # ######     ####  ######    ##### #    # ###### ".light_blue
		puts "     #    #    # #         # # # #  #  #  #      #    # #    # #         #    # #           #   #    # #      ".blue
		puts "     #    ###### #####     #  #  # #    #  ####  #    # #    # #####     #    # #####       #   ###### #####  ".light_blue
		puts "     #    #    # #         #     # ######      # #  # # #    # #         #    # #           #   #    # #      ".blue
		puts "     #    #    # #         #     # #    # #    # #   #  #    # #         #    # #           #   #    # #      ".light_blue
		puts "     #    #    # ######    #     # #    #  ####   ### #  ####  ######     ####  #           #   #    # ###### ".blue
		puts ""
		puts ""
		puts "  ######                   ######                             ".red
		puts "  #     # ###### #####     #     # ######   ##   ##### #    # ".light_red
		puts "  #     # #      #    #    #     # #       #  #    #   #    # ".red
		puts "  ######  #####  #    #    #     # #####  #    #   #   ###### ".light_red
		puts "  #   #   #      #    #    #     # #      ######   #   #    # ".red
		puts "  #    #  #      #    #    #     # #      #    #   #   #    # ".light_red
		puts "  #     # ###### #####     ######  ###### #    #   #   #    # ".red
		puts ""
		puts "  Based on the short story by Edgar Allan Poe (1842)".yellow
		puts "  Engine Narrative 1.0.0".white
		puts "  Copyright 2014 by Anderson Evans".white
		puts ""
		puts "____________________________________________________________________________________________________________".blue
		puts ""
		puts ""
		puts "  You are Prince Prospero.  Your kingdom is diminishing from the spread of the plague, dubbed 'The Red Death'".white
		puts "  You don't mind, because you know you are safe in your well guarded abbey.  In fact you are in the mood for".white
		puts "  a celebration.  You've invited all of your richest friends over, and you begin your festivities in your blue".white
		puts "  room.  The only direction you can go is WEST.  You can talk to PARTY GUEST 1 or PARTY GUEST 2.".white

		prompt()
		action = gets.chomp

		if action == "go west" or action == "west" or action == "WEST"
			puts "  You walk into the purple room".magenta
			return :purple_room

		elsif action == "PARTY GUEST 1" or action == "guest 1"
			puts "  Prince, you always throw the best parties!  But did you notice that strange character?".light_blue
			return :death

		elsif action == "PARTY GUEST 2" or action == "guest 2"
			puts "  This place is dead anyway.".blue
			return :death 

		else
			puts "You die".red
			return :death
		end
	end

	def purple_room
		puts ""		
    puts "                                      7.7.7..                                      ".magenta
		puts "                                   ...   7 7. .                                    ".magenta
		puts "                                 ,.   . ..7,7  . 7                                 ".magenta
		puts "                              7+,7 7=.      .7.7  .7                               ".magenta    
		puts "                            7+~  ..   7= .7    .., 7..7                            ".magenta    
		puts "                           ..  ..   7.?:  7..     I=  .7                           ".magenta    
		puts "                         .7  ..   ? ,       7. .        7I                         ".magenta    
		puts "                        7 7 ..7  . .   :~7 ?=   7..   ~, 7.                        ".magenta     
		puts "                      7 , 7.   7 .   .7.?I7 . .    .?   .. 7~.                     ".magenta     
		puts "                     77  ..  7++   . ?77. .   .7.7  77.   7  .                     ".magenta     
		puts "                    :.      ..   . . 7... .+..? .7.   .    .~ 7 7                  ".magenta     
		puts "                   77 ..   7   7?. +.,. 7  77 .  777+   ..7 7   ..                 ".magenta    
		puts "                 .77 ..  ..7  .7. .7...7..=  7.,7  . .7  .I   .  ?.                ".magenta     
		puts "                .  77+  .7  77.  .:7+7,..... ...7.7. 7 +   7   .. .,               ".magenta     
		puts "               ~,     7I  7. ~....I . .......   . . I.. .   ,7  ..  .              ".magenta     
		puts "              .. ,    .   .~ + .7.. ..........,  .7+ ,  .7   .?  .. 7?             ".magenta     
		puts "             ..      .   7.7?. 7.7 ...........:7 7 ~ ..7 .7.  ~.  .? 7?            ".magenta     
		puts "            =.  ?7 =.  7 .7...  7 7............  .7=.7..  :7.  ..  .. I7           ".magenta     
		puts "            77 =7 7~  7 77...7 .7.   ...+.....  ....7 . .. 77.  ~   .. .7          ".magenta
		puts "           7  .7 77  7 .7..  .. .7.. .?...... I7  7.  . .I.7  .  .=  .? .          ".magenta
		puts "          ..?7.  .7   .7..: 7I,7. 7.7,. ..... .. +.7 7. 7    . ?  7   77 .         ".magenta
		puts "         =.     ..  +~7..7 . 7...  . .. 7..  .7. 7...  7.I .  .   77  7~ ~,        ".magenta
  	puts "   	   7 7 .7 7~  . . :  I........ ..7. .  77........~  ~ ?.7..   ..  .+ I         ".magenta
		puts "        .I :   .     .,   .. ......~ ~ ..,7 .I. .......7     7. .. 7=7  ~ ?.       ".magenta
		puts "        ?  .  ..  7  77...7.7....... 77 ..7. .....,.... I7..7= .  ? 77  .  .       ".magenta
		puts "       .? .?     ...77 .7 ...........  ?  7.7 ....,......7~+ 7 . 7   ..77. 7.      ".magenta
		puts "          .  7.   ...   7 7.........+..  ...I.......?..... 7 7 I.7.. 7 7 .  ,      ".magenta
		puts "       . 7.   7 ..,.,7  7.............,  .=7 .......~.....77 .  .. 7  ..  . I.     ".magenta
		puts "      :7 .  7.  ,.I.:    7.I..........7  . .  7.........   .7 ..77... 7 7 +7 77    ".magenta
		puts "      7 7?  .  ?77.. ., 7.=  .......7+7.  ,. .,7.......  .7 .7.7  ..   :, 77 ..    ".magenta
		puts "      . ..  .7 ....  . ,= 7 . ......  7 ..  ~   ....... 7 .:. .7. .. 7 .. 7. 7.7   ".magenta
 		puts "    .7     777+... .7.+ + ,77:....   ? .7   ..7 .....7 . .7.7 ,7. .,.   7 + 77     ".magenta
		puts "     .        77.7 7 .,..  ,... ..  7  7 ... .77  ,.7  I~I.....  ,. 77  7. .7 :.   ".magenta
		puts "    7.  .7 ~. =7.7 . ..... ..7. 7  ,7..7..... +.7  .   .77...... .777   ~. . .I.   ".magenta
 		puts "   7 7    .. .   ......,..+7? .77. . 7......:  7 :.77. 7........  =  7 .. .+ 7.    ".magenta
		puts "     .. .  ., .~  7.........=   +~   ...........  . =. 7..........7 I ~ .. , +     ".magenta
		puts "    7.  .  ,. . . ............ ?.7+ .............7 7 ..............  7. ..    =.   ".magenta
 		puts "    7.    .. .  ..~,.....,.+.     7.............. I ,.............. ~. .. ..7.     ".magenta
		puts "     7  .  .. .,7.........?.,.7 777......:.......?   ............... I7 .. :  .    ".magenta
		puts "        .  .. .= .............7  .7...............?  I..............  7 .. =  .    ".magenta
		puts "   ~ .7..  .. ..7.............7  .,................  ~..............  I .. 7~, .7  ".magenta
		puts "   ,    .  .. .. .............  7II...............+ 77...........,.  7~ .. 7    .  ".magenta
		puts "   +    .  .. .. .............7  . ...............    .............   ~ .. 7    .  ".magenta
		puts "   .    .  .. ,.7.............  7. ...............    I.......,....   . .7 7    .  ".magenta
		puts "   ?7I  .  .. ....,...........   ,7...............I 77:............  ?. .=  =I 77  ".magenta
		puts "     7  .  .. .............=..7  . ...............7  ..,......,....  ,7 ., 7  ~    ".magenta
		puts "      7 .  ., ,.7.............,  . ........,...:..7 ...........,...+ =I .7    .    ".magenta
		puts "        .  .. .. .....,.......7  .,.,......+......   ........7....,  .? ..    +    ".magenta
		puts "     77 .  ?. .. ..........:..  7. .....=.........  7..............  ,7 ..  :7:7+  ".magenta
		puts "   7    ~  ,. ~.I.............7 77 ...............I  .7............  ?  ..      .  ".magenta
		puts "   ?    .  .. ,. .............7  I7...............   =.............  :7 .,  7   .  ".magenta
		puts "   .    7  ~. .. .............7 7~ ...............  7+...........?.  =7 ..      .  ".magenta
		puts "   7    77 I. .. .............   77...............  7..............  .. ,.  I   .  ".magenta
		puts "     .  ,7 I. .~ .............7 7  ?.7............   :.............  .. ?.  = I    ".magenta
		puts "     ,  .  7. .7 .............  ? 7:..............  7I...:.........  +. ..  .      ".magenta
		puts "     .  .  ?. .7I.............    I~..............   7.............  ,. ..  .      ".magenta
		puts "     .  .   . ,  .............   777.............~   7.,...?.......  ,. ..  .      ".magenta
		puts "       7.  7  . =........... .7 I  7......=.,.....   +.............  ,. ..  .?= +  ".magenta
		puts "   7    +7 7.    .............  ?   .............. 7 7,.....,......  :. .7  .    . ".magenta
		puts "   .     7  . ?7 I............7 + 7+..............   .I............  7. :7  .    . ".magenta
		puts "   :     7  . . 7~7      7    : . 7. 77 77   77 7 .  .7            7  . .   .    . ".magenta
		puts "   .    I7  ? .7. 77     7 7  7.. 77777 77777   7 7. 7  7           7 . .=  .+~,.. ".magenta
 		puts "   77.     ~ ? 77  77 7777   77:+~ II 777   7  7777 7   7     777 77   ,,  .       ".magenta
		puts "      .  7  I77                                                         .7 7,  7   ".magenta
		puts "      .  7 7I...I=..77  7,..7 I   7777777   .....77..,.....7.~..== =:...           ".magenta
		puts "      . 7  7.                                                                  I   ".magenta
		puts "     7  7~ 777                   77                               7      7  7   7  ".magenta
                                                                                
 
		puts ""
		puts "THE PURPLE ROOM".white 
		puts "You are now in the purple room.".light_magenta
		puts "There are several people in here, but the ballerinas in particular catch your eye.".light_magenta
		puts "You can talk to BALLERINA 1 or BALLERINA 2.  You can move WEST or EAST.  ".light_magenta
		
                prompt()
                action = gets.chomp

                if action == "go west" or action == "west" or action == "GO WEST" or action == "Go west"
                  puts "You head to the orange room.".orange
                  return :death  #return :orange_room

                elsif action == "BALLERINA 1"
                  puts "Oh sweet Prince, do you not love my dancing?  I do it because this outrageous dress you have crafted for me is as elegant as it is bizarre".light_magenta
                  puts "CLANG CLANG".white
                  puts "What a horrible sound prince!  What a horrible awful sound!  Oh but a fun sound too, I suppose.".light_magenta
                  return :death  #return :purple_mini_room

                else
                  return :death

                end
        end
end

a_game = Game.new(:intro)
a_game.play()


