import UIKit

//First Reverse
//
//Have the function FirstReverse(str) take the str parameter being passed and return the string in reversed order. For example: if the input string is "Hello World and Coders" then your program should return the string sredoC dna dlroW olleH.
//Examples
//
//Input: "coderbyte"
//Output: etybredoc
//Input: "I Love Code"
//Output: edoC evoL I

func FirstReverse(_ str: String) -> String {

  // code goes here
  // Note: feel free to modify the return type of this function
  return String(str.reversed())

}

// keep this function call here
print(FirstReverse("coderbyte"));
print(FirstReverse("I Love Code"));




