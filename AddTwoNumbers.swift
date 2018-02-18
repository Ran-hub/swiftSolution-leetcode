
//  LinkedList.swift
//Problem: https://leetcode.com/problems/add-two-numbers/description/

import Foundation
public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init(_ val: Int) {
        self.val = val
        self.next = nil
    }
}


class Solution {
    var sumList: ListNode?
    var head: ListNode?
    var quo = 0
    var counter = 1
    
    func addTwoNumbers(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        var first = l1
        var second = l2
        
        while (first != nil || second != nil){
            let find = remainder(s: ((first?.val ?? 0) + (second?.val ?? 0)))
            appendNode(node: ListNode(find.remain))
            first = first?.next
            second = second?.next
        }
        
        if (quo > 0){
            appendNode(node: ListNode(quo))
        }
        return head
    }
    
    func remainder(s: Int) -> (remain: Int, quo: Int)
    {
        var sum = s
        sum = quo + sum
        var remain = 0
        if (sum >= 10)
        {
            quo = sum/10
            remain = sum % 10
        }
        else{
            quo = 0
            remain = sum
        }
        return (remain,quo)
    }
    
    func appendNode(node: ListNode) {
        if(sumList == nil){
            sumList = node
            head = node
        }
        else
        {
            sumList = head
            while sumList!.next != nil {
                sumList = sumList!.next
            }
            sumList!.next = node
        }
    }
}

let result = Solution()
func printList(sumList: ListNode?) -> String
{
    
    var text = "["
    var node = sumList
    while node != nil{
        
        text += " \(node!.val) "
        node = node!.next
    }
    return text+"]"
}


