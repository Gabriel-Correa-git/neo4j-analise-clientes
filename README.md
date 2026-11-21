# Análise de Clientes com Neo4j

## Sobre o projeto

Este projeto apresenta a construção de um banco de dados orientado a grafos utilizando **Neo4j** e **Cypher**, com foco na análise de clientes, produtos, pedidos, categorias e devoluções.

O objetivo é demonstrar como os relacionamentos entre diferentes informações podem facilitar consultas e análises de dados comerciais.

## Tecnologias utilizadas

- Neo4j Aura
- Cypher Query Language
- GitHub

## Modelagem do grafo

O banco de dados foi desenvolvido com cinco tipos de nós:

| Nó | Descrição |
|---|---|
| Cliente | Informações dos clientes |
| Produto | Produtos comercializados |
| Pedido | Pedidos realizados |
| Categoria | Classificação dos produtos |
| Devolucao | Registros de devoluções |

### Relacionamentos

- `REALIZOU`: conecta clientes aos pedidos.
- `CONTEM`: conecta pedidos aos produtos.
- `PERTENCE_A`: conecta produtos às categorias.
- `SOLICITOU`: conecta clientes às devoluções.
- `REFERENTE_A`: conecta devoluções aos produtos.

## Estrutura do banco

O grafo desenvolvido possui:

- 24 nós;
- 29 relacionamentos;
- 5 tipos de nós;
- 5 tipos de relacionamentos.

## Consultas e análises

Foram desenvolvidas consultas em Cypher para:

1. Identificar os produtos mais vendidos.
2. Analisar os clientes que mais gastaram.
3. Identificar os produtos com maior quantidade de devoluções.
4. Consultar os relacionamentos entre clientes, pedidos e produtos.

## Evidências

As capturas de tela da execução e visualização do projeto estão disponíveis na pasta `evidencias`.

## Aprendizados

Durante o desenvolvimento, foram explorados conceitos de bancos de dados orientados a grafos, criação de nós, propriedades, relacionamentos e consultas utilizando Cypher.

O projeto também proporcionou uma experiência prática com Neo4j Aura e organização de código e documentação utilizando GitHub.

---

**Projeto desenvolvido para fins educacionais e de portfólio.**
