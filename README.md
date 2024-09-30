# Project:

:brazil: Este projeto consiste em um CRM de vendas que gera valor através de dados e Inteligência Artificial, ao qual está dividido em três partes:

:us: This project consists of a sales CRM that generates value through data and Artificial Inteligence, which is divided into three parts:


- :page_with_curl: [CRM Project](https://github.com/jeperico/crm-sales)
- :file_folder: [DBT Project](https://github.com/jeperico/dbt-sales) :pushpin:
- :robot: [AI Project](https://github.com/jeperico/ai-sales)


### This Repository:

:brazil: Contém o dbt do banco de dados, utilizando de uma arquitetura medalhão para limpar os dados.

:us: Contains the database dbt, using a medallion architecture to clean the data.


## Avaliable at:

* Project website: https://pipeline-ai.streamlit.app/
* Project documentation: https://jeperico.github.io/crm-sales/


### Dbt:

Dbt is used to do a medallion architecture that clean the data into db views:
![Medallion Architecture](charts/medallion-architecture.png)

* ***Raw***: The origin data, all the db register;
* ***Bronze***: The first version of medallion, where contains all data;
* ***Silver***: The layer where clean all the wrong data;
* ***Gold Sales for Seller***: A totally cleaned view to get the sales data for a specific seller;
* ***Gold Sales Seven days***: A totally cleaned view to get the last seven days sales data;


## Briefer

To install _Briefer_ in your Python project:
```
pip install briefer
```
To run _Briefer_:

```
briefer
```

### The charts done with _Briefer_:
> Money per Day:
![Money per Day](charts/money-per-day.png)

> Sales Quantity per Product:
![Sales Quantity per Product](charts/sales-quantity-per-product.png)

> Sales Quantity per Cost:
![Sales Quantity per Cost](charts/sales-quantity-per-cost.png)


## Stack:
Technologies used in this project:

* ***Briefer***: Notebook that transform data into dashboards.
* ***DBT***: See this topic bellow.
* ***Postgres***: The database used.
* ***Render***: The open source host to database.
* ***AWS***: The not open source host to database.
* ***Makefile***: Used to do prompt shortcuts.
