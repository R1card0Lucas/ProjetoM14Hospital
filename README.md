# ProjetoM14Hospital

Neste projeto foi criada uma base de dados de um Hospital. 
Foram criadas as seguintes tabelas:
  - Pessoas
  - Doentes
  - Empregados
  - Hospital
  - Médicos
  - Enfermeiros
  - Enfermaria
  - Instituições
  - Análises
  - Laboratório
De seguida foi criado o DER através das opções de Diagrams no DBeaver.
Foram então inseridos dados e realizadas as consultas e a segurança - através da criação de roles e usuários.

As tabelas foram escolhidas de forma a manter a base de dados organizada, colocando ambos os doentes e os empregados numa tabela principal de pessoas e utilizando chaves estrangeiras para estabelecer a conexão entre essas duas tabelas e a tabela pessoas. As tabelas Médicos e Enfermeiros têm uma chave estrangeira - número de ordem - para realizar a conexão entre estas e a tabela empregados.
A enfermaria tem como chave estrangeira o numOrdem de modo a que seja possível associar um empregado a uma enfermaria. Deste mesmo modo, a chave primária SIGLA vai servir como chave estrangeira na tabela hospital, deste modo realizando a relação entre o hospital e a enfermaria.
A tabela numSS na tabela pessoas está como campo não obrigatório, pois nem toda a gente é sócio da segunrança social. Caso este número exista, vai servir como chave estrangeira na tabela instituições para existir uma relação entre as pessoas e as instituíções.
Os empregados podem ser doentes por isso têm como chave estrangeira o número de identidade.
