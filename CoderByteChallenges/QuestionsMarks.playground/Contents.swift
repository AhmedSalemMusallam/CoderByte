import UIKit

//Questions Marks
//
//Have the function QuestionsMarks(str) take the str string parameter, which will contain single digit numbers, letters, and question marks, and check if there are exactly 3 question marks between every pair of two numbers that add up to 10. If so, then your program should return the string true, otherwise it should return the string false. If there aren't any two numbers that add up to 10 in the string, then your program should return false as well.
//
//For example: if str is "arrb6???4xxbl5???eee5" then your program should return true because there are exactly 3 question marks between 6 and 4, and 3 question marks between 5 and 5 at the end of the string.
//Examples
//
//Input: "aa6?9"
//Output: false
//Input: "acc?7??sss?3rr1??????5"
//Output: true
                                                                                                                                                            
func QuestionsMarks(_ str: String) -> Bool {

  // code goes here
    var questionMark:Int = 0
    var previousNum:Int = 0
    var paired = false
    for character in str {
        if character == "?"{
            questionMark =  questionMark <= 3 ? (questionMark+1)  : 0
        }else{
            if let newNum = Int(String(character)){
                if (newNum + previousNum) == 10{
                    paired = true
                    if questionMark != 3 {
                        return false
                    }
                }
                previousNum = newNum
                questionMark = 0
            }
        }
    }
  // Note: feel free to modify the return type of this function
      return paired
}

// keep this function call here
print(QuestionsMarks("aa6?9"));
print(QuestionsMarks("acc?7??sss?3rr1??????5"));




