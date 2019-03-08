public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init(_ val: Int) {
        self.val = val
        self.next = nil
  }
}

var l1 = ListNode(0)
l1.next = ListNode(1)
l1.next!.next = ListNode(2)
l1.next!.next!.next = ListNode(3)

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
func printList(_ head: ListNode?){
    var node = head
    while node != nil{
        print(node!.value)
        node = node!.next
    }
}
