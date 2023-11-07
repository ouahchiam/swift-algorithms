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
}
