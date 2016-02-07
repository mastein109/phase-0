// Pseudocode
/*
1. Create a new object for grocery list
2. Create function to add new item name and quantity to grocery list
3. Create another function to remove item from grocery list
4. Create another function to update quantity and change it on the grocery list
5. Create final function to print items on list
*/

//Initial Solution

grocery_list = {}

grocery_list.add = function (item_name,quantity) {
  grocery_list[item_name] = quantity
}

grocery_list.remove = function (item_name) {
  delete grocery_list[item_name]
}

grocery_list.update = function (item_name,quantity) {
  grocery_list[item_name] = quantity
}

grocery_list.view = function() {
  for (property in grocery_list){
    if (typeof grocery_list[property] !== 'function') {
      console.log (property, "--", grocery_list[property]);
    }
  }
}

//Refactored Code
//Could not find a dryer, more readable way to write this code.

//Driver Code

grocery_list.add('quinoa',1)
console.log(grocery_list)
grocery_list.add('bananas', 2)
console.log(grocery_list)
grocery_list.update('bananas', 5)
console.log(grocery_list)
grocery_list.see()

//Reflection
/*
What concepts did you solidify in working on this challenge? (reviewing the passing of information, objects, constructors, etc.)
  I was able to practice using built in methods in JavaScript, such as remove and delete.
What was the most difficult part of this challenge?
  The most difficult part of this challenge was figuring out the view function I created.
Did an array or object make more sense to use and why?
  An object made more sense in this challnege since there would be an item and quantity pair. Therefore, an object's key/value pair suited this instance perfectly.
*/
