// Created by Ziady Mubaraq on 31/12/2023

import UIKit


// Definition for singly-linked list.
public class ListNode {
  public var val: Int
  public var next: ListNode?
  public init() { self.val = 0; self.next = nil; }
  public init(_ val: Int) { self.val = val; self.next = nil; }
  public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
}

func deleteDuplicates(_ head: ListNode?) -> ListNode? {
  var linked = head
  while linked?.next != nil {
    print(linked.val)
    linked = linked.next
  }
  return head
}

func deleteDuplicates(_ head: ListNode?) -> ListNode? {
  var linked = head
  while linked?.next != nil {
    if linked?.next?.val == linked?.val {
      linked?.next = linked?.next?.next
              continue
    }
    linked = linked?.next
  }
  return head
}

func deleteDuplicates(_ head: ListNode?) -> ListNode? {
  var link = head
  while let next = link?.next {
    if link?.val == next.val {
      link?.next = next.next
    } else {
      link = next
    }
  }
  return head
}

deleteDuplicates(ListNode(1, ListNode(1, ListNode(2))))
