//
//  DistributeCandles.swift
//  Prob: https://leetcode.com/problems/distribute-candies/description/
//
class Solution {
    func distributeCandies(_ candies: [Int]) -> Int {
        var res = 0
        let distinct = Set(candies)
        if candies.count/2 < distinct.count {res = candies.count/2}
        else if candies.count/2 >= distinct.count {res = distinct.count}
        return res
    }
}
