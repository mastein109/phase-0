 // JavaScript Olympics

// I paired [by myself, with: Matt Harris] on this challenge.

// This challenge took me [1] hour.


// Warm Up




// Bulk Up

 var athletes = [
   hughes = {
    name: "Sarah Hughes",
    event: "Ladies' Singles",
  },

  phelps = {
    name: "Michael Phelps",
    event:"Mens Swimming",
  },
];

function addWin(array) {
  for (var i = 0; i < array.length; i ++){
    array[i].win = console.log(array[i].name + (" won the ") + array[i].event);
  }
}

addWin(athletes);



// Jumble your words

function reverseString(string){
  var string = string.split('').reverse();
  return string = string.join('');
}

console.log(reverseString("whatever"));

// 2,4,6,8

function evenNums(array){
  var output =[];
  for (var i = 0; i < array.length; i++){
    if(array[i]%2==0){
      output.push(array[i])
    }
  }
  return output
}


var arr = [1,2,3,4,5,6,7,8];
console.log(evenNums(arr));



// "We built this city"

function Athlete(name, age, sport, quote){
  this.name = name;
  this.age = age;
  this.sport = sport;
  this.quote = quote;
}

var michaelPhelps = new Athlete("Michael Phelps", 29, "swimming", "It's medicinal I swear!")
console.log(michaelPhelps.constructor === Athlete)
console.log(michaelPhelps.name + " " + michaelPhelps.sport + " " + michaelPhelps.quote)


// Reflection
/*
What JavaScript knowledge did you solidify in this challenge?
  I was able to solidify the concept of built in methods. Further, being able to reverse an array, but not a string was reinforced.
What are constructor functions?
  Constructors provide a way to create objects that come from a shared class. Constructor functions bound new objects to "this" variable and return a new object from the call or arguments.
How are constructors different from Ruby classes (in your research)?
  JavaScript constructors are very similar to Ruby classes and the new objects defined in constructor functions are similar to the initialization of Ruby instance variables.
*/