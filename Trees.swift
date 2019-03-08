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
     func aux(_ node: TreeNode?, _ left: Int = Int.min, _ right: Int = Int.max) ->Bool{
        //print(left, right)
        guard let node = node else {
            return true
        }
        if node.val >= right || node.val <= left{
            //print(left, node.val, right)
            return false
        }
        return aux(node.left, left, node.val) && aux(node.right, node.val, right)
    }
    return aux(root)
}
