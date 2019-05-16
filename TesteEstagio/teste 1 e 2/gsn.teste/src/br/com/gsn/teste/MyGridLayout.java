package br.com.gsn.teste;
import java.awt.*;
import javax.swing.*;

public class MyGridLayout {
	JFrame f;

	MyGridLayout() {
		f = new JFrame();
		int cont=1;
		for (int j = 0; j < 6; j++) {
			for (int i = 0; i < 10; i++) {
				String text = "    "+ cont;
				JLabel b9 = new JLabel(text);
				f.add(b9);
				cont++;
			}
			
		}	

		f.setLayout(new GridLayout(10, 6));
		// setting grid layout of 3 rows and 3 columns

		f.setSize(500, 200);
		f.setVisible(true);
	}

	
}