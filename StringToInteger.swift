//
//  StringToInteger.swift
//  Prob: https://leetcode.com/problems/string-to-integer-atoi/description/

class Solution {
    func myAtoi(_ str: String) -> Int {
        var res = 0
        var checkNum = 0
        var s = str.split(separator: " ")
        if s.isEmpty {return 0}
        
        let dict = ["0":0,"1":1,"2":2,"3":3,"4":4,"5":5,"6":6,"7":7,"8":8,"9":9]
        var flag = false
        
        if s[0].first == "-" {flag = true; s[0] = s[0].dropFirst()}
        else if s[0].first == "+" {s[0] = s[0].dropFirst()}
        
        
        if flag { checkNum = 2147483648} else { checkNum = 2147483647}
        
        for c in s[0]{
            if dict.keys.contains(String(c)){
                res = res*10 + dict[String(c)]!
                if res > checkNum {
                    return flag ? checkNum * -1 : checkNum
                }
            }
            else{
                break
            }
        }
        //Negating the result using flag
        if flag {res = res * -1}
        return res
    }
}
