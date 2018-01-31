
//  AnagramMapping.swift


import Foundation
class Solution {
    func anagramMappings(_ A: [Int], _ B: [Int]) -> [Int] {
        var P = [Int]()
        var map = [Int: [Int]]()
        var list:[Int]
        for i in 0..<B.count {
            list = map[(B[i])] ?? []
            list.append(i)
            map[(B[i])] = list
        }
        var rem: [Int]
        for i in 0..<A.count{
            list = map[(A[i])] ?? []
            P.append(list.remove(at: 0))
            map[(A[i])] = list
        }
        return P
    }
}

let x = Solution()
let A = [1, 2, 3, 4, 5]
let B = [1,3,4,6]
print(x.anagramMappings(A, B))
