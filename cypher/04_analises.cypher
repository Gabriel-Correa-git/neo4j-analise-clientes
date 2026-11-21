
// 1. Produtos mais vendidos
MATCH (p:Pedido)-[:CONTEM]->(prod:Produto)
RETURN
  prod.nome AS Produto,
  COUNT(*) AS Quantidade
ORDER BY Quantidade DESC;

// 2. Clientes que mais gastaram
MATCH (c:Cliente)-[:REALIZOU]->(p:Pedido)
RETURN
  c.nome AS Cliente,
  COUNT(p) AS TotalPedidos,
  SUM(p.valor) AS TotalGasto
ORDER BY TotalGasto DESC;

// 3. Produtos com mais devoluções
MATCH (d:Devolucao)-[:REFERENTE_A]->(p:Produto)
RETURN
  p.nome AS Produto,
  COUNT(d) AS TotalDevolucoes
ORDER BY TotalDevolucoes DESC;
