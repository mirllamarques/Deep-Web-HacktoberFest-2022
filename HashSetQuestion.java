
import java.util.Arrays;
import java.util.Scanner;

class HashSetQuestion {
    public static void main(String[] args) {

        Scanner sc = new Scanner(System.in);

        int tamanho = sc.nextInt();
        HashSet hash = new HashSet(tamanho);

        while (true){
            String[] entrada = sc.nextLine().split(" ");

            if (entrada[0].equals("end")){
                break;
            }else {
                switcher(entrada, hash);
            }
        }
    }

    private static void switcher(String[] entrada, HashSet hashSet) {

        switch (entrada[0]) {

            case "put" :
                System.out.println(hashSet.put(entrada[1]));
                break;

            case "remove" :
                System.out.println(hashSet.remove(entrada[1]));
                break;

            case "contains" :
                System.out.println(hashSet.contains(entrada[1]));
                break;
        }
    }
}

class HashSet {

    private String[] values;
    private int size;
    private int capacity;

    HashSet(int tamanho){
        this.capacity = tamanho;
        this.values = new String[this.capacity];
    }

    public String put(String value) {

        if (!isFull() && !contains(value)){
            int sondagem = 0;

            while (sondagem < this.capacity) {

                int pos = (hash(value) + sondagem) % this.capacity;

                if (this.values[pos] == null) {
                    this.values[pos] = value;
                    break;
                }

                sondagem ++;
            }
            this.size++;
        }

        return Arrays.toString(this.values);
    }


    public String remove(String value) {

        if (!isEmpty()) {

            int sondagem = 0;

            while (sondagem < this.capacity) {
                int pos = (hash(value) + sondagem) % this.capacity;

                if (this.values[pos] != null && this.values[pos].equals(value)){
                    this.values[pos] = null;
                    break;
                }

                sondagem++;
            }

            this.size--;
        }

        return Arrays.toString(this.values);
    }

    public boolean contains(String value) {

        if (!isEmpty()){
            for (int i = 0; i < this.capacity; i++) {
                String v = this.values[i];
                if (v != null && v.equals(value)){
                    return true;
                }

            }
        }

        return false;
    }

    private int hash(String value) {
        int key = Integer.valueOf(value);
        return key % this.capacity;
    }

    private boolean isFull() {
        return this.capacity == this.size;
    }

    private boolean isEmpty() {
        return this.size == 0;
    }
}
