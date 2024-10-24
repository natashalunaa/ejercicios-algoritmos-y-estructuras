//pract 4.
import java.util.LinkedList;
import java.util.Random;

public class pract4 {

    // ACT 1.

    /**
     * Función para generar una lista de N números enteros aleatorios.
     */
    private static LinkedList<Integer> generarListAleatoria (int N){
        LinkedList<Integer> lista = new LinkedList<>();
        Random random = new Random();
        
        // generar N números aleatorios y añadirlos a la lista
        for (int i = 0; i < N; i++) {
            int numRandom = random.nextInt(100); // Genera números entre 0 y 99
            lista.add(numRandom); 
        }
        
        return lista;
    }


    // ACT 2.

    /**
     * Función que verifica si un número está en la lista.
     */
    private static boolean pertenece (LinkedList<Integer> lista, int num){
        // uso del método contains de LinkedList para verificar si el número está en la lista
        return lista.contains(numero);
    }

    // ACT 4.

    /**
     * método BubbleSort sobre una lista de enteros utilizando la clase ArrayList.
     */

}

public static void main(String[] args) {
    // 1. lista aleatoria
    
    int N = 10;
    LinkedList<Integer> randomNum = generarListAleatoria(N);
    System.out.println("Lista generada: " + randomNum);

    // 2. buscar número en una lista dada

    int numeroABuscar = 5;
    boolean encontrado = pertenece (randomNum, numeroABuscar);
    if (encontrado) {
        System.out.println("El número " + numeroABuscar + " se encuentra en la lista.");
    } else {
        System.out.println("El número " + numeroABuscar + " no se encuentra en la lista.");
    }

    // 4. BubbleSort sobre lista de enteros ArrayList

    
}
}
