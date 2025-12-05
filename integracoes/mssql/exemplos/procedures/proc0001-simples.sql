/*
	a procedure abaixo retorna a data atual formatada
*/


create proc spOmniGetDate (
	@format int = 120	
)
AS
/*omni
desc: Obtém a data atual!
tags: default
params:
  format: Formato da data! Usar os mesmos valores aceitáveis pelo convert(varchar,...,format)
resultsets:
  - description: Retorna a data formadata
    columns:
       FormattedDate: texto com a data formatada
*/
	select FormattedDate = convert(varchar(100),getdate(),@format)