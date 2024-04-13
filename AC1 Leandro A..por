// Leandro de Andrade Costa
// RA: 241001068

programa
{
cadeia nome
real salariob, salariol, salarioh, inssa, irpf, irpfa, salarioa, inssb, inssc, inssd, inss
inteiro horas
	funcao inicio()
	{
		escreva ("digite seu nome: ")
		leia (nome)
		escreva ("digite seu salário bruto: ")
		leia (salariob)
		escreva ("digite suas horas trabalhadas: ")
		leia (horas)

		salarioh = salariob / 160
		salarioa = salarioh * horas - salariob
		
		se (salariob >= 0 e salariob <= 2259.20)
		{ irpf= 0}
		se (salariob >= 2259.21 e salariob <= 2826.65)
		{  irpfa = salariob * 0.075 
			irpf = irpfa - 169.44}
		se (salariob >= 2826.66 e salariob <= 3751.06)
		{ irpfa = salariob * 0.15
			irpf = irpfa - 381.44}
		se (salariob >= 3751.07 e salariob <= 4664.68)
		{ irpfa = salariob * 0.225
			irpf = irpfa - 662.77}
		se (salariob >= 4664.69)
		{ irpfa = salariob * 0.275
			irpf = irpfa - 896}

			se (salariob >= 0 e salariob <= 1412)
			{ inssa = 1412 * 0.075
				inss = inssa}
			senao
			{ inssa = 1412 * 0.075
				inss = inssa}
			se (salariob >= 1412.01 e salariob <= 2666.68)
			{ inssa = 1412 * 0.075
				inssb = (salariob - 1412) * 0.09
					inss = inssa + inssb}
			senao
			{ inssa = 1412 * 0.075
				inssb = (2666.68 - 1412) * 0.09
					inss = inssa + inssb}
			se (salariob >= 2666.69 e salariob <= 4000.03)
			{ inssa = 1412 * 0.075
				inssb = (2666.68 - 1412) * 0.09
					inssc = (salariob - 2666.68) * 0.12
						inss = inssa + inssb + inssc}
			senao
			{ inssa = 1412 * 0.075
				inssb = (2666.68 - 1412) * 0.09
					inssc = (4000.03 - 2666.68) * 0.12
						inss = inssa + inssb + inssc}
			se (salariob >= 4000.04 e salariob <= 7786.02)
			{ inssa = 1412 * 0.075
				inssb = (2666.68 - 1412) * 0.09
					inssc = (4000.03 - 2666.68) * 0.12
						inssd = (salariob - 4000.03) * 0.14
							inss = inssa + inssb + inssc + inssd}
			senao			
			{ inssa = 1412 * 0.075
				inssb = (2666.68 - 1412) * 0.09
					inssc = (4000.03 - 2666.68) * 0.12
						inssd = (7786.02 - 4000.03) * 0.14
							inss = inssa + inssb + inssc + inssd}
			

			salariol = salariob - inss - irpf + salarioa
			
			escreva ("*** FOLHA DE PAGAMENTO ***\n")
			escreva ("Nome do colaborador.....: ")
			escreva (nome, "\n")
			escreva ("Valor do Salario Bruto..: ")
			escreva (salariob, "\n")
			escreva ("Horas trabalhadas no mês: ")
			escreva (horas, "\n")
			escreva ("\n")
			escreva ("*** Calculo da Folha de Pagamento *** \n")
			escreva ("Colaborador: ")
			escreva (nome, "\n")
			escreva ("Salario Bruto........: ")
			escreva (salariob, "\n")
			escreva ("IRPF Retido..........: ")
			escreva (irpf, "\n")
			escreva ("INSS Retido..........: ")
			escreva (inss, "\n")
			se ( salarioa < 0)
			{ escreva ("Desconto por atraso..: ")
			escreva (salarioa, "\n")}
			senao
			{ escreva ("Hora extra a receber.: ")
			escreva (salarioa, "\n")}
			escreva ("Salario Liquido......: ")
			escreva (salariol)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 2820; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */