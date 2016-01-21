// Eloquent JavaScript

// Run this file in your terminal using `node my_solution.js`. Make sure it works before moving on!

// Program Structure
// Write your own variable and do something to it.

var firstName = "Mollie";
  console.log(firstName);

// Complete one of the exercises: Looping a Triangle, FizzBuzz, or Chess Board
// Looping a Triangle

for (var poundSign = "#"; poundSign.length <= 7; poundSign = poundSign + "#")
  console.log(poundSign);


// Functions

var favoriteFood = prompt("What is your favorite food?", "");
  console.log("Hey! That's my favorite too!");

//OR

var favoriteFood = prompt("What is your favorite food?", "");
  alert("Hey! That's my favorite too!")

// Complete the `minimum` exercise.

function minNumber (x, y) {
  return Math.min(x, y);
}

console.log(minNumber(3, 7));

// Data Structures: Objects and Arrays
// Create an object called "me" that stores your name, age, 3 favorite foods, and a quirk below.

var me = {
  "name": "Mollie",
  "age": "22",
  "favorite foods": ["pizza", "cheeseburger", "steak"],
  "quirk": "I despise the color purple",
};
