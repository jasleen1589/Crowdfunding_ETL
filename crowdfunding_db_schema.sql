CREATE TABLE categories(
category_id varchar(5)PRIMARY KEY,
category varchar(20)
);

CREATE TABLE subcategories(
subcategory_id varchar(10)PRIMARY KEY,
subcategory varchar (20)
);

CREATE TABLE contacts(
contact_id int PRIMARY KEY,
first_name varchar(20),
last_name varchar(20),
email varchar(100)
);

CREATE TABLE campaign(
	cf_id int PRIMARY KEY,
	contact_id int,
	company_name varchar (100),
	description varchar(100),
	goal float,
	pledged float,
	outcome varchar(20),
	backers_count int,
	country varchar(20),
	currency varchar(20),
	launch_date varchar(20),
	end_date varchar(20),
	category_id varchar(20),
	subcategory_id varchar (20),
	FOREIGN KEY (contact_id) REFERENCES contacts(contact_id),
	FOREIGN KEY (category_id) REFERENCES categories(category_id),
	FOREIGN KEY (subcategory_id) REFERENCES subcategories(subcategory_id)
	);

-----
SELECT * FROM category;
SELECT * FROM subcategory;
SELECT * FROM contacts;
SELECT * FROM campaign;



