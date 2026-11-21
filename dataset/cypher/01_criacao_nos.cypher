
// Criar categorias
CREATE
  (:Categoria {nome: 'Informatica'}),
  (:Categoria {nome: 'Telefonia'}),
  (:Categoria {nome: 'Audio'});

// Criar clientes
CREATE
  (:Cliente {id: 1, nome: 'Ana Silva', idade: 28, cidade: 'Santos'}),
  (:Cliente {id: 2, nome: 'Carlos Souza', idade: 35, cidade: 'Sao Vicente'}),
  (:Cliente {id: 3, nome: 'Mariana Lima', idade: 24, cidade: 'Guaruja'}),
  (:Cliente {id: 4, nome: 'Joao Santos', idade: 42, cidade: 'Praia Grande'}),
  (:Cliente {id: 5, nome: 'Beatriz Costa', idade: 31, cidade: 'Santos'});

// Criar produtos
CREATE
  (:Produto {id: 1, nome: 'Notebook', preco: 3500.00}),
  (:Produto {id: 2, nome: 'Smartphone', preco: 2200.00}),
  (:Produto {id: 3, nome: 'Mouse', preco: 80.00}),
  (:Produto {id: 4, nome: 'Teclado', preco: 150.00}),
  (:Produto {id: 5, nome: 'Fone Bluetooth', preco: 250.00}),
  (:Produto {id: 6, nome: 'Monitor', preco: 1200.00});

// Criar pedidos
CREATE
  (:Pedido {id: 101, data: '2026-10-01', valor: 3580.00}),
  (:Pedido {id: 102, data: '2026-10-03', valor: 2200.00}),
  (:Pedido {id: 103, data: '2026-10-05', valor: 230.00}),
  (:Pedido {id: 104, data: '2026-10-10', valor: 1200.00}),
  (:Pedido {id: 105, data: '2026-10-12', valor: 3500.00}),
  (:Pedido {id: 106, data: '2026-10-15', valor: 400.00}),
  (:Pedido {id: 107, data: '2026-10-18', valor: 150.00});

// Criar devoluções
CREATE
  (:Devolucao {id: 1, data: '2026-10-08', motivo: 'Produto com defeito'}),
  (:Devolucao {id: 2, data: '2026-10-12', motivo: 'Produto diferente do esperado'}),
  (:Devolucao {id: 3, data: '2026-10-20', motivo: 'Arrependimento da compra'});
