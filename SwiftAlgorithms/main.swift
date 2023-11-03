import Foundation

var data = [1,2,4,3,5]

let timeQS = CFAbsoluteTimeGetCurrent();
let result = quickSort(data: data)
let timeTakenQS = (CFAbsoluteTimeGetCurrent() - timeQS) * 100

let timeBS = CFAbsoluteTimeGetCurrent();
let result1 = bubbleSort(data: &data)
let timeTakenBS = (CFAbsoluteTimeGetCurrent() - timeBS) * 100

print(result, "")
