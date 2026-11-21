
// 1. Visualizar todos os clientes
MATCH (c:Cliente)
RETURN c;

// 2. Listar os pedidos e seus respectivos clientes
MATCH (c:Cliente)-[:REALIZOU]->(p:Pedido)
RETURN c.nome AS cliente, p.id AS pedido, p.valor AS valor
ORDER BY valor DESC;

// 3. Identificar os produtos mais presentes nos pedidos
MATCH (p:Pedido)-[:CONTEM]->(prod:Produto)
RETURN prod.nome AS produto, COUNT(*) AS quantidade
ORDER BY quantidade DESC;

// 4. Identificar os produtos com mais devoluções
MATCH (d:Devolucao)-[:REFERENTE_A]->(p:Produto)
RETURN p.nome AS produto, COUNT(d) AS total_devolucoes
ORDER BY total_devolucoes DESC;

// 5. Analisar os clientes que mais compraram
MATCH (c:Cliente)-[:REALIZOU]->(p:Pedido)
RETURN c.nome AS cliente,
       COUNT(p) AS total_pedidos,
       SUM(p.valor) AS valor_total
ORDER BY valor_total DESC;

// 6. Consultar produtos por categoria
MATCH (p:Produto)-[:PERTENCE_A]->(cat:Categoria)
RETURN cat.nome AS categoria,
       COLLECT(p.nome) AS produtos;

// 7. Visualizar o caminho completo de uma compra
MATCH (c:Cliente)-[:REALIZOU]->(p:Pedido)-[:CONTEM]->(prod:Produto)
RETURN c, p, prod;
