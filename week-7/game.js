 // Design Basic Game Solo Challenge

// This is a solo challenge

// Your mission description:
// Overall mission: Collect all of the treats without getting caught.
// Goals: Avoid human, collect treats
// Characters: Player(Puppy), Human
// Objects: Puppy (Position, punishments, Treats collected), Human
// Functions: moveUp, moveDown, moveBack, moveForward

// Pseudocode
//Define a player that will have attributes - position and success
//Create methods for player to move up, down, back and forward
//Define a 'human' object and assign to random position
//Move player and keep track of position according to human and treats
//  If player reaches position of treats, while avoiding human, add treat.
//  If player position is same as human, add punishment.
//Whichever occurs first:
//  if treats = 10, success
//  if punishment = 5, game over

// Initial Code

var human={
  positionX: Math.floor((Math.random()*25)+1),
  positionY: Math.floor((Math.random()*25)+1)
}

var treats={
  positionX: Math.floor((Math.random()*25)+1),
  positionY: Math.floor((Math.random()*25)+1)
}

var puppy={
  treats: 0,
  punishment: 0,
  positionX: 0,
  positionY: 0,
  success: false,

movePosition: function (direction){
  if (direction === 'forward'){
    this.positionX += 5;
  }
  else if (direction ==='back'){
    this.positionX -= 5;
  }
  else if (direction === 'up'){
    this.positionY += 5;
  }
  else if (direction === 'down'){
    this.positionY -= 5;
  }

    human.positionX = Math.floor((Math.random()*25)+1),
    human.positionY = Math.floor((Math.random()*25)+1),
      console.log("Human is positioned at " + human.positionX + ", " + human.positionY);


    console.log("Puppy is positioned at " + puppy.positionX + ", " + puppy.positionY);
}

}

function checkPosition(success){
     if(puppy.positionX === treats.positionX && puppy.positionY === treats.positionY){
      for(treats = 0; treats < 10; treats++){
            puppy.treats += 1;
            }
            puppy.success = true;
          }

     else if(puppy.positionX === human.positionX && puppy.positionY === human.positionY){
        for(punishment = 0; punishment < 5; punishment++){
              puppy.punishment += 1;
            }
            puppy.success = false;
        }
}




function check(checkPosition){
  checkPosition(true)
      if(puppy.treats <= 9){
          console.log('You have collected a treat without your human catching you! Keep going! You have' + (10-puppy.treats) + ' more treats to find!');
          }
      else if(puppy.treats === 10){
          console.log("You have collected all " + puppy.treats + " treats!");
          }

  checkPosition(false)
     if (puppy.punishment <= 4){
          console.log("Careful! " + (5-puppy.punishment)+ " more chances until you are punished!");
        }
     else if (puppy.punishment === 5){
          console.log("Game over. Time to be crated");
        }

}

puppy.movePosition('up');
puppy.movePosition('right');
checkPosition(true);




/* Reflection
What was the most difficult part of this challenge?
  The most difficult part of this challenge was figuring out how to make one object interact with the other. I spent a good amount of time playing around with the program to fix it.
What did you learn about creating objects and functions that interact with one another?
  It was difficult figuring out how to link each object to the proper function and then have those functions interact with one another.
Did you learn about any new built-in methods you could use in your refactored solution? If so, what were they and how do they work?
  Not this time.
How can you access and manipulate properties of objects?
  To access and manipulate properties, you use "objectName.property.Name"
  For example, in my program I accessed the puppy's treats and punishment by using "puppy.treats" and "puppy.punishment"
*/