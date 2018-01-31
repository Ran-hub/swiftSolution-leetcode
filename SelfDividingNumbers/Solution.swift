//
//  Solution.swift


class Solution {
    func selfDividingNumbers(_ left: Int, _ right: Int) -> [Int] {
        var result = [Int]()
        func selfdividing(_ i: Int) -> Bool
        {
            var num = i
            var bool = false
            
            while num > 0 {
                if (num != 0 && num%10 != 0 && (i % (num%10) == 0)){bool = true}
                else { return false}
                num = num/10
            }
            
            return bool
        }
        
        for i in left...right{
            if selfdividing(i){result.append(i)}
        }
        
        
        return result}
}

let sol = Solution()
print(sol.selfDividingNumbers(1,22))

