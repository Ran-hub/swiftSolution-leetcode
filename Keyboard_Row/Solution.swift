//
//  Solution.swift

//Link to problem
// https://leetcode.com/problems/keyboard-row/description/

class Solution {
    let dic: [String : Set<Character>] = ["r1" : ["q","w", "e", "r", "t", "y", "u", "i", "o", "p"],"r2" : ["a", "s", "d", "f", "g", "h", "j", "k", "l"],"r3" : ["z", "x", "c", "v", "b", "n", "m"]]
    
    func ispossible(_ word: String) -> Bool{
        if word == "" {return false}
        if dic["r1"]!.contains(word.first!){
            for c in word{
                if !(dic["r1"]!.contains(c)){return false}
            }
        }
        else if dic["r2"]!.contains(word.first!){
            for c in word{
                if !(dic["r2"]!.contains(c)){return false}
            }
        }
        else{
            for c in word{
                if !(dic["r3"]!.contains(c)){return false}
            }
        }
        return true
    }
    func findWords(_ words: [String]) -> [String] {
        var res = [String]()
        for word in words{
            if ispossible(word.lowercased()){res.append(word)}
        }
        return res
    }
}
let sol = Solution()
print(sol.findWords(["sfhsjdf","xcvcXv", "mkohih", "", "true"]))


