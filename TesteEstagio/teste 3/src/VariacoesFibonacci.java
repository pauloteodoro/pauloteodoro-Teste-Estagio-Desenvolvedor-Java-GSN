
public class VariacoesFibonacci {

	static long FibonacciTradicional(int interacoes) {
		if (interacoes < 2) {
			return interacoes;
		} else {
			return FibonacciTradicional(interacoes - 1) + FibonacciTradicional(interacoes - 2);
		}
	}

	static long FibonacciTernario(int interacoes) {
		return (interacoes < 2) ? interacoes : FibonacciTernario(interacoes - 1) + FibonacciTernario(interacoes - 2);
	}

	static long Fibonacci(int interacoes) {
		int numeroAtual = 0;
		int numeroAnterior = 0;
		for (int i = 1; i <= interacoes; i++) {
			if (i == 1) {
				numeroAtual = 1;
				numeroAnterior = 0;
			} else {
				numeroAtual += numeroAnterior;
				numeroAnterior = numeroAtual - numeroAnterior;
			}
		}
		return numeroAtual;
	}
}
