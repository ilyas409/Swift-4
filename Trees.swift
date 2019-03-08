 public class TreeNode {
      public var val: Int
      public var left: TreeNode?
      public var right: TreeNode?
      public init(_ val: Int) {
          self.val = val
          self.left = nil
          self.right = nil
      }
}

func isValidBST(_ root: TreeNode?) -> Bool {
     func aux(_ node: TreeNode?, _ left: Int = Int.min, _ right: Int = Int.max) ->Bool{)
        guard let node = node else {
            return true
        }
        if node.val >= right || node.val <= left{
            return false
        }
        return aux(node.left, left, node.val) && aux(node.right, node.val, right)
    }
    return aux(root)
}

func isSymmetric(_ root: TreeNode?) -> Bool {
        
    func isMirror(_ t1: TreeNode?, _ t2: TreeNode?) -> Bool {
        if (t1 == nil && t2 == nil){
            return true
        }
        if (t1 == nil || t2 == nil){
            return false
        }
        return (t1!.val == t2!.val) 
            && isMirror(t1!.right, t2!.left)
            && isMirror(t1!.left, t2!.right)
    }
        
    guard let node = root else {
        return true
    }
    return isMirror(node, node)
}
