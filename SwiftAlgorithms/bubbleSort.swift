//
//  bubbleSort.swift
//  SwiftAlgorithms
//
//  Created by Ouahchia, Mohamed (JD) on 01/11/2023.
//

import Foundation

func bubbleSort(data: inout [Int]) {
    let length = data.count
    var currentComparisonIndex = 1
    var index = 0
    var passes = 2
    while (passes != 0) {
        passes = 0
        for i in (0...length) {
            let currentValue = data[index]
            if currentComparisonIndex < length {
                print(index, currentComparisonIndex, currentValue, data[currentComparisonIndex])
                if (currentValue > data[currentComparisonIndex]) {
                    let temp = data[currentComparisonIndex]
                    data[currentComparisonIndex] = currentValue
                    data[index] = temp
                    passes += 1
                }
                currentComparisonIndex += 1
                index += 1
                print(data)
            }
        }
    }
}
