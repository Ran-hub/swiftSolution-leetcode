
//  binarysearch_recursion.swift


func binarysearch(nums: [Int], n:Int, start: Int, end:Int) -> Int
{
    var median = (start+end)/2
    if(n == nums[median]){
        return median
    }
    else if n > nums[median]
    {
        return binarysearch(nums: nums, n: n, start: median+1, end: end)
    }
    else{
        return binarysearch(nums: nums, n: n, start: start, end: median-1)
    }
}

let number = [0,1,5,6,8]
let find = 6
var start = 0
var end = number.count - 1
print(binarysearch(nums: number, n: find, start: start, end: end))
