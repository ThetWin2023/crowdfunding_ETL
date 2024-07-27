DROP TABLE IF EXISTS contacts;
DROP TABLE IF EXISTS category;
DROP TABLE IF EXISTS subcategory;
DROP TABLE IF EXISTS campaign;


--creating Tables:

CREATE TABLE contacts(
	contact_id int  PRIMARY KEY,
	first_name varchar(50) NOT NULL,
	last_name varchar(50) NOT NULL,
	email varchar(255) NOT NULL
	
);

CREATE TABLE category(
	category_id varchar(30) PRIMARY KEY,
	category varchar(55) NOT NULL
	);

CREATE TABLE subcategory(
	subcategory_id varchar(30) PRIMARY KEY,
	subcategory varchar(50) NOT NULL
);

CREATE TABLE campaign(
	cf_id int NOT NULL PRIMARY KEY,
	contact_id int NOT NULL,
	company_name varchar(255) NOT NULL,
	description varchar(255) NOT NULL,
	goal  float NOT NULL,
	pledged float NOT NULL,
	outcome varchar(50) NOT NULL,
	backers_count int NOT NULL,
	country varchar(50) NOT NULL,
	currency  varchar(50) NOT NULL,
	launch_date Date NOT NULL,
	end_date Date NOT NULL,
	staff_pick Bool NOT NULL,
	spotlight Bool NOT NULL,
	category_id varchar(50) NOT NULL,
	subcategory_id  varchar(50) NOT NULL,
	FOREIGN KEY (contact_id)  REFERENCES contacts(contact_id),   
	FOREIGN KEY (category_id) REFERENCES category(category_id), 
	FOREIGN KEY (subcategory_id)  REFERENCES subcategory(subcategory_id)
);
