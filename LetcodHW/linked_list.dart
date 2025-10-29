class Node {
  String? data;
  Node? next;
  Node({this.data, this.next});
}

class LinkedList {
  Node? head;
  void add(String data) {
    Node newNode = Node(data: data);
    if (head == Null) {
      head = newNode;
    } else {
      Node? current = head;
      while (current!.next != null) {
        current = current.next;
      }
      current.next = newNode;
    }
  }
}
