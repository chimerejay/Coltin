//: Playground - noun: a place where people can play

import UIKit

// Add 10 to each part of the array

var names = [0,1,2,3,4,5,9,11,23,45,67,34]

for x in 0..<names.count {
    names[x] = names[x] + 10
    print(names)
}

// Take one array and append "is funny" to he back of them

var nickName = ["Rick", "Homer", "Gary"]

for nn in 0..<nickName.count {
    nickName[nn] = "\(nickName[nn]) is funny."
    print(nickName)
}

var otherName = ["hi", "you", "ant"]

// What if I want to combine the two arrays?
// Append the contents of a sequence

// nickName.append(contentsOf: otherName)


// I want to take the contents of nickname and alternate it with the contents of otherName


func mixNames(change1: [String], change2: [String]) -> [String] {
    
    var newArray = [String]()
    var index = 0
    
    if change1.count >= change2.count{
        index = change1.count
    } else if change2.count > change1.count {
        index = change2.count
    }
    
    for x in 0..<index {
        if change1.count > x {
            newArray.append(change1[x])
        }
        if change2.count > x {
            newArray.append(change2[x])
        }
    }
    return newArray
}

mixNames(change1: nickName, change2: otherName)


// What if I want to combine arrays of different types?

func combineTypes(type1: [Any], type2: [Any]) -> [Any] {
    
    var both = [Any]()
    var unit = 0
    
    // Just in case the sequences have nothing in them
    // If type1 has no items in it, type 2 will be printed, vise versa
    
    if type1.count == 0 {
        return type2
    } else if type2.count == 0 {
        return type1
    }
    
    
    // Set up the variable that will be used to build the new array
    
    if type1.count >= type2.count {
        unit = type1.count
    } else if type2.count > type1.count {
        unit = type2.count
    }
    
    // Now put things into the array in terms of the unit variable
    
    for y in 0..<unit {
        if type1.count > y {
            both.append(type1[y])
        }
        if type2.count > y {
            both.append(type2[y])
        }
    }
    return both
}

combineTypes(type1: nickName, type2: otherName)

print(combineTypes(type1: nickName, type2: otherName))











