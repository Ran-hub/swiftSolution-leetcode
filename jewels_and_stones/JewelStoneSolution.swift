//
//  JewelStoneSolution.swift

class Solution {
    func numJewelsInStones(_ J: String, _ S: String) -> Int {
        var result = 0
        
        var set = Set<Character>()
        for j in J{
            set.insert(j)
        }
        
        for s in S{
            if set.contains(s){
                result += 1
            }
        }
        return result
    }
}
