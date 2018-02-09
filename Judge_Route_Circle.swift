//
//  Judge_Route_Circle.swift
//  
//Prob: https://leetcode.com/problems/judge-route-circle/description/
class Solution {
    func judgeCircle(_ moves: String) -> Bool {
        if moves == "" {return false}
        var result = false
        var count = 0
        var cnt = 0
        for i in moves{
            if i == "U" {count += 1}
            else if i == "D"{count -= 1}
            else if i == "L" {cnt += 1}
            else if i == "R" {cnt -= 1}
        }
        
        if (count == 0 && cnt == 0){result = true}
        return result
        
    }
}
