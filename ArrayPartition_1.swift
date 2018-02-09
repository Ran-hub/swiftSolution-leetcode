//
//  ArrayPartition_1.swift
//  
// Prob: https://leetcode.com/problems/array-partition-i/description/
class Solution {
    func arrayPairSum(_ nums: [Int]) -> Int {
        let arr = nums.sorted()
        var head = 0
        var sum = 0
        
        while (head < nums.count){
            sum = sum + min(arr[head] , arr[head+1])
            head += 2
        }
        
        return sum
    }
}
