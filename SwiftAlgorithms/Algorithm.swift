//
//  Algorithm.swift
//  SwiftAlgorithms
//
//  Created by Ouahchia, Mohamed (JD) on 07/11/2023.
//

import Foundation

class Algorithm {
    
    func linearSearchReturnsBool(data: [Int], item: Int) -> Bool {
        for search in data {
            if search == item {
                return true
            }
        }
        return false
    }
     
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
    
    func insertionSort(data: [Int]) -> [Int] {
        var sorted = [Int]()
        var current = 1
        
        
        
        return [Int]()
    }
    
    func quickSort(data: [Int]) -> [Int]{
        let pivot = data[0]
        var left = [Int]()
        var right = [Int]()
        
        for (i, v) in data.enumerated() {
            if i != 0 {
                if v >= pivot {
                    right.append(v)
                }
                else {
                    left.append(v)
                }
            }
            
        }
        var newData = [Int]()
        if left.count > 0 {
            newData.append(contentsOf: quickSort(data: left))
        }
        newData.append(pivot)
        if right.count > 0 {
            newData.append(contentsOf: quickSort(data: right))
        }
        return newData
    }}
