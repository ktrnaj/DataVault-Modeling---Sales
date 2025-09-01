CREATE TABLE business_vault.BSAT_SALES_PERFORMANCE (
    hk_sales_document_material BINARY(16) NOT NULL,
    load_dts TIMESTAMP NOT NULL,
    hashdiff BINARY(16) NOT NULL,
    calculated_dts TIMESTAMP NOT NULL,
    quantity DECIMAL(18, 3),
    tgs DECIMAL(18, 3),
    tns DECIMAL(18, 3),
    PRIMARY KEY (hk_sales_document_material, load_dts)
);
