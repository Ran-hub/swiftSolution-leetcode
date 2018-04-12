//
//  BinaryTreePruning.swift
class Solution {
    func pruneTree(_ root: TreeNode?) -> TreeNode? {
        var tree = root
        var head = tree
        func traverse(_ head: TreeNode?) -> Bool{
            if head?.left == nil && head?.right == nil{
                if head?.val == 1{
                    return true
                }
                return false
            }
            
            let x = traverse(head?.left)
            let y = traverse(head?.right)
            
            if x == false {head?.left = nil}
            if y == false {head?.right = nil}
            
            if x == true || y == true || head?.val == 1 {
                return true
            }
            
            head?.left = nil; head?.right = nil
            return false
        }
        
        if !(traverse(head)){return nil}
        return tree
    }
}
