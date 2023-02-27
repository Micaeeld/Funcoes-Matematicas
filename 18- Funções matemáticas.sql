SELECT (23+((25-2)/2)*45) as result; #Resolve a operação

SELECT CEILING(12.1324234234234) as result; #Arrendonda pra cima

SELECT FLOOR(12.1324234234234) as result; #Arredonda pra baixo

SELECT ROUND(12.1324234234234) as result; #Arredonda pro número inteiro mais próximo

SELECT RAND() as result; #Nùmero aleatório

SELECT NUMERO, QUANTIDADE, PRECO, ROUND(QUANTIDADE * PRECO, 3) as FATURAMENTO from itens_notas_fiscais; # 3 casas decimais

#EXERCÍCIO Na tabela de notas fiscais temos o valor do imposto. 
#Já na tabela de itens temos a quantidade e o faturamento.
#Calcule o valor do imposto pago no ano de 2016 arredondando para o menor inteiro.


SELECT YEAR(DATA_VENDA), FLOOR(SUM(IMPOSTO * (QUANTIDADE * PRECO))) as LIQUID
FROM notas_fiscais NF
INNER JOIN itens_notas_fiscais INF ON NF.NUMERO = INF.NUMERO
WHERE YEAR(DATA_VENDA) = 2016
GROUP BY YEAR(DATA_VENDA)


