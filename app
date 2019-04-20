class Node:
    def __init__(self,val=None):
        self.val=val
        self.next=None
class LinkedList:
    def __init__(self,name):
        self.head=None
        self.name=name
    def listprint(self):
        printval = self.head
        while printval is not None:
            print(printval.val)
            printval = printval.next

    def addnode(self, NewNode):
        if self.head is None:
            self.head = NewNode
            return
        laste = self.head
        while laste.next != None:
            laste = laste.next
        laste.next=NewNode
        self.listprint()
class nodeofgrapgh:
    def __init__(self,name):
        self.name=name
class edge:
    def __init__(self,n1,n2):
        self.name=None
        self.n1=n1
        self.n2=n2
class grapph:
    def __init__(self):
        self.name=None
    def addnode(self,node):
        node=LinkedList(node)
        print(node)
    def addedge(self,edge):
        self.edge=edge
        LinkedList(self.edge.n1).addnode(self.edge.n2)
        LinkedList(self.edge.n2).addnode(self.edge.n1)
g=grapph()
node1=nodeofgrapgh('1')
node2=nodeofgrapgh('2')
node3=nodeofgrapgh('3')
node4=nodeofgrapgh('4')
node5=nodeofgrapgh('5')
g.addnode(node1)
g.addnode(node2)
g.addnode(node3)
g.addnode(node4)
g.addnode(node5)
A=edge(node1,node5)
B=edge(node1,node2)
C=edge(node3,node4)
D=edge(node2,node3)
E=edge(node1,node4)
g.addedge(A)
g.addedge(B)
g.addedge(C)
g.addedge(D)
g.addedge(E)
print(LinkedList(node1))
