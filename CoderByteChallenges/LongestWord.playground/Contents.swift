import UIKit

//Longest Word
//
//Have the function LongestWord(sen) take the sen parameter being passed and return the longest word in the string. If there are two or more words that are the same length, return the first word from the string with that length. Ignore punctuation and assume sen will not be empty. Words may also contain numbers, for example "Hello world123 567"
//Examples
//
//Input: "fun&!! time"
//Output: time
//Input: "I love dogs"
//Output: love


func LongestWord(_ sen: String) -> String {
    
    // code goes here
    // Note: feel free to modify the return type of this function
    
    let words = sen.split{$0 == " "}.map(String.init)
    
    var maxLenght = 0
    var longestWord = ""
    
    words.forEach {
        let word = $0.filter { !"!%?&%.,".contains($0)}
        if word.count > maxLenght {
            maxLenght = word.count
            longestWord = word
        }
    }
    
    return longestWord
    
}

// keep this function call here
print(LongestWord("fun&!! time"));
print(LongestWord("I love dogs"));





