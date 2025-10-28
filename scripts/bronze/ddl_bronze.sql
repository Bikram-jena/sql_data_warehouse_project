if object_id('bronze.crm_cust_info' , 'U') is not null
drop table bronze.crm_cust_info;
create table bronze.crm_cust_info(
	cst_id INT,
	cst_key NVARCHAR(50),
	cst_firstname NVARCHAR(50),
	cst_lastname NVARCHAR(50),
	cst_marital_status NVARCHAR(50),
	cst_gndr NVARCHAR(50),
	cst_create_date DATE
);

if object_id('bronze.crm_prd_info' , 'U') is not null
drop table bronze.crm_prd_info;
CREATE TABLE bronze.crm_prd_info (
    prd_id INT,
    prd_key NVARCHAR(50),
    prd_nm NVARCHAR(100),
    prd_cost INT,
    prd_line NVARCHAR(50),
    prd_start_dt DATETIME,
    prd_end_dt DATETIME
);

if object_id('bronze.crm_sales_info' , 'U') is not null
drop table bronze.crm_sales_info;
CREATE TABLE bronze.crm_sales_info (
    sls_ord_num NVARCHAR(50),
    sls_prd_key NVARCHAR(50),
    sls_cust_id INT,
    sls_order_dt NVARCHAR(50),
    sls_ship_dt NVARCHAR(50),
    sls_due_dt NVARCHAR(50),
    sls_sales INT,
    sls_quantity INT,
    sls_price INT
);

if object_id('bronze.erp_cust_details' , 'U') is not null
drop table bronze.erp_cust_details;
CREATE TABLE bronze.erp_cust_details (
    CID NVARCHAR(50),
    BDATE DATE,
    GEN NVARCHAR(50),
);


if object_id('bronze.erp_cust_country' , 'U') is not null
drop table bronze.erp_cust_country;
CREATE TABLE bronze.erp_cust_country (
    CID NVARCHAR(50),
    CNTRY NVARCHAR(50)
);

if object_id('bronze.erp_prd_category' , 'U') is not null
drop table bronze.erp_prd_category;
CREATE TABLE bronze.erp_prd_category (
    ID NVARCHAR(50),
    CAT NVARCHAR(50),
    SUBCAT NVARCHAR(50),
    MAINTENANCE NVARCHAR(50)
);


