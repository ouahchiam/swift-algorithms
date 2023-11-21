import Foundation

var data = generateArray(size: 100, min: 1, max: 100);

let timeQS = CFAbsoluteTimeGetCurrent();
let result = quickSort(data: data)
let timeTakenQS = (CFAbsoluteTimeGetCurrent() - timeQS) * 100

print(data, result, "")
