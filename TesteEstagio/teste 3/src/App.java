
public class App {

	public static void main(String[] args) {

		VariacoesFibonacci fib = new VariacoesFibonacci();
		System.out.println("Variações Fibonacci :");
		System.out.print("Iterativa: ");
		for (int i = 0; i < 20; i++) {
			System.out.print(" " + fib.Fibonacci(i));
		}
		System.out.println("\n");
		System.out.print("Recursiva com uso de operador ternário: ");
		for (int i = 0; i < 20; i++) {
			System.out.print(" " + fib.FibonacciTernario(i));
		}
		System.out.println("\n");
		System.out.print("Recursiva tradicional: ");
		for (int i = 0; i < 20; i++) {
			System.out.print(" " + fib.FibonacciTradicional(i));
		}

	}

}
