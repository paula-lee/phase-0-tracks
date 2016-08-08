function longestWord(array) {
	largest = 0; 
	word = "";

	for (var i = 0; i < array.length; i++) {
		if (array[i].length > largest) {
			largest = array[i].length;
			word = array[i];
		}
	}
	console.log(word);
}


// Driver code for release 0
var phrase = ["long phrase", "longest phrase", "longer phrase"];
longestWord(phrase);

var words = ["light", "hippocampus", "dangerously", "two", "incredible"];
longestWord(words);