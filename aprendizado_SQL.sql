create view aprendizado_view as
select 
filmes.titulo,
 avg(alugueis.nota) as media_notas,
 count(alugueis.nota) as num_alugueis
from filmes
left join alugueis 
on filmes.id_filme=alugueis.id_filme
group by filmes.titulo
order by media_notas desc;