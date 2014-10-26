Table Tennis Tournament
========================

A web app to manage the an epic table tournament held at Makers Academy during the course.

Features
--------
- Player sign up
- Game tracking
- Score tracking
- Group stage tables
- Semi/Quarter/Final match tracking 

Programs and Technologies
-------------------------
- Sublime Text 3
- Ruby
- Rspec
- Capybara
- Sinatra
- HTML5/CSS3
- Postgresql

CRC Model
----------
Player
---------
Responsiblities|Collaborators
---------------|-------------
Have a name | Game
Have points | Points
Knows how many games it's played |

Game
---------
Responsiblities|Collaborators
---------------|-------------
Can be won | Player
Can be lost | 

Points
---------
Responsiblities|Collaborators
---------------|-------------
Can be counted | Game
Can be lost | Player

Tournament
-----------
Responsiblities|Collaborators
---------------|-------------
Knows how many players it has | Player
Knows a player's rank in the tournament | 