//
//  IntegerToRoman.swift
//  Prob: https://leetcode.com/problems/integer-to-roman/description/
//
class Solution {
    let romDict = [
        0:"", 1:"I",2:"II",3:"III",4:"IV",5:"V",6:"VI",7:"VII",8: "VIII",9:"IX"]
    
    func intToRoman(_ num: Int) -> String {
        var res = ""
        switch num {
        case 1...9:
            res = (romDict[num])!
        case 10...39:
            res = "X"
            res.append(intToRoman(num-10))
        case 40...49:
            res = "XL"
            res.append((romDict[num%10])!)
        case 50...89:
            res = "L"
            res.append(intToRoman(num-50))
        case 90...99:
            res = "XC"
            res.append((romDict[num%10])!)
        case 100...399:
            res = "C"
            res.append(intToRoman(num-100))
        case 400...499:
            res = "CD"
            res.append(intToRoman(num-400))
        case 500...899:
            res = "D"
            res.append(intToRoman(num-500))
        case 900...999:
            res = "CM"
            res.append(intToRoman(num-900))
        case 1000...3999:
            res = "M"
            res.append(intToRoman(num-1000))
        default:
            return ""
        }
        return res
    }
}
//Clean Code Solution
func intToRoman(_ num: Int) -> String {
    let m = ["", "M", "MM", "MMM"]
    let c = ["","C","CC","CCC","CD","D","DC","DCC","DCCC", "CM"]
    let x = ["","X","XX","XXX","XL","L","LX","LXX","LXXX", "XC"]
    let i = ["","I","II","III","IV","V","VI","VII","VIII", "IX"]
    return m[num / 1000] + c[(num % 1000) / 100] + x[(num % 100) / 10] + i[num % 10]
    
}
