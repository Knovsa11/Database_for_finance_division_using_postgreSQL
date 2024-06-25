BEGIN;

-- Membuat tabel segment sebagai tabel pembantu
CREATE TABLE segment(
    segment_id serial PRIMARY KEY,
    segment varchar
);
-- Membuat tabel discount_band sebagai tabel pembantu
CREATE TABLE discount_band (
	"Discount_Band_id" serial PRIMARY KEY,
	"Discount Band" varchar
);

-- Membuat tabel product sebagai tabel pembantu
CREATE TABLE product (
	Product_id serial PRIMARY KEY,
	Product varchar
);

-- Membuat tabel country sebagai tabel pembantu
CREATE TABLE country (
	country_id serial PRIMARY KEY,
	country varchar
);

-- Membuat business sebagai tabel utama
CREATE TABLE business (
    id serial PRIMARY KEY,
    segment_id integer,
    country_id integer,
    product_id integer,
    discount_band_id integer,
    units_sold float,
    manufacturing_price float,
    sale_price float,
    gross_sales float,
    discount float,
    sales float,
    cogs float,
    profit float,
    date DATE,
    FOREIGN KEY(segment_id) REFERENCES segment(segment_id),
	FOREIGN KEY(country_id) REFERENCES country(country_id),
    FOREIGN KEY(discount_band_id) REFERENCES discount_band("Discount_Band_id"),
    FOREIGN KEY(product_id) REFERENCES product(product_id)
);

-- Melakukan impor data dari file nama Segment.csv untuk memasukkan data tabel segment
COPY segment(Segment_id, Segment)
FROM 'C:\tmp\Segment.csv'
DELIMITER ','
CSV HEADER;

-- Melakukan impor data dari file nama Discount_Band.csv untuk memasukkan data tabel Discount_Band
COPY discount_band("Discount_Band_id", "Discount Band")
FROM 'C:\tmp\Discount_Band.csv'
DELIMITER ','
CSV HEADER;

-- Melakukan impor data dari file nama Product.csv untuk memasukkan data tabel Product
COPY product(Product_id, Product)
FROM 'C:\tmp\Product.csv'
DELIMITER ','
CSV HEADER;

-- Melakukan impor data dari file nama country.csv untuk memasukkan data tabel country
COPY country(country_id, country)
FROM 'C:\tmp\Country.csv'
DELIMITER ','
CSV HEADER;

-- Melakukan impor data dari file nama business.csv untuk memasukkan data tabel business
COPY business("segment_id","country_id","product_id","discount_band_id","units_sold","manufacturing_price","sale_price","gross_sales","discount","sales","cogs","profit","date")
FROM 'C:\tmp\Business.csv'
DELIMITER ','
CSV HEADER;

COMMIT;

BEGIN;

-- Pembuatan 2 user
CREATE USER user1 WITH PASSWORD 'qwerty';
CREATE USER user2 WITH PASSWORD 'asdfgh';

-- Pemberian akses query
-- user1
GRANT SELECT ON ALL TABLES IN SCHEMA "public" TO user1;

-- user2
GRANT ALL PRIVILEGES ON DATABASE databaseFinance TO user2; 

COMMIT;

-- Jawaban No 1
SELECT s.segment, SUM(b.profit) as total_profit
FROM business b
JOIN segment s ON b.segment_id = s.segment_id
WHERE b.discount != 0
GROUP BY s.segment;

-- Jawaban No 2
SELECT c.country, MIN(b.sales) as minimum_sales, MAX(b.sales) as maximum_sales, AVG(b.sales) as average_sales
FROM business b
JOIN country c ON b.country_id = c.country_id
GROUP BY c.country;