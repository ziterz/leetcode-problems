import UIKit

public class ListNode {
  public var val: Int
  public var next: ListNode?
  public init() { self.val = 0; self.next = nil; }
  public init(_ val: Int) { self.val = val; self.next = nil; }
  public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
}

func mergeTwoLists(_ list1: ListNode?, _ list2: ListNode?) -> ListNode? {
  if list1 == nil { return list2 }
  if list2 == nil { return list1 }

  if list1?.val ?? 0 < list2?.val ?? 0 {
    list1?.next = mergeTwoLists(list1?.next, list2); return list1
  } else {
    list2?.next = mergeTwoLists(list2?.next, list1); return list2
  }
}

print(mergeTwoLists(ListNode(1, ListNode(2, ListNode(4))), ListNode(1, ListNode(3, ListNode(4)))))
