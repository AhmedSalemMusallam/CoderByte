import UIKit

//Codeland Username Validation
//
//Have the function CodelandUsernameValidation(str) take the str parameter being passed and determine if the string is a valid username according to the following rules:
//
//1. The username is between 4 and 25 characters.
//2. It must start with a letter.
//3. It can only contain letters, numbers, and the underscore character.
//4. It cannot end with an underscore character.
//
//If the username is valid then your program should return the string true, otherwise return the string false.
//Examples
//
//Input: "aa_"
//Output: false
//Input: "u__hello_world123"
//Output: true


func CodelandUsernameValidation(_ str: String) -> String {
    
    // code goes here
    // Note: feel free to modify the return type of this function
    let arrayStr = Array(str)
    if arrayStr.count >= 4 && arrayStr.count <= 25 {
        if arrayStr.last != "_" {
            if let firstLetter = arrayStr.first?.isLetter {
                if firstLetter == true {
                    return "true"
                }
            }
        }
    }
    return "false"
    
}

// keep this function call here
print(CodelandUsernameValidation("aaa_"));
print(CodelandUsernameValidation("u__hello_world123"));





