import java.util.ArrayList;
import java.util.Scanner;

class WordCloud {

    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);

        String[] texto = sc.nextLine().split(" ");

        ArrayList<String> palavras = adicionaPalavras(texto);
        int[] recorrencia = contador(texto, palavras);

        Solution solution = new Solution(palavras, recorrencia);
        
        while (true) {
            String entrada = sc.nextLine();
            if (entrada.equals("fim")){
                break;
            }
            System.out.println(solution.vezes(entrada));
        }
    }

    private static ArrayList<String> adicionaPalavras(String[] texto) {
        ArrayList<String> palavras = new ArrayList<>();

        for (String palavra : texto) {
            if (!palavras.contains(palavra)){
                palavras.add(palavra);
            }
        }

        return palavras;
    }

    private static int[] contador(String[] texto, ArrayList<String> palavras) {
        int[] contador = new int[palavras.size()];

        for (String palavra : texto) {
            contador[palavras.indexOf(palavra)]++;
        }
        return contador;
    }
}

class Solution {

    private ArrayList<String> palavras;
    private int[] contador;


    Solution(ArrayList<String> palavras, int[] frequencias) {
        this.palavras = palavras;
        this.contador = frequencias;
    }

    public int vezes(String entrada) {
        return contador[this.palavras.indexOf(entrada)];
    }
}
