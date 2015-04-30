# BEWD Extra Exercises

#### I've Got the Power
*(Easy)* Write a program that asks the user for a number and an exponent and returns the number given raised to the power of the exponent given.

#### Make it count
*(Easy)* Create a program using a loop that adds up all the integers between 0 and 50, displaying the total as it adds a new integer.

#### Awesome things
*(Normal)* Here’s a collection of awesome things.
awesome_things = ["fly to Paris for vacation”, "win the lottery jackpot”, "binge watching Netflix”, "buying new kicks”, "eat a great meal”]

Create a program that adds "Yes lets … " before all of the items in awesome_things. Give the user the ability to adds new awesome_things, and check if they want to continue to add to the original array

#### Even or odds
*(Normal)* Write a for loop that will iterate from 0 to 20. For each iteration, it will check if the current number is even or odd, and report that to the screen (e.g. "2 is even").

#### Calculator 
*(Normal to Hard)* You will be building a calculator. A calculator can perform multiple arithmetic operations. Your function should allow the user to choose which operation is expected, enter in the values to perform the operation on, and ultimately view the result. 

* Phase 1: Keep it Simple
  * A user should be given a menu of operations
  * A user should be able to choose from the menu
  * A user should be able to enter numbers to perform the operation on
  * A user should be shown the result

   This process should continue until the user selects a quit option from the menu Calculator should be able to do basic arithmetic (+,-, *, /). Note: In irb, test the difference between '5 / 4’ and '5.0 / 4.0’

* Phase 2: Advanced Calculator functionality
  * Calculator should be able to do basic arithmetic (exponents, square roots)

* Phase 3: 
  * User should be given a menu of Calculator functionality

#### Weather
*(Normal)* Ask the user what the temp is outside and return a statement on the weather (e.g., It’s 75 degrees outside, beautiful weather for a leisurely walk. Just wear a light sweater).  Ask the user if they would like to check another temperature. Continue to ask until they respond no.

#### Recurrence
*(Normal)* Write a method named `recurrence` that takes a number as a parameter. Within that method create an if statement that checks if the number is higher than zero, if it is greater than zero subtract one from the number and then call the recurrence method on that new number from within the recurrence method. When the number gets to zero have the method stop.

#### Shout!
*(Easy )*Create a method that takes a string for an argument and prints an all CAPS version of that string with three exclamation marks added to the end of it.

#### Hello world
Easy Write a method that takes one parameter called `name`, set this parameter to default to "Stranger”, and then have the method print a greeting that says hello to whoever’s name is presently represented by the parameter variable `name`.

#### Heads or tails
*(Very Easy)* Create a method called coin_toss that returns either heads or tails.

#### Roll the Dice
*(Normal)* Create a method that takes parameter called `number_of_dice`, then create a loop that "rolls a die” (returns a number between 1 and 6) once for each number_of_dice… have it add up the total and print it out saying "You rolled <insert total number here>”.

#### Paper, Scissors, Rock
*(Hard)* Create a method that takes a parameter from a user (either 'paper’, 'rock’, or 'scissors’), then returns a random choice from the computer and tells a user whether or not they won.

#### Deck of Cards
*(Normal to Hard)* Create a deck of cards. - Write a method that creates a blank array named `deck` uses loops to fill that array with 52 cards (bonus points for suits and face cards),  shuffles and returns the deck at the end of the method (extra credit: create a new method `deal` and have it deal one to five random cards sampled from the deck you’ve created)

#### Pig Latin Translator
*(Hard)* Write a program that accepts a string from the user and returns that string translated to [pig latin](http://en.wikipedia.org/wiki/Pig_Latin).

#### Tic Tac Toe
*(Hard)* Write a program that allows a single player to play tic tac toe against a computer opponent. 

##### Hints
* Break this problem down into small pieces.
* Write a method that draws the board and displays it to the user based off of the game state. 
* Don't worry about making the opponent 'smart' until you've gotten everything else in place.

#### MTA Lines 
*(Hard)* There are 3 subway lines:

* The N line has the following stops: Times Square, 34th, 28th, 23rd, Union Square, and 8th
* The L line has the following stops: 8th, 6th, Union Square, 3rd, and 1st
* The 6 line has the following stops: Grand Central, 33rd, 28th, 23rd, Union Square, and Astor Place.
* All 3 subway lines intersect at Union Square, but there are **NO** other intersection points.
* For example, this means the 28th stop on the N line is different than the 28th street stop on the 6 line, **so you'll have to differentiate this** when you name your stops in the arrays. (example: "28th-s" for 6 line and "28th-n" for n line)

The program takes the line and stop that a user is getting on at and the line and stop that user is getting off at and prints the total number of stops for the trip.

##### Hints
* Get the program to work for a single line before trying to tackle multiple lines.
* Consider diagramming the lines by sketching out the subway lines and their stops and intersection.
* Make subway lines keys in a hash, while the values are an array of all the stops on each line.
* The keys to your hash should be symbols. Keep in mind that symbols cannot begin with a number.
* The key is the intersection of the lines at Union Square. Google "ruby array intersect."
* Make sure the stops that are the same for different lines have different names (i.e. 23rd on the N and on the 6 need to be differentiated)

#### Executable!
*(Bonus)* Using google, determine how to make one of your programs 'executable'. That is, it runs when you click on it from the finder.
