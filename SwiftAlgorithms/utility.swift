//
//  utility.swift
//  SwiftAlgorithms
//
//  Created by Ouahchia, Mohamed (JD) on 03/11/2023.
//

import Foundation


    func generateArray(size: Int, min: Int, max: Int) -> [Int] {
        var array = [Int]()
        for _ in 1...size {
            array.append(Int.random(in: min...max))
        }
        return array
    }

