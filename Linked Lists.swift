public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init(_ val: Int) {
        self.val = val
        self.next = nil
  }
}

func reverseList(_ head: ListNode?) -> ListNode? {
    var node = head
    var prev: ListNode? = nil
    while node != nil{
        var tmpNext = node!.next
        node!.next = prev
        prev = node
        node = tmpNext
    }
    return prev
}
