// Release 0: Find the Longest Phrase function
// pseudocode:
// create a function called longestWord
// the function will have a parameter that takes in an array
// set two variables: one will be named 'largest' set to equal 0 
// 					  two will be named 'word' set equal to ""
// these two variables will be used to check if the word is the longest word
// write a for loop 
	// loop until the length of the array
	// if the array length is greater than 0 or the previous word
		// then that word will be equal to the variable largest
		// then if it is the largest word it will be assigned to the variable word

// function longestWord(array) {
// 	largest = 0; 
// 	word = "";

// 	for (var i = 0; i < array.length; i++) {
// 		if (array[i].length > largest) {
// 			largest = array[i].length;
// 			word = array[i];
// 		}
// 	}
// 	console.log(word);
// }



// Release 1: Find a Key-Value Match
// pseudocode:
// create a function called matchObjects
// the function will have two parameters that take in two objects
	// get the keys from the object
	// get the values from the object
		// if the keys match
			// if the values match
				// return that the key/value match from both objects are true
		//  else there were no matches

function matchObjects(object1, object2) {
	for (var i = 0; i < Object.keys(object1).length; i++) {
		if (Object.keys(object1)[i] === Object.keys(object2)[i]) {
			if (object1[Object.keys(object1)[i]] === object2[Object.keys(object2)[i]]) {
				console.log(true);
			} else {
				console.log(false);
			}
		} else {
			console.log(false);
		}
	}
}

// Driver code for release 1
// note to self: if you do console.log(matchObject(name1,name2));
	// it will return as undefined because it's already printing
	// in the function
var name1 = {name: "Steven", age: 54};
var name2 = {nickname: "Tamir", age: 54};
matchObjects(name1, name2);

// Driver code for release 0
// var phrase = ["long phrase", "longest phrase", "longer phrase"];
// longestWord(phrase);

// var words = ["light", "hippocampus", "dangerously", "two", "incredible"];
// longestWord(words);