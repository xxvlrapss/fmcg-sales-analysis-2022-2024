-- Cek jumlah baris
SELECT COUNT(*) AS total_rows FROM dbo.daily_sales;

-- Cek periode data
SELECT MIN(date) AS start_date, MAX(date) AS end_date FROM dbo.daily_sales;

-- Cek kategori & channel
SELECT DISTINCT category FROM dbo.daily_sales;
SELECT DISTINCT channel FROM dbo.daily_sales;
