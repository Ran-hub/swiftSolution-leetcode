
func lengthOfLIS(_ nums: [Int]) -> [Int] {
    var countArr = [[Int]]()
    for num in nums {countArr.append([num])}
    var j = 0

    for i in 1..<nums.count
    {
        j = 0
        while j < i{
            if nums[j] < nums[i]{
                if countArr[i].count <= countArr[j].count {countArr[i].append(nums[j])}
            }
            j += 1
        }
    }
    return countArr.max { a,b in a.count < b.count}!.sorted()
}

