// DOM Manipulation Challenge


// I worked on this challenge [by myself, with Jenna El-Amin].


// Add your JavaScript calls to this page:

// Release 1:
var releaseOne = document.getElementById("release-0");
releaseOne.className = "done";


// Release 2:
var releaseTwo = document.getElementById('release-1');
releaseTwo.style.display = 'none';



// Release 3:
var releaseThree = document.querySelector('h1');
releaseThree.textContent = "I completed release 2.";




// Release 4:
var releaseFour = document.getElementById('release-3');
releaseFour.style.backgroundColor = '#955251';



//Release 5:
var releaseFive = document.querySelectorAll(".release-4")
for (var i = 0; i < releaseFive.length; i++) {
  releaseFive[i].style.fontSize='2em';
}



// Release 6:
var tmpl = document.getElementById('hidden');
document.body.appendChild(tmpl.content.cloneNode(true));

/*Reflection
What did you learn about the DOM?
  I learned that it is easy to manipulate elements within HTML and that you can style your HTML through DOM.
What are some useful methods to use to manipulate the DOM?
  The querySelector and getElementById seem to be the most useful methods to manipulate the DOM.
*/