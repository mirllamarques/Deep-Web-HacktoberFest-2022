import java.util.Scanner;

class RemoveIndexLinkedList {

    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        LinkedList linkedList = new LinkedList();

        int[] values = transforma(sc.nextLine().split(" "));
        int index = sc.nextInt();

        adicionaLinkedList(linkedList, values);
        removeIndex(linkedList, index);
        System.out.println(linkedList.toString());
    }

    private static void adicionaLinkedList(LinkedList linkedList, int[] values) {
        for (int value : values) {
            linkedList.addLast(value);
        }
    }

    private static void removeIndex(LinkedList linkedList, int index) {
        linkedList.remove(index);
    }


    private static int[] transforma(String[] valores) {

        int[] values = new int[valores.length];

        for (int i = 0; i < valores.length; i++){
            values[i] = Integer.valueOf(valores[i]);
        }

        return values;
    }
}

class LinkedList {

    private Node head, tail;
    private int size;

    LinkedList() {
        this.size = 0;
        this.head = null;
        this.tail = null;
    }

    public boolean isEmpty() {
        return size == 0;
    }

    public void addLast(int v) {
        Node node = new Node(v);
        if (this.size == 0) {
            this.addFirst(node);
        }
        else {
            this.tail.next = node;
            node.prev = this.tail;
            this.tail = node;
            this.size++;
        }
    }

    public void addFirst(Node node) {
        node.next = head;
        this.head = node;
        this.tail = node;
        this.size++;
    }

    public int getIndex(int i) {
        int index = 0;

        Node aux = this.head;

        while (aux != null) {

            if (index == i) {
                return aux.value;
            }
            index++;
        }

        return -1;
    }

    public void add(int index, int value) {
        Node node = new Node(value);

        if (index == 0) {
            addFirst(node);
        }

        else if (index == this.size - 1) {
            addLast(value);
        }

        else {
            Node aux = this.head;

            for (int i = 0; i > index - 1; i++) {
                aux = aux.next;
            }

            node.next = aux.next;
            aux.next = node;
            node.next.prev = node;
            node.prev = aux;

            this.size++;
        }


    }

    public int indexOf(int v) {
        Node aux = head;
        int index = 0;

        while (aux != null) {
            if (aux.value == v) {
                return index;
            }
            aux = aux.next;
            index++;
        }

        return -1;
    }

    public boolean contains(int v) {
        Node aux = head;

        while (aux != null) {
            if (aux.value == v) {
                return true;
            }
        }

        return false;
    }

    public int remove(int i) {
        Node aux = this.head;
        if (i == 0) {
            return removeFirst();
        }
        else if (i + 1 == size) {
            return removeLast();
        }

        for (int j = 0; j < i; j++) {
            aux = aux.next;
        }

        int num = aux.value;

        aux.prev.next = aux.next;
        aux.next.prev = aux.prev;
        this.size--;

        return num;
    }

    public int removeFirst() {

        int num = this.tail.value;

        if (this.head.next == null) {
            this.head = null;
            this.tail = null;

        }
        else{
            this.head = head.next;
            this.head.prev = null;
        }

        this.size--;
        return num;
    }

    public int removeLast() {
        int num = this.tail.value;

        if (this.head.next == null) {
            this.head = null;
            this.tail = null;

        }
        else{
            this.tail = this.tail.prev;
            this.tail.next = null;
        }

        this.size--;
        return num;
    }

    public void trocaVizinhos(int index) {
        Node aux = this.head;
        if (index == 0) {
            if (size == 2) {

                this.head = this.tail;
                this.tail = aux;

                this.head.next = this.tail;
                this.tail.prev = this.head;
                this.tail.next = null;
                this.head.prev = null;

            }
            else{
                aux.next.next.prev = aux;
                this.head = aux.next;
                aux.next.next.prev.next = aux.next.next;
                this.head.prev = null;
                this.head.next = aux;
                this.head.next.prev = this.head;
            }
        }

        else{
            for (int i = 0; i < index; i++) {
                aux = aux.next;
            }

            aux.prev.next = aux.next;
            aux.next.prev = aux.prev;
            aux.prev = aux.prev.next;
            aux.next = aux.next.next;
            aux.prev.next = aux;
            if (aux.next != null) {
                aux.next.prev = aux;
            }


        }

    }


    public void toStringAll(){
        Node aux = this.head;
        while (aux != null) {
            String valor = "Valor = " + aux.value + " Prev = " +aux.prev + " Next = " + aux.next;
            System.out.println(valor);
            aux = aux.next;
        }
    }

    public String toString() {
        String saida = "";

        Node aux = this.head;

        while (aux != null) {
            saida += aux.value + " ";
            aux = aux.next;
        }

        return saida.trim();
    }

}

class Node {

    public Node prev;
    public Node next;
    public int value;

    Node(int value) {
        this.value = value;

    }

    @Override
    public String toString() {
        return String.valueOf(value);
    }
}
