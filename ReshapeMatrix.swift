//
//  ReshapeMatrix.swift
//  Prob: https://leetcode.com/problems/reshape-the-matrix/description/
//
class Solution {
    func matrixReshape(_ nums: [[Int]], _ r: Int, _ c: Int) -> [[Int]] {
        var reshape = [[Int]]()
        var arr = [Int]()
        let gr = nums.count
        let gc = nums[0].count
        
        if !((gr*gc) == (r*c)){
            reshape = nums
        }
        else {
            for i in 0...gr-1{
                for j in 0...gc-1{
                    arr.append(nums[i][j])
                }
            }
            var count = 0
            for i in 0...r-1{
                var dum = [Int]()
                for j in 0...c-1{
                    dum.append(arr[count])
                    count += 1
                }
                reshape.append(dum)
            }
        }
        return reshape
    }
}
