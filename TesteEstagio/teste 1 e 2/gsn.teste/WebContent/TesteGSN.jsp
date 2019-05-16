<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Tabela Lotérica</title>
    <style>
        :root{
            /* Cor do estilo da tabela 1 */
            --cor-tabela-1: #238C48;
            /* Cor do estilo da tabela 2 */
            --cor-tabela-2: #2A5CBF;
            /* Cor do estilo da tabela 3 */
            --cor-tabela-3: #D9BB25;
        }
        .tabela1, .tabela2, .tabela3{
            text-align: center;
            font-family: sans-serif;
            text-transform: uppercase;
        }
        .table{
            max-width: 800px;
            margin: 10px auto;
            padding-left: 5%;
            display: flex;
            flex-wrap: wrap;
            justify-content: flex-start
        }


        /* Classe para utilizar no estilo de cada célula da tabela */
        .num-field{
            /* Largura da celula */
            width: 15%;
            /* Altura da celula */
            height: 20px;
            /* Alinha o texto da celula ao centro */
            text-align: center;
            /* Deixando o texto em negrito */
            font-weight: 600;
            
            /* Adiciona uma margem */
            margin: 0.1rem;
        }
        /* Estilo da Tabela 1 */
        .table-style-1 .num-field{
            /* Coloca uma borda verde na celula */
            border: 1px solid var(--cor-tabela-1);
        }
        .table-style-1 .num-field.active{ 
            background-color: var(--cor-tabela-1);
            color: #fafafa;
        }
        /* Estilo da Tabela 2 */
        .table-style-2 .num-field{
            /* Coloca uma borda na celula */
            border: 1px solid var(--cor-tabela-2);
        }
        /* Estilo da celula ativa para o estilo da tabela 2*/
        .table-style-2 .num-field.active{ 
            background-color: var(--cor-tabela-2);
            color: #fafafa;
        }
        /* Estilo da Tabela 3 */
        .table-style-3 .num-field{
            /* Coloca uma borda na celula */
            border: 1px solid var(--cor-tabela-3);
        }
        /* Estilo da celula ativa para o estilo da tabela 3*/
        .table-style-3 .num-field.active{ 
            background-color: var(--cor-tabela-3);
            color: #fafafa;
        }        
    </style>
</head>
<body>
	<%@ page import="br.com.gsn.teste.*"%>
	
	<%
			GeradorSequenciaAleatoria sorteio = new GeradorSequenciaAleatoria();
		%>	
	<div class="tabela1">
            <h2><u> Jogo 1 </u></h2>
            <div class="table table-style-1">
            <%
            	ArrayList listaSorteio1 = new ArrayList();	
                        listaSorteio1 = sorteio.gerdadorSequenciaAleatoria();
                        	for (int i = 1; i <= 60; i++) {
                        		String nome = "num" + i;
                        		boolean numSorteado ;
                        		if( numSorteado = listaSorteio1.contains(i)){
                        			out.println("<input type='text' name='" + nome + "' id='" + nome + "'  class='num-field active' readonly='true' value='" + i + "'>");
                        		}else{
                        		out.println("<input type='text' name='" + nome + "' id='" + nome + "'  class='num-field' readonly='true' value='" + i + "'>");
                        			}
                        		}
                        	
                        	out.println("<u>Numeros sorteados:</u>  "+ listaSorteio1);
            %>
            </div>
            <h2><u> Jogo 2 </u></h2>
            <div class="table table-style-2">
            <%
            	ArrayList listaSorteio2 = new ArrayList();	
                        listaSorteio2 = sorteio.gerdadorSequenciaAleatoria();
                        	for (int i = 1; i <= 60; i++) {
                        		String nome = "num" + i;
                        		boolean numSorteado = listaSorteio2.contains(i);
                        		if( numSorteado = listaSorteio2.contains(i)){
                        			out.println("<input type='text' name='" + nome + "' id='" + nome + "'  class='num-field active' readonly='true' value='" + i + "'>");
                        		}else{
                            		out.println("<input type='text' name='" + nome + "' id='" + nome + "'  class='num-field' readonly='true' value='" + i + "'>");
                    			}
                    		}
                    	
                    	out.println("<u>Numeros sorteados:</u>  "+ listaSorteio2);
            %>
            </div>
            <h2><u> Jogo 3 </u></h2>
            <div class="table table-style-3">
            <%
            	ArrayList listaSorteio3 = new ArrayList();	
                        listaSorteio3 = sorteio.gerdadorSequenciaAleatoria();
                        	for (int i = 1; i <= 60; i++) {
                        		String nome = "num" + i;
                        		
                        		boolean numSorteado = listaSorteio3.contains(i);
                        		if( numSorteado = listaSorteio3.contains(i)){
                        			out.println("<input type='text' name='" + nome + "' id='" + nome + "'  class='num-field active' readonly='true' value='" + i + "'>");
                        		}else{
                            		out.println("<input type='text' name='" + nome + "' id='" + nome + "'  class='num-field' readonly='true' value='" + i + "'>");
                    			}
                    		}
                    	
                    	out.println("<u>Numeros sorteados</u>   : "+ listaSorteio3);
            %>
            </div>
    </div>	
   
</body>

</html>