//
//  JumpGame.swift
//  
//Prob: https://leetcode.com/problems/jump-game/description/
class Solution {
    func canJump(_ nums: [Int]) -> Bool {
        var res = 0
        for i in 0..<nums.count{
            if i <= res {res = max(res, i+nums[i])}
        }
        return res >= nums.count-1
    }
}
