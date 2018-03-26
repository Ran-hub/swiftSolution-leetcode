//
//  Container_With_MostWater.swift
//  Prob: https://leetcode.com/problems/container-with-most-water/description/

class Solution {
    func maxArea(_ height: [Int]) -> Int {
        var result = 0
        var l = 0 ; var b = height.count - 1
        while l < b {
            result = max(result, (min(height[l], height[b]) * (b - l)))
            if height[l] < height[b] { l += 1}
            else{ b -= 1 }
        }
        return result
    }
}
