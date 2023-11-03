//
//  quickSort.swift
//  SwiftAlgorithms
//
//  Created by Ouahchia, Mohamed (JD) on 03/11/2023.
//

import Foundation

func quickSort(data: [Int]) -> [Int]{
    let pivot = data[0]
    var left = [Int]()
    var right = [Int]()
    
    for (i, v) in data.enumerated() {
        print(i,v)
        if i != 0 {
            if v <= pivot {
                left.append(v)
            }
            else {
                right.append(v)
            }
        }
        
    }
    var newData = [Int]()
    if left.count > 1 {
        newData.append(contentsOf: quickSort(data: left))
    }
    newData.append(pivot)
    if right.count > 1 {
        newData.append(contentsOf: quickSort(data: right))
    }
    return newData
}
