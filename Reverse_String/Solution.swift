//
//  Solution.swift
//  
//Importing Foundation for String manipulation
import Foundation


// Solution 1: I have created a function "reverse" to perform reversing of a string.
class Solution1 {
    
    func reverse(_ s: String) -> String
    {
        var s = s
        var temp = ""
        while s != "" {
            temp.append(s.last!)
            s = String(s.dropLast())
        }
        return temp
    }
    
    var res = ""
    func reverseWords(_ s: String) -> String {
        var str = ""
        for c in s{
            if c == " "{
                res.append(reverse(str) + " ")
                str = ""
            }
            else{str.append(c)}
        }
        res.append(reverse(str))
        return res
        
    }
}

// Solution 2. Import Foundation and use the "reversed" function to produce the same result
class Solution2 {
    func reverseWords(_ s: String) -> String {
        let strings = s.components(separatedBy: " ")
        var result = ""
        for i in 0..<strings.count {
            result += String(strings[i].characters.reversed())
            if i != strings.count - 1 {
                result += " "
            }
        }
        return result
    }
}
