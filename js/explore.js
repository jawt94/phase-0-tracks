//Step 1: declare function that takes string as parameter
function reverseStr(str) {
	//Step 2: use the split method to split the characters of the string into a new array
	var splitStr = str.split(""); //var splitStr = "hello".split("")
	//["h", "e", "l", "l", "o"]

	//Step 3: use the reverse() method to reverse the newly created array
	var reverseArray = splitStr.reverse();
	//["o","l","l","e","h"]

	//Step 4: use the join() method to join all elements in the array
	var joinArray = reverseArray.join(""); 
	// "olleh"

	//Step 5: return the reversed string
	return joinArray; //"olleh"
}


//Drivercode 
reverseStr("hi");

var reversed = reverseStr("hello")
if(reverseStr("hello")=="olleh"){
	console.log(reversed)
};
