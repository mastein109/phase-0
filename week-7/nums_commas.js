// Separate Numbers with Commas in JavaScript **Pairing Challenge**


// I worked on this challenge with: Jonathan Silvestri.

// Pseudocode
/*

Input: integer wihtout commas
Output: string of numbers with commas
Steps:
1. Change integer into string
2. Reverse string
3. Add a comma every three places
4. Reverse string with added commas

*/

// Initial Solution

function numString(int) {
  var originalNum = int.toString();
  var newString = '';
  for (var s = originalNum.length - 1; s >= 0; s--) {
    newString += originalNum[s];

}
 var finalString = newString.split('')
 for (var i = 1; i < finalString.length; i++) {
   if (i % 3 == 0) {
    finalString[i] = finalString[i].toString() + ",";
   }
 }

  return finalString.reverse().join('');
}


console.log(numString(1569743));


// Refactored Solution

function numString(int) {
 var originalNum = int.toString().split('').reverse();
 for (var i = 1; i < originalNum.length; i++) {
   if (i % 3 == 0) {
     originalNum[i] += ",";
   }
 }
  return originalNum.reverse().join('');
}

console.log(numString(1569743));


// Your Own Tests (OPTIONAL)




// Reflection
/*
What was it like to approach the problem from the perspective of JavaScript? Did you approach the problem differently?
  It was interesting. A few times I caught myself thinking in terms of Ruby and had to backtrack.

What did you learn about iterating over arrays in JavaScript?
  I learned it is similar to Ruby, but there are slight differences that can make or break a program.

What was different about solving this problem in JavaScript?
  The difference was the excessive amounts of symbols, such as ";" and "{ }"

What built-in methods did you find to incorporate in your refactored solution?
  Some of the built in methods my pair and I incorporated were ".reverse" ".join" and ".split" methods.
*/