import Foundation

let arraySizes = [10,100,1000,10000,100000]
let sampleSize = 4
var quickSortTimeResults = [Double]()

let sut = Algorithm()
for n in arraySizes {
    for _ in 1...sampleSize {
        // WORST CASE
        
        // QUICK SORT
        var data = generateArray(size: n, min: 1, max: n).sorted();
        let timeQS = CFAbsoluteTimeGetCurrent();
        let result = sut.quickSort(data: data)
        let timeTakenQS = (CFAbsoluteTimeGetCurrent() - timeQS) * 100
        quickSortTimeResults.append(timeTakenQS)
    }
}


