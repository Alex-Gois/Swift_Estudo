import Foundation

//Task 1
// powerUpActive -> means if the bird has an active power-up.
// touchingEagle -> means if the bird touching an eagle.
// it has to return true if both arguments is true.
func bonusPoints(powerUpActive: Bool, touchingEagle: Bool) -> Bool {
  if powerUpActive && touchingEagle {
        return true
  } else {
        return false
  }
}

//Test 1
var test1 = bonusPoints(powerUpActive: true, touchingEagle: true)
print(test1)

//Test 2
var test2 = bonusPoints(powerUpActive: false, touchingEagle: true)
print(test2)


print("")
// MARK: -----------------------------------------------------------------------------

//Task 2
// touchingPowerUp -> means if the bird id touching a power-up.
//touchingSeed -> means if the bird is touching a seed.
// it has to return if only one argument is true.
func score(touchingPowerUp: Bool, touchingSeed: Bool) -> Bool {
  if touchingPowerUp || touchingSeed {
        return true
  } else {
        return false
  }
}

//Test 5
var test5 = score(touchingPowerUp: true, touchingSeed: true)
print(test5)


//Test 6
var test6 = score(touchingPowerUp: false, touchingSeed: true)
print(test6)

print("")
// MARK: -----------------------------------------------------------------------------

//Task 3
// powerUpActive -> means if the bird has an active power-up.
// touchingEagle -> means if the bird touching an eagle.
// it has to return true if is an eagle and does not have a power-up active.
func lose(powerUpActive: Bool, touchingEagle: Bool) -> Bool {
    if touchingEagle && !powerUpActive {
        return true
    } else {
        return false
    }
}

//Test 9
var test9 = lose(powerUpActive: false, touchingEagle: true)
print(test9)

//Test 10
var test10 = lose(powerUpActive: true, touchingEagle: true)
print(test10)


print("")
// MARK: -----------------------------------------------------------------------------

//Task 4
// hasPickedUpAllSeeds -> if the bird has picked up all of the seeds.
// powerUpActive -> if the bird has a power-up active.
// touchingEagle -> if the bird is an eagle.
// it has to return true if the bird has gathered all of the seeds and has not lost based on task 3.

func win(hasPickedUpAllSeeds: Bool, powerUpActive: Bool, touchingEagle: Bool) -> Bool {
  if hasPickedUpAllSeeds && !lose(powerUpActive: powerUpActive, touchingEagle: touchingEagle) {
    return true
  } else {
    return false
  }
}

//Test 13
var test13 = win(hasPickedUpAllSeeds: true, powerUpActive: false, touchingEagle: false)
print(test13)

//Test 14
var test14 = win(hasPickedUpAllSeeds: true, powerUpActive: false, touchingEagle: true)
print(test14)

