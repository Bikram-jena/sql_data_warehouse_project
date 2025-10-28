
create or alter procedure bronze.load_bronze as
begin
	begin try
			print '=========================================================';
			print 'Loading Bronze Layer';
			print '=========================================================';

			print '--------------------------------------------------------------------------------------------';
			print 'Loading CRM Tables';
			print '--------------------------------------------------------------------------------------------';

				print '>> Truncating Table: bronze.crm_cust_info';
				truncate table bronze.crm_cust_info;

				print '>> Inserting Data Into: bronze.crm_cust_info';
				bulk insert bronze.crm_cust_info
				from 'C:\Users\Bikram Jena\Downloads\SQL Master All\sql-data-warehouse-project\datasets\source_crm\cust_info.csv'
				with(
					firstrow = 2,
					fieldterminator = ',',
					tablock
				);

				print '>> Truncating Table: bronze.crm_prd_info';
				truncate table bronze.crm_prd_info;

				print '>> Inserting Data Into: bronze.crm_prd_info';
				bulk insert bronze.crm_prd_info
				from 'C:\Users\Bikram Jena\Downloads\SQL Master All\sql-data-warehouse-project\datasets\source_crm\prd_info.csv'
				with(
					firstrow = 2,
					fieldterminator = ',',
					tablock
				);

				print '>> Truncating Table: bronze.crm_sales_info';
				truncate table bronze.crm_sales_info;

				print '>> Inserting Data Into: bronze.crm_sales_info';
				bulk insert bronze.crm_sales_info
				from 'C:\Users\Bikram Jena\Downloads\SQL Master All\sql-data-warehouse-project\datasets\source_crm\sales_details.csv'
				with(
					firstrow = 2,
					fieldterminator = ',',
					tablock
				);

			print '--------------------------------------------------------------------------------------------';
			print 'Loading ERP Tables';
			print '--------------------------------------------------------------------------------------------';

				print '>> Truncating Table: bronze.erp_cust_country';
				truncate table bronze.erp_cust_country;

				print '>> Inserting Data Into: bronze.erp_cust_country';
				bulk insert bronze.erp_cust_country
				from 'C:\Users\Bikram Jena\Downloads\SQL Master All\sql-data-warehouse-project\datasets\source_erp\LOC_A101.csv'
				with(
					firstrow = 2,
					fieldterminator = ',',
					tablock
				);

				print '>> Truncating Table: bronze.erp_cust_details';
				truncate table bronze.erp_cust_details;

				print '>> Inserting Data Into: bronze.erp_cust_details';
				bulk insert bronze.erp_cust_details
				from 'C:\Users\Bikram Jena\Downloads\SQL Master All\sql-data-warehouse-project\datasets\source_erp\CUST_AZ12.csv'
				with(
					firstrow = 2,
					fieldterminator = ',',
					tablock
				);

				print '>> Truncating Table: bronze.erp_prd_category';
				truncate table bronze.erp_prd_category;

				print '>> Inserting Data Into: bronze.erp_prd_category';
				bulk insert bronze.erp_prd_category
				from 'C:\Users\Bikram Jena\Downloads\SQL Master All\sql-data-warehouse-project\datasets\source_erp\PX_CAT_G1V2.csv'
				with(
					firstrow = 2,
					fieldterminator = ',',
					tablock
				);
		end try
		begin catch
		print '==================================================================';
		print 'Error Occured During Loading Bromze Layer';
		print 'Error Message' + error_message();
		print 'Error Message' + cast (error_number() as nvarchar);
		print 'Error Message' + cast (error_state() as nvarchar);
		print '==================================================================';
		end catch
end
