//
//  Solution.swift


class Solution {
    func search(_ nums: [Int], _ target: Int) -> Int {
        if nums == [] {return -1}
        var low = 0 ; var high = nums.count-1; var mid = 0
        let pivot: Int
        while(low<high){
            mid = (low+high)/2
            if !(nums[mid]<nums[high]){low = mid+1}
            else {high = mid}
        }
        pivot = low
        high = nums.count-1
        if target == nums[pivot]{return pivot}
        else if (target >= nums[pivot] && target <= nums[high]){
            while(low <= high){
                mid = (low+high)/2
                if target == nums[mid] {return mid}
                else if(target < nums[mid]){high = mid - 1}
                else {low = mid + 1}
            }
        }
        else {
            high = pivot-1
            low = 0
            while(low <= high){
                mid = (low+high)/2
                if target == nums[mid] {return mid}
                else if(target < nums[mid]){high = mid - 1}
                else {low = mid + 1}
            }
        }
        
        return -1}
}
