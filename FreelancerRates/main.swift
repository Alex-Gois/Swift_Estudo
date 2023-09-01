import Foundation

//MARK: -> Task 1
//the freelancer work 8h/day
//hourlyRate -> the freelancer hourly rate which is 60 hours.
//the func should return daily rate.

func dailyRateFrom(hourlyRate: Int) -> Double {
    let dailyRate = 8
    return Double(hourlyRate) * dailyRate
}

// 1 - test.
var test1: Double = dailyRateFrom(hourlyRate: 60)
print("O valor é da taxa diária é R$\(test1) reais.")

// 2 - test.
var test2: Double = dailyRateFrom(hourlyRate: 16)
print("O valor é da taxa diária é R$\(test2) reais.")

// 3 - test.
var test3: Double = dailyRateFrom(hourlyRate: 25)
print("O valor é da taxa diária é R$\(test3) reais.")

print("")

// MARK: -----------------------------------------------------------------------------

// //MARK: -> Task 2
// // 22 workdays in a month.
// //withDiscount -> means the discount that the freelancer is willing to give to the client.
// //the function should return the monthly rate with discount rounded to nearest whole number.
func monthlyRateFrom(hourlyRate: Int , withDiscount: Double) -> Double {
    let monthly = 22
    let monthRate = (dailyRateFrom(hourlyRate: hourlyRate) * monthly) - (dailyRateFrom(hourlyRate: hourlyRate) * monthly * withDiscount / 100)
    return monthRate.rounded()
}

// 4 - test
var test4 = monthlyRateFrom(hourlyRate: 80 , withDiscount: 50)
print(test4)

// 5 - test
var test5 = monthlyRateFrom(hourlyRate: 77 , withDiscount: 10.5)
print(test5)

//6 - teste
var test6 = monthlyRateFrom(hourlyRate: 80 , withDiscount: 10.5)
print(test6)

print("")
// MARK: -----------------------------------------------------------------------------

// //MARK: -> Task 3
// //budget that the freelancer has.
// //the function should return the number of workdays the freelancer will work on the project.
func workdaysIn(budget: Double, hourlyRate: Int, withDiscount: Double) -> Double {
    let workdays = budget / (monthlyRateFrom(hourlyRate: hourlyRate, withDiscount: withDiscount) / 22)
    return workdays.rounded()
}

//7 - teste
var test7 = workdaysIn(budget: 1000, hourlyRate: 50, withDiscount: 10)
print(test7)

//8 - teste
var test8 = workdaysIn(budget: 5000, hourlyRate: 60, withDiscount: 10)
print(test8)

//9 - teste
var test9 = workdaysIn(budget: 25000, hourlyRate: 80, withDiscount: 10)
print(test9)
