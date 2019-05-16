package br.com.gsn.teste;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Random;

public class GeradorSequenciaAleatoria {

	public static ArrayList<Integer> gerdadorSequenciaAleatoria() {
		Random random = new Random();
		int auxVerificacao;
		boolean numSorteado;
		ArrayList <Integer> arraySequenciaAleatoria = new ArrayList<Integer>();
		for (int i = 0; i < 6; i++) {
			auxVerificacao = random.nextInt(60 - 1) + 1;
			if (numSorteado = arraySequenciaAleatoria.contains(auxVerificacao)) {
				auxVerificacao = random.nextInt(60 - 1) + 1;
			}
			arraySequenciaAleatoria.add(auxVerificacao);
		}
		Collections.sort(arraySequenciaAleatoria);
		return arraySequenciaAleatoria;
	}

}
