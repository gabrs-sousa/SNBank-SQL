# SN Bank - Projeto de Banco de Dados Relacional (Portfólio Acadêmico)

## Objetivo do Repositório

Este repositório foi criado como **exercício prático de portfólio para alunos da disciplina de Banco de Dados**. Aqui, seguimos o desenvolvimento completo de um banco relacional, partindo da modelagem de dados até a implementação no MySQL, utilizando o case fictício da instituição financeira **SN Bank**.

Este material também funciona como um modelo de referência para que os alunos possam iniciar seus próprios repositórios de SQL e Banco de Dados no GitHub.

---

## Fluxo Didático e Modelagem de Dados

### 1. Modelo Conceitual (MER)

O modelo conceitual foi elaborado a partir do levantamento de requisitos do SN Bank, identificando as principais entidades e seus relacionamentos. No arquivo [Modelo Conceitual.vpd] apresentamos o diagrama de entidades e relacionamentos (DER).

### 2. Modelo Lógico (Relacional)

A partir do modelo conceitual, o modelo relacional foi construído com a definição das chaves primárias, chaves estrangeiras e tipos de dados.

- **Entidades principais:**
  - Clientes
  - Contas
  - Departamento
  - Colaboradores
  - Empréstimos
  - Pagamentos
  - Score de Crédito

- **Relacionamentos resolvidos via tabelas associativas:**
  - Cliente-Conta

> **Observação:** Este modelo pode ser consultado e revisado a partir dos materiais de apoio: [Banco de Dados com SN Bank - Notion](https://www.notion.so/Banco-de-Dados-com-SN-Bank-202741d95c0180f1aa76eb460778ede2)

### 3. Modelo Físico (Scripts SQL)

Todos os scripts estão implementados em MySQL, respeitando boas práticas de codificação e organização.

#### Scripts presentes neste repositório:

| Script | Descrição |
|--------|-------------|
| **01_create_schema.sql** | Criação do banco de dados `sn_bank` |
| **02_create_tables.sql** | Criação de todas as tabelas com suas chaves |
| **03_drop_tables.sql** | Exclusão de todas as tabelas (reset do banco) |
| **04_insert_data.sql** | Inserção de dados via `LOAD DATA INFILE` |
| **05_alter_fk.sql** | Ajuste de chaves estrangeiras (manutenção estrutural) |
| **06_queries.sql** | Conjunto de consultas básicas e avançadas (SELECT, JOIN, FILTERS, CREATE TABLE AS) |

> Material de apoio complementar: [Consultas Básicas com SN Bank - Notion](https://www.notion.so/Consultas-B-sicas-com-SN-Bank-204741d95c0180faa5b5d4c263a8b457)

---

## Etapas de Execução

### 1. Crie o Schema do banco

```sql
CREATE DATABASE sn_bank;
USE sn_bank;
```

### 2. Crie as tabelas

Execute o script `02_create_tables.sql`

### 3. Carregue os dados

Execute o script `04_insert_data.sql` (ajuste o caminho dos CSVs conforme o diretório local)

### 4. Realize consultas básicas e avançadas

Utilize o script `06_queries.sql` como referência para exercícios

### 5. Altere ou exclua tabelas conforme necessidade (scripts 03 e 05)

---

## Considerações Importantes

- Este repositório foi planejado para apoiar o aluno tanto na compreensão da lógica relacional quanto na estruturação de seu primeiro **portfólio público de banco de dados**.
- Recomenda-se que o aluno personalize, amplie e evolua este repositório ao longo de seus estudos.

---

## Sugestão de exploração

- Criar **views** para consultas frequentes.
- Implementar **stored procedures** para automatização de operações.
- Criar **triggers** para atualização automática de dados.
- Desenvolver **consultas analíticas** com funções agregadas e subconsultas.

---

**Bons estudos!**
