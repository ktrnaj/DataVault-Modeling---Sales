--------------------------------------------------------
-- bv_time_dim.sql
-- Purpose: Create a derived time dimension from BUDAT
--          for use in Business Vault and Dimensional Layer
--------------------------------------------------------

CREATE OR REPLACE VIEW BV_TIME_DIM AS
SELECT DISTINCT
    st.BUDAT AS DATE_KEY,
    YEAR(st.BUDAT)  AS YEAR,
    MONTH(st.BUDAT) AS MONTH,
    DAY(st.BUDAT)   AS DAY,
    DAYOFWEEK(st.BUDAT) AS WEEKDAY_NUM,
    DAYNAME(st.BUDAT)   AS WEEKDAY_NAME,
    WEEKOFYEAR(st.BUDAT) AS WEEK_OF_YEAR,
    QUARTER(st.BUDAT)    AS QUARTER,
    LAST_DAY(st.BUDAT, 'YEAR') AS YEAR_END_DATE
FROM SAT_SALES_FACTS st
WHERE st.BUDAT IS NOT NULL;

--------------------------------------------------------
-- End of bv_time_dim.sql
--------------------------------------------------------
