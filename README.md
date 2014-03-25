# Anderson's HyperLit Engine (AHLE) 

### About the Project

Anderson's HyperLit Engine or AHLE is a template for creating
exploration/ludic based summaries of literature written in Ruby. 

By creating a map, and placing characters from a specific narratives
(or topic-objects from any form of codex) in different places within 
the map, readers can enhance comprehesion and build deeper engagement
with texts as *PLAYERS* or approach the Ruby language and the computer
command-line as *BUILDERS*.

### NARRATIVE 1: The Masque of the Red Death
##### MAP

```
**************************************************************************************************
|           |             |            |             |            |             |                | 
| Blue Room   Purple Room   Green Room   Orange Room   White Room   Violet Room   Black/Red Room |     
|           |             |            |             |            |             |                |
**************************************************************************************************
```

##### KEY

| Character       | Status      | Room(s)     | Interaction  |
| --------------- | ----------- | ----------- | ------------ |
| Prince Prospero | Protagonist | All         | All          |
| Red Death       | Antagonist  | All         | nil          |
| Waltzers        | nil         | Blue Room   | 3 lines each |
| Ballerinas      | nil         | Purple Room | 3 lines each |
| Improvisers     | nil         | Green Room  | 3 lines each | 
| Buffons         | nil         | Orange Room | 3 lines each |
| Musicians       | nil         | Violet Room | 3 lines each |

| Items      | Room(s)                      | 
| ---------- | ---------------------------- |
| Dagger     | White Room (After Red/Black) |

##### Plot
[See weird_notes.txt](https://github.com/EliCash82/ahle/blob/master/weird_notes.txt))

#####Ludic Rules

* If Prospero moves to the WEST the ebony clock chimes making things more and more eerie.

* If Prospero moves back east things calm back down

* If Prospero moves all the way to the black/red room, as he moves left
	* the clock begins clanging more times
	* guests that Prospero talk to seem much more disturbed

* When Prospero gets back to the blue room he notices another figure and rages

* He then must go through all the rooms until falling on his dagger in the red/black room upon his second arrival in the room.

### Requirements:

#####GEMS:

* Colorize

#####GENERAL:

* When running engine, terminal background should be dark/black for optimal experience.

