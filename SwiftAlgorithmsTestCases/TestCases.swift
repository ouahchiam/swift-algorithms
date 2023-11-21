//
//  SwiftAlgorithmsTestCases.swift
//  SwiftAlgorithmsTestCases
//
//  Created by Ouahchia, Mohamed (JD) on 07/11/2023.
//

import XCTest

final class TestCases: XCTestCase {
    
    // TEST DRIVEN DEVELOPMENT (TDD)
    // The tests are driving what we develop
    
    // RED -> GREEN -> REFACTOR
    // Write test cases that fail (i.e. red)
    // Write minimal code to fix those failures (i.e. green)
    // Refactor the code test case to be nice
    
    func testLinearSearchWithSortedArrayAndSearchHitReturnsTrue() {
        
        // ARRANGE
        let sut = Algorithm()
        let searchData = [1,2,3,4,5,6]
        let searchItem = 4
        let expected = true
        
        // ACT
        let actual = sut.linearSearchReturnsBool(data: searchData, item: searchItem)
        
        // ASSERT
        XCTAssertEqual(actual, expected)
    }
    
    func testLinearSearchWithSortedArrayAndSearchHitReturnsFalse() {
        
        // ARRANGE
        let sut = Algorithm()
        let searchData = [1,2,3,4,5,6]
        let searchItem = 0
        let expected = false
        
        // ACT
        let actual = sut.linearSearchReturnsBool(data: searchData, item: searchItem)
        
        // ASSERT
        XCTAssertEqual(actual, expected)
    }
    
    func testLinearSearchWithEmptyArrayReturnsFalse() {
        
        // ARRANGE
        let sut = Algorithm()
        let searchData = [Int]()
        let searchItem = 4
        let expected = false
        
        // ACT
        let actual = sut.linearSearchReturnsBool(data: searchData, item: searchItem)
        
        // ASSERT
        XCTAssertEqual(actual, expected)
    }
    
    func testLinearSearchPerformanceOnSortedArrayReturnsTrue() {
        // ARRANGE
        let sut = Algorithm()
        let searchData = [1,2,3,4,5,6]
        let searchItem = 4
        let _expected = true
        
        // ACT
        measure {
            let _actual = sut.linearSearchReturnsBool(data: searchData, item: searchItem)
        }
    }
    
    func testQuickSortWithRandomArray() {
        // ARRANGE
        let sut = Algorithm()
        let randomArray = generateArray(size: 100, min: 1, max: 100);
        let expected: [Int] = randomArray.sorted()

        // ACT
        let actual = sut.quickSort(data: randomArray)

        // ASSERT
        XCTAssertEqual(actual, expected)
    }
    
    func testBubbleSortWithRandomArray() {
        // ARRANGE
        let sut = Algorithm()
        var randomArray = generateArray(size: 100, min: 1, max: 100);
        let expected: [Int] = randomArray.sorted()

        // ACT
        sut.bubbleSort(data: &randomArray)

        // ASSERT
        XCTAssertEqual(randomArray, expected)
    }
}
