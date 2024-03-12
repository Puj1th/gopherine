package structs
import "fmt"
type Node struct {
    data int
    prev *Node
    next *Node
}

type DoublyLinkedList struct {
    head *Node
    tail *Node
}

func (dll *DoublyLinkedList) Insert(data int) {
    newNode := &Node{data: data}
    if dll.head == nil {
        dll.head = newNode
        dll.tail = newNode
    } else if data < dll.head.data {
        newNode.next = dll.head
        dll.head.prev = newNode
        dll.head = newNode
    } else {
        current := dll.head
        for current.next != nil && current.next.data < data {
            current = current.next
        }
        if current.next == nil {
            current.next = newNode
            newNode.prev = current
            dll.tail = newNode
        } else {
            newNode.next = current.next
            newNode.prev = current
            current.next.prev = newNode
            current.next = newNode
        }
    }
}

func (dll *DoublyLinkedList) Append(data int) {
    newNode := &Node{data: data}
    if dll.tail == nil {
        dll.head = newNode
        dll.tail = newNode
    } else {
        newNode.prev = dll.tail
        dll.tail.next = newNode
        dll.tail = newNode
    }
}

func (dll *DoublyLinkedList) Display() {
    current := dll.head
    for current != nil {
        fmt.Print(current.data, " ")
        current = current.next
    }
   fmt.Println()
}