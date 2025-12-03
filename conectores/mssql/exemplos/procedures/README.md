# Exemplos de Procedures do Power Omni  

Este diretório contém alguns exemplos de como você deve criar as procedures para que o Power Omni consiga invocá-las.  
Basicamente, você usa o comentário em um formato específifco para descrever o que sua procedure faz,os parâmetros e resultados.  

Tudo isso é convertido pela conector para em uma forma que o omni entenda e consiga usar.  

Veja os exemplos `.sql`  desse diretório para caso práticos de como usar.

O formato básico é:

```sql 
CREATE PROC spOmniNomeProc(
	@ParamA int
	,@ParamB varchaR(100) = 'valordefalt'
)
AS
/*omni
description: Exemplo de procedure 
tags: [tagA,tagB]
params:
  ParamA: Descricao do parametro A
  ParamB: Descricao do parametro B
resultsets:
  - description: descricao do primeiro resultado 
    columns:
	  Coluna1: descricao da coluna do primeiro resultado 
	  Coluna2: descricao de outra coluna do primeiro resultado 
	  
  - description: descricao do segundo resultado 
    columns:
	   Coluna1: descricao de uma coluna do segundo resultado
*/

codigo da proc...

```

Note que a unica coisa que diferente que você faz é colocar o comentario com `/*omni` logo abaixo da keyword AS.  
Esse comentário é um YAML (não use tabs para identar, e apenas espaços), onde você descreve sua proc.  
As opções que você pode usar são:  

- description (ou apenas `desc`): Descrição gera do que a procedure faz  
- tags: Array que você pode usar para categorizar procedures e agrupar procedures no conector
- params: Objeto descrevendo cada parametro. Cada key do objeto é o nome do parametro e sua descricao.  
- resultsets: Array do objeto descrevendo cada resultado. Cada item do array contém as seguintes propriedades:
	- description: String descrevendo o resultado respectivo.
	- columns: Objeto descrevendo as colunas do resultado. Cada propriedade é o nome de uma coluna retornada.
	
	

Esses comentário não é obrigatório para que o Power Omni consiga usar, mas, ele é crucial para que você tenha respostas boas, pois isso o ajudará a saber em qual contexto usar e como enviar os valores.  
Além disso, as tags só funcionam se você especificar no comentário.  
Qualquer erro de parse do YAML, pode fazer cmo que as tags não sejam identificadas corretamente.  
Portanto, recomendo que teste o conteúdo do YAML em um validador antes de modificar a procedure.
