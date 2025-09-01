CREATE TABLE raw_vault.HUB_CUSTOMER (
    hk_customer BINARY(16) PRIMARY KEY,
    customer_no_bk VARCHAR(50) UNIQUE NOT NULL,
    load_dts TIMESTAMP NOT NULL,
    rec_src VARCHAR(255) NOT NULL
);
