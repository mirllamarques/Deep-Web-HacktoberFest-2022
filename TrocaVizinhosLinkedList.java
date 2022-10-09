import java.util.Scanner;

class TrocaVizinhosLinkedList {

    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);

        int[] values = transforma(sc.nextLine().split(" "));
        int index = sc.nextInt();

        LinkedList linkedList = new LinkedList();

        adicionaLinkedList(linkedList, values);
        linkedList.trocaVizinhos(index);
        System.out.println(linkedList.toString());
        linkedList.toStringAll();
    }

    private static void adicionaLinkedList(LinkedList linkedList, int[] values) {
        for (int value : values) {
            linkedList.addLast(value);
        }
    }

    private static int[] transforma(String[] valores) {

        int[] values = new int[valores.length];

        for (int i = 0; i < valores.length; i++){
            values[i] = Integer.valueOf(valores[i]);
        }

        return values;
    }

}

