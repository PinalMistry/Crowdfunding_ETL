--Drop Tables if they exist
Drop TABLE IF EXISTS contacts;
Drop TABLE IF EXISTS category;
Drop TABLE IF EXISTS subcategory;
Drop TABLE IF EXISTS campaign;


--create Table for contacts
CREATE TABLE contacts(
	contact_id INTEGER NOT NULL PRIMARY KEY,
	first_name VARCHAR(50) NOT NULL,
	last_name VARCHAR(50) NOT NULL,
	email VARCHAR(50) NOT NULL
);

--create Table for category
CREATE TABLE category(
	category_id VARCHAR(50) NOT NULL PRIMARY KEY,
	category VARCHAR(50) NOT NULL
);

--create Table for subcategory
CREATE TABLE subcategory(
	subcategory_id VARCHAR(50) NOT NULL PRIMARY KEY,
	subcategory VARCHAR(50) NOT NULL
);

--create Table for campaign
CREATE TABLE campaign (
   cf_id INTEGER NOT NULL PRIMARY KEY,
   contact_id INTEGER NOT NULL,
   company_name VARCHAR(200) NOT NULL,
   description VARCHAR(500) NOT NULL,
   goal FLOAT NOT NULL,
   pledged FLOAT NOT NULL,
   outcome VARCHAR(200) NOT NULL,
   backers_count INTEGER NOT NULL,
   country VARCHAR(200) NOT NULL,
   currency VARCHAR(200) NOT NULL,
   launched_date DATE NOT NULL,
   end_date DATE NOT NULL,
   category_id VARCHAR(200) NOT NULL,
   subcategory_id VARCHAR(200) NOT NULL,
   FOREIGN KEY (contact_id) REFERENCES contacts(contact_id),
   FOREIGN KEY (category_id) REFERENCES category(category_id),
   FOREIGN KEY (subcategory_id) REFERENCES subcategory(subcategory_id)
);

--Import the CSV file
SELECT * FROM contacts;
SELECT * FROM category;
SELECT * FROM subcategory;
SELECT * FROM campaign;

