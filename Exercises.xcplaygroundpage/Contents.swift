//: [Previous](@previous)
import Foundation

//: __Exercise 1.__
//:
//:Earlier we used the method, remove() to remove the first letter of a string. This method belongs to the String class. See if you can use this same method to remove the last letter of a string.
var string = "stuff"
string.remove(at: string.index(before: string.endIndex))

//:Test out your discovery below by returning the last letter of the String, "bologna".

func wordLastLetter(of word: String) -> Character {
    return word.last!
}

var word = "bologna"
wordLastLetter(of: word)

//: __Exercise 2__
//:
//: Write a function called combineLastCharacters. It should take in an array of strings, collect the last character of each string and combine those characters to make a new string to return. Use the strategy you discovered in Problem 1 along with a for-in loop to write combineLastCharacters. Then try it on the nonsenseArray below.

func combineLastCharacters(of stringsArray: [String]) -> String {
    var newWord = ""
    for string in stringsArray {
        newWord.append(string.last!)
    }
    return newWord
}

var nonsenseArray = ["bungalow", "buffalo", "indigo", "although", "Ontario", "albino", "%$&#!"]
combineLastCharacters(of: nonsenseArray)

//: __Exercise 3__
//:
//: Imagine you are writing an app that keeps track of what you spend during the week. Prices of items purchased are entered into a "price" textfield. The "price" field should only allow numbers, no letters.

//: CharacterSet.decimalDigitCharacterSet() is used below to define a set that is only digits. Using that set, write a function that takes in a String and returns true if that string is numeric and false if it contains any characters that are not numbers.

//: __3a.__ Write a signature for a function that takes in a String and returns a Bool

//: __3b.__ Write a for-in loop that checks each character of a string to see if it is a member of the "digits" set. Use the .unicodeScalars property to access all the characters in a string. Hint: the method longCharacterIsMember may come in handy.

func isNumeric(in number: String) -> Bool {
    let digits = CharacterSet.decimalDigits
    for digit in number {
        if !digits.contains(digit.unicodeScalars.first!) {
            return false
        }
    }
    return true
}

let price = "1233"
isNumeric(in: price)

//: __Exercise 4__
//:
//: Write a function that takes in an array of dirtyWord strings, removes all of the four-letter words, and returns a clean array.

func removeFourLetterWords(in array: [String]) -> [String] {
    var cleanArray: [String] = []
    for word in array {
        if word.count != 4 {
            cleanArray.append(word)
        }
    }
    return cleanArray
}

let dirtyWordsArray = ["phooey", "darn", "drat", "blurgh", "jupiters", "argh", "fudge"]
removeFourLetterWords(in: dirtyWordsArray)

//: __Exercise 5__
//:
//: Write a method, filterByDirector(), that belongs to the MovieArchive class.  This method should take in a dictionary of movie titles and a string representing the name of a director and return an array of movies created by that director. You can use the movie dictionary below. To test your method, instantiate an instance of the MovieArchive class and call filterByDirector from that instance.


var movies:Dictionary<String,String> = [ "Boyhood":"Richard Linklater","Inception":"Christopher Nolan", "The Hurt Locker":"Kathryn Bigelow", "Selma":"Ava Du Vernay", "Interstellar":"Christopher Nolan"]

class MovieArchive {
    func filterByDirector(_ movies: Dictionary<String,String>, _ name: String) -> [String] {
        var moviesOfDirector: [String] = []
        for (movie, director) in movies {
            if director == name {
                moviesOfDirector.append(movie)
            }
        }
        return moviesOfDirector
    }
}

let movieArchive: MovieArchive = MovieArchive()
let name = "Christopher Nolan"
movieArchive.filterByDirector(movies, name)

//: [Next](@next)
