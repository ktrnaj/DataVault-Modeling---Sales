# DataVault-Modeling---Sales
End-to-end Data Vault 2.0 modeling project (Raw Vault → Business Vault → Dimensional model) for sales transactions, including hubs, links, satellites, derived KPIs, and reporting-ready star schema.


# DataVault-Sales

This repository implements **Data Vault 2.0 modeling** for sales transactions data.  
It follows a layered approach:

1. **Raw Vault**  
   - Hubs (Customer, Material, Sales Document)  
   - Links (Sales Doc ↔ Customer, Sales Doc ↔ Material)  
   - Satellites (Customer details, Material details, Sales doc details, Sales measures)

2. **Business Vault**  
   - BSAT_SALES_PERFORMANCE (derived KPIs)  
   - PIT_SALES_MEASURES (point-in-time snapshot)

3. **Dimensional Model (Reporting Layer)**  
   - Fact: FACT_SALES_BILLING  
   - Dimensions: DIM_DATE, DIM_CUSTOMER, DIM_MATERIAL, DIM_SALES_ORG, DIM_DISTRIBUTION_CHANNEL, DIM_SALES_GROUP  

📊 This final star schema is optimized for reporting in BI tools like Power BI/Tableau.


