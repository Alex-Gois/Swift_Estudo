//
//  main.swift
//  Lasagna
//
//  Created by Alex Gois on 01/09/23.
//

import Foundation

//Task 1
let expectedMinutesInOven = 40

//----------------------------------------------------------
//Task 2
func remainingMinutesInOven(elapsedMinutes: Int) -> Int {
    return expectedMinutesInOven - elapsedMinutes
}

//Test 2
var test2 = remainingMinutesInOven(elapsedMinutes: 13)
print(test2)

//Test 3
var test3 = remainingMinutesInOven(elapsedMinutes: 40)
print(test3)

print("")
//----------------------------------------------------------

//Task 3
func preparationTimeInMinutes(layers: Int) -> Int {
    let timePerLayer = 2
    return layers * timePerLayer
}
//Test 5
var test5 = preparationTimeInMinutes(layers: 6)
print(test5)

//Test 6
var test6 = preparationTimeInMinutes(layers: 1)
print(test6)

print("")
//----------------------------------------------------------

//Task 4
func totalTimeInMinutes(layers: Int , elapsedMinutes: Int) -> Int {
    return preparationTimeInMinutes(layers: layers) + elapsedMinutes
}

//Test 8
var test8 = totalTimeInMinutes(layers: 1, elapsedMinutes: 30)
print(test8)

//Test 9
var test9 = totalTimeInMinutes(layers: 2, elapsedMinutes: 25)
print(test9)

