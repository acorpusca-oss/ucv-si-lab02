--liquibase formatted sql
--changeset estudiante:008

CREATE SCHEMA workspace.bronze
COMMENT 'Bronze - raw data layer';

CREATE SCHEMA workspace.silver
COMMENT 'Silver - cleaned and standardized data layer';

--rollback DROP SCHEMA IF EXISTS workspace.silver;
--rollback DROP SCHEMA IF EXISTS workspace.bronze;