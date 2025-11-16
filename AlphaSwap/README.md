# AlphaSwap

Um projeto de contrato inteligente construído com Move para a blockchain Sui, projetado para implantação na mainnet.

## Visão Geral

AlphaSwap é um token fungível personalizado que demonstra funcionalidades de moeda na Sui. Permite criar, cunhar e queimar tokens ALPHA.

## Funcionalidades

- Criar moeda com nome, descrição e símbolo
- Cunhar tokens para destinatários
- Queimar tokens para reduzir o suprimento
- Consultar o suprimento total

## Começando

### Pré-requisitos

- Sui CLI instalado
- Ferramentas Move

### Construindo

```bash
sui move build
```

### Testando

```bash
sui move test
```

### Publicando

Para publicar na mainnet Sui:

```bash
sui client publish --gas-budget 10000000
```

## Autor

Gabriel Pereira (Gael)

## Licença

Este projeto é de código aberto.