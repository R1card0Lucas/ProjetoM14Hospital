/*Segurança*/

CREATE ROLE 'Medico' @localhost;
CREATE ROLE 'Enfermeiros' @localhost;
CREATE ROLE 'Administrativo' @localhost;
CREATE ROLE 'Laboratorios' @localhost;

grant select, insert, update on hospital.doentes to 'Medico' @localhost;
grant select on hospital.analises to 'Medico' @localhost;
grant select on hospital.doentes to 'Medico' @localhost;
grant select on hospital.pessoas to 'Medico' @localhost;
grant select, insert, update on hospital.enfermaria to 'Enfermeiros' @localhost;
grant all privileges on hospital to 'Administrativo' @localhost;
grant select, insert, update on hospital.laboratorio to 'Laboratorios' @localhost;
grant select, insert, update on hospital.analises to 'Laboratorios' @localhost; 


create user 'samuel.luz' identified by 'Luz3';
create user 'nadia.cruseiro' identified by 'Cruseiro5';
create user 'hastia.chama' identified by 'Hastia1';
create user 'bernardo.porto' identified by 'Porto2';
create user 'john.martelo' identified by 'Martelo6';
create user 'vera.termo' identified by 'Termo11';
create user 'aleia.guerra' identified by 'Guerra8';


grant 'Medico' @localhost to 'samuel.luz';
grant 'Medico' @localhost to 'john.martelo';
grant 'Enfermeiros' @localhost to 'nadia.cruseiro';
grant 'Enfermeiros' @localhost to 'bernardo.porto';
grant 'Administrativo' @localhost to 'vera.termo';
grant 'Laboratorios' @localhost to 'aleia.guerra';
grant 'Laboratorios' @localhost to 'hastia.chama';


/*Consultas*/

select numIdentidade, numordem
from empregados 
order by numordem asc;

select p.numidentidade, p.nome
from pessoas p
join instituicoes i on p.numSS = i.numsocio;


select * from pessoas p  
where nome like 'S%';

select * from empregados e 
group by categoria;

select  avg(e.vencimento) from empregados e;


select numIdentidade, nome
 from pessoas p
 where p.numIdentidade  not in
 (select distinct e.numIdentidade 
 from empregados e );


SELECT p.numIdentidade, p.nome
FROM pessoas p
JOIN empregados e ON p.numIdentidade = e.numIdentidade
WHERE e.vencimento >
  (SELECT AVG(e2.vencimento)
   FROM empregados e2
   JOIN pessoas p2 ON e2.numIdentidade = p2.numIdentidade
   where  e2.categoria = "Médicos");