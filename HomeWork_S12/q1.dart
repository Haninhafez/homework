import 'dart:collection';

final class ListNode {
  int val;
  ListNode? next;
  ListNode([this.val = 0, this.next]);
}

ListNode? reverseList(ListNode? head) {
  ListNode? prev = null;
  ListNode? current = head;

  while (current != null) {
    ListNode? next = current.next;
    current.next = prev;
    prev = current;
    current = next;
  }
  return prev;
}
