
# Análise de Clientes com Neo4j

## Sobre o projeto

Este projeto tem como objetivo desenvolver um banco de dados orientado a grafos utilizando Neo4j e Cypher, simulando um cenário de comércio eletrônico.

A proposta é representar clientes, produtos, pedidos, categorias e devoluções por meio de nós e relacionamentos, permitindo realizar consultas e análises sobre o comportamento dos clientes e o desempenho dos produtos.

## Tecnologias utilizadas

- Neo4j
- Cypher Query Language
- GitHub
- Arquivos CSV

## Modelagem do grafo

O banco de dados utiliza os seguintes nós:

- Cliente
- Produto
- Pedido
- Categoria
- Devolucao

### Relacionamentos

- Cliente - REALIZOU -> Pedido
- Pedido - CONTEM -> Produto
- Produto - PERTENCE_A -> Categoria
- Cliente - SOLICITOU -> Devolucao
- Devolucao - REFERENTE_A -> Produto

## Estrutura do projeto

```text
neo4j-analise-clientes/
├── README.md
├── dataset/
│   ├── clientes.csv
│   ├── produtos.csv
│   ├── pedidos.csv
│   └── devolucoes.csv
└── cypher/
    ├── 01_criacao_nos.cypher
    ├── 02_relacionamentos.cypher
    └── 03_consultas.cypher
```

## Análises propostas

O projeto permite investigar:

- Produtos mais presentes nos pedidos.
- Clientes com maior volume de compras.
- Valor total de pedidos por cliente.
- Produtos com maior número de devoluções.
- Distribuição de produtos por categoria.

## Objetivo de aprendizagem

Aplicar conceitos de bancos de dados orientados a grafos, modelagem de dados, relacionamentos e consultas Cypher, desenvolvendo conhecimentos práticos em análise de dados com Neo4j.

## Autor

Gabriel Correa
