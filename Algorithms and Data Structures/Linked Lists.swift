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

// add two numbers represented as Linked Lists and return the result as a Linked List 
func addTwoNumbers(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
    var node: ListNode? = ListNode(0)
    let res = node
    var n1 = l1; var n2 = l2
    var carry = 0
    while let nn1 = n1, let nn2 = n2{
        let s = nn1.val + nn2.val + carry
        carry = s / 10

        node!.next = ListNode(s % 10)
        node = node!.next

        n1 = nn1.next
        n2 = nn2.next
    }

    while let nn1 = n1{
        let s = nn1.val + carry
        carry = s / 10

        node!.next = ListNode(s % 10)
        node = node!.next

        n1 = nn1.next
    }

    while let nn2 = n2{
        let s = nn2.val + carry
        carry = s / 10

        node!.next = ListNode(s % 10)
        node = node!.next

        n2 = nn2.next
    }

    if carry > 0{
        node!.next = ListNode(carry)
    }

    return res!.next
}
