import Foundation

func miscSort(array: [Int]) -> [Int] {
    var newArray = array
    for number in array {
        var count = 0
        for compareNum in array {
            if compareNum != number {
                count += 1
            }
        }
        newArray[count] = number
    }
    return newArray
}
