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
    var swaps = 1
    while (swaps != 0) {
        swaps = 0
        index = 0
        currentComparisonIndex = 1
        for _ in (0...length) {
            let currentValue = data[index]
            if currentComparisonIndex < length {
                if (currentValue > data[currentComparisonIndex]) {
                    let temp = data[currentComparisonIndex]
                    data[currentComparisonIndex] = currentValue
                    data[index] = temp
                    swaps += 1
                }
                currentComparisonIndex += 1
                index += 1
                
            }
        }
    }
}
