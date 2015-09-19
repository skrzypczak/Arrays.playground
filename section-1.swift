// Playground - noun: a place where people can play

import UIKit

var str = "Welcome to the Array playground"

// Array Literals

var shoppingList: [String] = ["Eggs", "Milk"]
// shoppingList has been initialized with two initial items

// Accessing and Moditying Arrays

println("The shopping list contains \(shoppingList.count) items.")
// prints "The shopping list contains 2 items."

// Empty?

if shoppingList.isEmpty {
    println("The shopping list is empty.")
} else {
    println("The shopping list is not empty.")
}
// prints "The shopping list is not empty."

// Append Item - using methood

shoppingList.append("Flour")
// shoppingList now contains 3 items, and someone is making pancakes
println(shoppingList.count)

// using assignment operator

shoppingList += ["Baking Powder"]
// shoppingList now contains 4 items
println(shoppingList.count)

// append an array of compatible items

shoppingList += ["Chocolate Spread", "Cheese", "Butter"]
// shoppingList now contains 7 items
println(shoppingList.count)

// retrieve items in an array

var firstItem = shoppingList[0]
// firstItem is equal to "Eggs"

// change an existing value

shoppingList[0] = "Six eggs"
// the first item in the list is now equal to "Six eggs" rather than "Eggs"

// change a bunch of values

shoppingList[4...6] = ["Bananas", "Apples"]
// shoppingList now contains 6 items
println(shoppingList.count)

// put something in a specific spot

shoppingList.insert("Maple Syrup", atIndex: 0)
// shoppingList now contains 7 items
// "Maple Syrup" is now the first item in the list
println(shoppingList[0])

// remove something

let mapleSyrup = shoppingList.removeAtIndex(0)
// the item that was at index 0 has just been removed
// shoppingList now contains 6 items, and no Maple Syrup
// the mapleSyrup constant is now equal to the removed "Maple Syrup" string
println(shoppingList.count)

// remove the last item

let apples = shoppingList.removeLast()
// the last item in the array has just been removed
// shoppingList now contains 5 items, and no cheese
// the apples constant is now equal to the removed "Apples" string
println(shoppingList.count)

// Iterating thru an array

for item in shoppingList {
    println(item)
}
// Six eggs
// Milk
// Flour
// Baking Powder
// Bananas

// Creating and Initializing arrays

// Empty

var someInts = [Int]()
println("someInts is of type Int[] with \(someInts.count) items.")
// prints "someInts is of type Int[] with 0 items."


// Size & Type

var threeDoubles = [Double](count: 3, repeatedValue: 0.0)
// threeDoubles is of type Double[], and equals [0.0, 0.0, 0.0]

var anotherThreeDoubles = Array(count: 3, repeatedValue: 2.5)
// anotherThreeDoubles is inferred as Double[], and equals [2.5, 2.5, 2.5]

// Adding Arrays

var sixDoubles = threeDoubles + anotherThreeDoubles
// sixDoubles is inferred as Double[], and equals [0.0, 0.0, 0.0, 2.5, 2.5, 2.5]
