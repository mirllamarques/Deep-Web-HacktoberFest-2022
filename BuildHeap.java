import java.util.Scanner;

class BuildHeap {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);

        int[] values = transforma(sc.nextLine().split(" "));

        HeapClass heap = new HeapClass(values);
        System.out.println(heap.toString());

    }

    private static int[] transforma(String[] valores) {

        int[] values = new int[valores.length];

        for (int i = 0; i < valores.length; i++){
            values[i] = Integer.valueOf(valores[i]);
        }

        return values;
    }
}
