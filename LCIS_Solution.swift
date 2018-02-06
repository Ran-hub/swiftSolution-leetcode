//
//  LCIS_Solution.swift
// problem Statement - https://leetcode.com/problems/longest-continuous-increasing-subsequence/description/
//

class Solution {
    func findLengthOfLCIS(_ nums: [Int]) -> Int {
        var count = 0
        var length = 0
        if nums.isEmpty {return 0}
        else if nums.count == 1 {return 1}
        else{
            for i in 1...nums.count-1{
                if nums[i-1] < nums[i] {
                    print(nums[i-1],nums[i])
                    count += 1
                    
                }
                else {
                    if count >= length
                    {length = count + 1
                        print("len"+"\(length)")
                    }
                    count = 0
                }
                
            }
            if count >= length
            {length = count + 1 }
            return length
        }
    }
}
