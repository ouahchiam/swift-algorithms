import Foundation

var data = [30,20,50,10,60,70]

let timeQS = CFAbsoluteTimeGetCurrent();
let result = quickSort(data: data)
let timeTakenQS = (CFAbsoluteTimeGetCurrent() - timeQS) * 100

let timeBS = CFAbsoluteTimeGetCurrent();
let result1 = bubbleSort(data: &data)
let timeTakenBS = (CFAbsoluteTimeGetCurrent() - timeBS) * 100

print(result, "")
