/*
Release 1: Tests to User Stories (Sydney)
INSTRUCTIONS:
Based on the tests, write user stories that describe what the
code needs to do. User stories take the following format:
As a user, I want to...
The user stories should be easily translated into
pseudocode by the next person in your group. However, a user
story is NOT pseudocode -- it should describe the experience
of someone using the function. Words like array or loop or any
word not known to a non-technical person should not be used. You
can specify the function name.
ANSWER:
As a user, I want to be able to use a command called "sum" to
add up all the values within a set, whether the set has an even
number of values in it or an odd number of values in it.
As a user, I want to be able to use a command called "mean" to
find the average of all the values within a set, whether the
set has an even number of values in it or an odd number of values
in it.
As a user, I want to be able to use a command called "median" to
find the median of all the values within a set, whether the set
has an even number of values in it or an odd number of values in it.
*/

//Release 3: Pseudocode to code (Mollie)

//SUM
var list = [2,5,8,5,4,3,3];
function addList(array){
  var sum = 0;
  for(var i = 0; i < array.length; i++) {
    sum += array[i]
  }
  return sum;
}

console.log(addList(list));

//AVERAGE
var list = [2,5,8,5,4,3,3];
function avgList(array){
  var sum = 0;
  for(var i = 0; i < array.length; i++) {
    sum += array[i]
  }
  var avg = sum/(array.length) ;
  return Math.round(avg);
}

console.log(avgList(list));

//MEDIAN

var list = [2,5,8,5,4,4,3,2];
function medianList(array){
  var median = [];
  for(var i = 0; i < array.length; i++) {
    median = array.sort(i);
  }
  var length = (median.length/2);
  var odd = Math.round(median.length/2);
    if (median.length % 2 != 0)
      return (median[odd]);
    else (median.length % 2 == 0)
      return (median[length] + median[length-1])/2
}

console.log(medianList(list));
