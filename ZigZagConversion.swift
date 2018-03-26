//
//  ZigZagConversion.swift
//  Problem: https://leetcode.com/problems/zigzag-conversion/description/

class Solution {
    func convert(_ s: String, _ numRows: Int) -> String {
        
        //start
        var mat = [[Character]]()
        var rev = false
        var i = 0
        
        //helper
        for _ in 0..<numRows{
            mat.append([])
        }
        
        func conStr() -> String{
            let flat = mat.flatMap{$0}
            var s = String()
            for c in flat{
                s.append(c)
            }
            return s
        }
        
        if numRows == 1 { return s}
        else{
            for c in s{
                if rev == true {
                    mat[i].append(c)
                    i -= 1
                    if i == 0 {rev = false}
                }
                else {
                    mat[i].append(c)
                    i += 1
                    if i == numRows-1 {rev = true}
                }
            }
            return conStr()
            
        }
    }
}
