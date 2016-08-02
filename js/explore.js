// create a function called reverse that has 
// parameter of word
	// create a variable called reverse word and have it equal to an empty string
	// the word will be passed through the function and the loop will
	// take the last letter of the word and input into the
	// reverse word variable
	// print out the reversed word


function reverse(word) {
	var reverseWord = '';
	for (var i = word.length - 1; i >= 0; i--) {
		reverseWord += word[i];
	}
	return (reverseWord);
}


// driver code
var result = reverse("JavaScript");
console.log(result);

result = reverse("dangerous")
console.log(result);
