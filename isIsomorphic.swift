//
//  isIsomorphic.swift
//  CodePractice
//prob: https://leetcode.com/problems/isomorphic-strings/description/

func isIsomorphic(_ s: String, _ t: String) -> Bool {
    let f = Array(s) ; let g = Array(t)
    var dict = [Character:Character]()
    for i in 0..<s.count{
        if dict.keys.contains(f[i]){
            if !(g[i] == dict[f[i]]){
                return false
            }
        }
        else if dict.values.contains(g[i]){
            return false
        }
        else{
            dict[f[i]] = g[i]
        }
    }
    return true
}
