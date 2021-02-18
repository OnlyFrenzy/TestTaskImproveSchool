//
//  ArrayService.swift
//  TestTaskForImprove
//
//  Created by OnlyFrenzy on 18.02.2021.
//

import Foundation

class ArrayService {
    
    func generateMainArray (n: Int) -> [Any] {
        
        var mainArray = [Any]()
        let amountNumbersArray = Array(generateSet(n: n))
        
        for i in 0...amountNumbersArray.count - 1 {
            let secondaryArray = generateArray(numbersAmount: amountNumbersArray[i])
            let tmp = sortArrays(array: secondaryArray, i: i)
            mainArray.append(tmp)
        }
        return mainArray
    }

    private func generateArray (numbersAmount: Int) -> [Int] {
        
        var tempArray = Array(repeating: 0, count: numbersAmount)
        
        for item in 0...tempArray.count-1 {
            tempArray[item] = Int.random(in: -100..<101)
        }
        return tempArray
    }
    
    private func generateSet(n: Int) -> Set<Int> {
        
        var set = Set<Int>()
        
        while set.count < n {
            set.insert(Int.random(in: 1..<n+10))
        }
        return set
    }
    
    private func sortArrays(array: [Int], i: Int) -> [Int] {
        
        if (i + 1) % 2 == 0 {
            return array.sorted(by: <)
        } else {
            return array.sorted(by: >)
        }
    }
}
