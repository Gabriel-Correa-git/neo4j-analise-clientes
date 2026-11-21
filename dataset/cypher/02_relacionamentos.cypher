
// Clientes que realizaram pedidos
MATCH (c:Cliente {id: 1}), (p:Pedido {id: 101})
CREATE (c)-[:REALIZOU]->(p);

MATCH (c:Cliente {id: 2}), (p:Pedido {id: 102})
CREATE (c)-[:REALIZOU]->(p);

MATCH (c:Cliente {id: 3}), (p:Pedido {id: 103})
CREATE (c)-[:REALIZOU]->(p);

MATCH (c:Cliente {id: 1}), (p:Pedido {id: 104})
CREATE (c)-[:REALIZOU]->(p);

MATCH (c:Cliente {id: 4}), (p:Pedido {id: 105})
CREATE (c)-[:REALIZOU]->(p);

MATCH (c:Cliente {id: 5}), (p:Pedido {id: 106})
CREATE (c)-[:REALIZOU]->(p);

MATCH (c:Cliente {id: 2}), (p:Pedido {id: 107})
CREATE (c)-[:REALIZOU]->(p);

// Produtos pertencentes às categorias
MATCH (p:Produto {id: 1}), (cat:Categoria {nome: 'Informatica'})
CREATE (p)-[:PERTENCE_A]->(cat);

MATCH (p:Produto {id: 2}), (cat:Categoria {nome: 'Telefonia'})
CREATE (p)-[:PERTENCE_A]->(cat);

MATCH (p:Produto {id: 3}), (cat:Categoria {nome: 'Informatica'})
CREATE (p)-[:PERTENCE_A]->(cat);

MATCH (p:Produto {id: 4}), (cat:Categoria {nome: 'Informatica'})
CREATE (p)-[:PERTENCE_A]->(cat);

MATCH (p:Produto {id: 5}), (cat:Categoria {nome: 'Audio'})
CREATE (p)-[:PERTENCE_A]->(cat);

MATCH (p:Produto {id: 6}), (cat:Categoria {nome: 'Informatica'})
CREATE (p)-[:PERTENCE_A]->(cat);

// Produtos contidos nos pedidos
MATCH (p:Pedido {id: 101}), (prod:Produto {id: 1})
CREATE (p)-[:CONTEM]->(prod);

MATCH (p:Pedido {id: 101}), (prod:Produto {id: 3})
CREATE (p)-[:CONTEM]->(prod);

MATCH (p:Pedido {id: 102}), (prod:Produto {id: 2})
CREATE (p)-[:CONTEM]->(prod);

MATCH (p:Pedido {id: 103}), (prod:Produto {id: 3})
CREATE (p)-[:CONTEM]->(prod);

MATCH (p:Pedido {id: 103}), (prod:Produto {id: 5})
CREATE (p)-[:CONTEM]->(prod);

MATCH (p:Pedido {id: 104}), (prod:Produto {id: 6})
CREATE (p)-[:CONTEM]->(prod);

MATCH (p:Pedido {id: 105}), (prod:Produto {id: 1})
CREATE (p)-[:CONTEM]->(prod);

MATCH (p:Pedido {id: 106}), (prod:Produto {id: 5})
CREATE (p)-[:CONTEM]->(prod);

MATCH (p:Pedido {id: 106}), (prod:Produto {id: 3})
CREATE (p)-[:CONTEM]->(prod);

MATCH (p:Pedido {id: 107}), (prod:Produto {id: 4})
CREATE (p)-[:CONTEM]->(prod);

// Clientes que solicitaram devoluções
MATCH (c:Cliente {id: 1}), (d:Devolucao {id: 1})
CREATE (c)-[:SOLICITOU]->(d);

MATCH (c:Cliente {id: 2}), (d:Devolucao {id: 2})
CREATE (c)-[:SOLICITOU]->(d);

MATCH (c:Cliente {id: 5}), (d:Devolucao {id: 3})
CREATE (c)-[:SOLICITOU]->(d);

// Produtos relacionados às devoluções
MATCH (d:Devolucao {id: 1}), (p:Produto {id: 3})
CREATE (d)-[:REFERENTE_A]->(p);

MATCH (d:Devolucao {id: 2}), (p:Produto {id: 2})
CREATE (d)-[:REFERENTE_A]->(p);

MATCH (d:Devolucao {id: 3}), (p:Produto {id: 5})
CREATE (d)-[:REFERENTE_A]->(p);
