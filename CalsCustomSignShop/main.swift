import Foundation


// TODO: define the 'birthday' String constant
let birthday: String = "Birthday"

// TODO: define the 'valentine' String constant
let valentine: String = "Valentine's Day"

// TODO: define the 'anniversary' String constant
let anniversary: String = "Anniversary"

// TODO: define the 'space' Character constant
let space: Character = " "

// TODO: define the 'exclamation' Character constant
let exclamation: Character = "!"

//Task 3
func buildSign(for occasion: String, name: String) -> String {
    let happy: String = "Happy"
    let phrases: String = "\(happy) \(occasion) \(name)!"
    return phrases
}

//Task 4
func graduationFor(name: String, year: Int) -> String {
    let congratulation: String = "Congratulations"
    let graduation: String = "\(congratulation) \(name)!\nClass of \(year)"
    return graduation
}

//Task 5
func costOf(sign: String) -> Int {
    let basePrice: Int = 20
    let price: Int = (sign.count * 2) + basePrice
    return price
}
