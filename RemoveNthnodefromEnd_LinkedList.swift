//
//  RemoveNthnodefromEnd_LinkedList.swift
class Solution {
    func removeNthFromEnd(_ head: ListNode?, _ n: Int) -> ListNode? {
        let dummy = ListNode(0)
        dummy.next = head
        var start: ListNode? = dummy
        var end: ListNode? = dummy
        var counter = 0
        
        while end != nil {
            if counter <= n {
                end = end?.next
                counter += 1
            }
            else{
                start = start?.next
                end = end?.next
            }
        }
        //delete node
        start?.next = start?.next?.next
        
        return dummy.next
    }
}
