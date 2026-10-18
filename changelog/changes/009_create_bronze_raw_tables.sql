--liquibase formatted sql
--changeset estudiante:009

CREATE TABLE workspace.bronze.sales_raw (
    sale_id STRING,
    sale_date STRING,
    product_id STRING,
    quantity STRING,
    unit_price STRING
)
USING DELTA;

CREATE TABLE workspace.bronze.products_raw (
    product_id STRING,
    product_name STRING,
    category STRING
)
USING DELTA;


--changeset estudiante:010
CREATE TABLE IF NOT EXISTS workspace.bronze.customers_raw (
    customer_id STRING,
    customer_name STRING,
    segment STRING,
    city STRING,
    country STRING
)
USING DELTA;

--changeset estudiante:011
CREATE TABLE IF NOT EXISTS workspace.bronze.stores_raw (
    store_id STRING,
    store_name STRING,
    city STRING,
    region STRING,
    country STRING
)
USING DELTA;

--rollback DROP TABLE IF EXISTS workspace.bronze.stores_raw;
--rollback DROP TABLE IF EXISTS workspace.bronze.products_raw;
--rollback DROP TABLE IF EXISTS workspace.bronze.sales_raw;
--rollback DROP TABLE IF EXISTS workspace.bronze.customers_raw;