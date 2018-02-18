//
//  hamming distance problem.swift
// Problem : https://leetcode.com/problems/hamming-distance/description/

import Foundation
//Hamming distance

class Solution {
    func hammingDistance(_ x: Int, _ y: Int) -> Int {
        var xStr :String
        var yStr : String
        var count = 0
        (xStr,yStr) = binaryConvert(x, y)
        var index = xStr.startIndex
        for _ in 0..<xStr.count{
            print(xStr[index], yStr[index])
            if (xStr[index] != yStr[index]){count += 1}
            index = xStr.index(index, offsetBy: 1)
        }
        return count
    }
    
    func binaryConvert(_ x : Int, _ y : Int) -> (String, String){
        var xBinary = String(x, radix: 2)
        var yBinary = String(y, radix: 2)
        let toSize = max(xBinary.count, yBinary.count)
        func pad(string : String, toSize: Int) -> String{
            var padded = string
            for _ in 0..<(toSize - string.count) {
                padded = "0" + padded
            }
            return padded
        }
        return(pad(string: xBinary, toSize: toSize), pad(string: yBinary, toSize: toSize))
    }
}
let x = 5
let y = 55
let sol = Solution()
print(sol.hammingDistance(x,y))

class Solution1 {
    func hammingDistance(_ x: Int, _ y: Int) -> Int {
        var p = x ^ y
        var dif = 0
        while p != 0 {
            p = ( p - 1) & p
            dif += 1
        }
        return dif
    }
    
}
