//
//  LongestWordinDict.swift
//  Prob: https://leetcode.com/problems/longest-word-in-dictionary-through-deleting/description/



class Solution {
    func maximum(_ a: String, _ b: String) -> String{
        if a.count == b.count { return a < b ? a : b}
        return a.count > b.count ? a : b
    }
    
    func isSubsequence(_ word: [Character],_ s: String) -> Bool{
        var j = 0
        for i in s{
            if word[j] == i{
                j += 1
                if j == word.count {return true}
            }
        }
        return false
    }
    
    func findLongestWord(_ s: String, _ d: [String]) -> String {
        var res = ""
        
        for word in d{
            if isSubsequence(Array(word),s){
                res = maximum(res,word)
            }
        }
        
        return res
    }
}
