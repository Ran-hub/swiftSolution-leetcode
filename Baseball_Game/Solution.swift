//
//  Solution.swift
// Problem Link
// https://leetcode.com/problems/baseball-game/description/
class Solution {
    func calPoints(_ ops: [String]) -> Int {
        var stack = [Int]()
        for str in ops{
            if str == "D"
            {
                let a = (stack.popLast() ?? 0)
                stack.append(a)
                stack.append(2*a)
            }
            else if str == "C"
            { stack.popLast() }
            else if str == "+"
            { let a = stack.popLast() ?? 0
                let b = stack.popLast() ?? 0
                stack.append(b)
                stack.append(a)
                stack.append(a+b)
            }
            else{
                stack.append(Int(str)!)
            }
        }
        
        var res = 0
        for i in stack
        {
            res += i
        }
        return res
        
    }
}
