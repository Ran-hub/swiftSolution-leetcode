//
//  SearchInsertPosition.swift
//  
//prob: https://leetcode.com/problems/search-insert-position/description/

func searchInsert(_ nums: [Int], _ target: Int) -> Int {
    var l = 0; var r = nums.count - 1
    if target < nums [0] {return 0}
    else if target > nums[nums.count - 1] {return nums.count}
    else {
        while l != r {
            let mid =  (l+r)/2
            if target == nums[mid] {return mid}
            else if target < nums[mid] {
                r = mid - 1
                if target > nums[r] {return r+1}
            }
            else if target > nums[mid] {
                l = mid + 1
                if target < nums[l] {return l}
            }
        }
    }
    return r
}

