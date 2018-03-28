//
//  RemoveDuplicate_SortedArray.swift
//  https://leetcode.com/problems/remove-duplicates-from-sorted-array/description/
class Solution {
    func removeDuplicates(_ nums: inout [Int]) -> Int {
        var res = nums.count
        if res == 0 {return 0}
        if res == 1 {return res}
        var ptr = 0
        var s = Set<Int>()
        s = []
        for _ in 0..<res {
            if s.contains(nums[ptr]){
                nums.remove(at: ptr)
            }
            else{
                s.insert(nums[ptr])
                ptr += 1
            }
        }
        res = nums.count
        return res
    }
}
