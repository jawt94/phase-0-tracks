//Release 0:longest phrase
//input: an array with words in strings
//steps: 
//1) create a variable "sortArr" that will sort the inputted array .sort function taking in variables a and b
//2) the sort function will loop through and take b.length - a.length to find out which one is longer
//3) when the loop completes, it will return the longest word of the array

function findlongestphrase(array) {
	var sortArr = array.sort(function(a, b) {
		return b.length - a.length
	});

	return console.log(sortArr[0])
}

//DRIVER CODE: 
//findlongestphrase(["apple", "banana", "orange"])

//Release 1: find a key-value match
//input: two objects
//steps: 
//1) create a variable "keys" that will hold an object's keys
//2) create a loop that will loop through the objects
//3) if the keys in object one are equal to the keys in object2
//4) return true, otherwise return false
function find_matching_pair(object1, object2) {
	var keys = Object.keys(object1);
	for (var i = 0; i <keys.length; i++){
		if (object1[keys[i]] == object2[keys[i]]){
			return true;
		}
	}
	return false; 
}

//DRIVER CODE:

//TEST IF TRUE: 
// var object1= {name: "Steven", age: 54}
// var object2= {name: "Tamir", age: 54}
// console.log(find_matching_pair(object1,object2))

//TEST IF FALSE: 
// var object1= {name: "Steven", age: 44}
// var object2= {name: "Tamir", age: 54}
// console.log(find_matching_pair(object1,object2))

//Release 2: Generate Random Test Data
function generate_data(integer){
	var arr =[];

	while(arr.length < integer){
		var alphabets = 'abcdefghijklmnopqrstuvwxyz'.split('');
		var word_length = Math.ceil(Math.random()*10);
		var generated_word ="";
		while(generated_word.length < word_length){
			var randomposs = Math.floor(Math.random()*alphabets.length);
			generated_word+=alphabets[randomposs];
		}
		arr.push(generated_word);
	}

	return arr;
}

//DRIVER CODE
//Add driver code that does the following 10 times: generates an array, prints the array, feeds the array to your "longest word" function, and prints the result.

for (var x = 0; x < 10; x++){
  arr = generate_data(x);
  console.log(arr);
  console.log(findlongestphrase(arr));
}