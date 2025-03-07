

ALTER TABLE restaurant
ADD COLUMN details varchar(50),
CHANGE COLUMN name name VARCHAR(150) NOT NULL ,
CHANGE COLUMN phone_number phone_number VARCHAR(10) NOT NULL ,
CHANGE COLUMN email_address email_address VARCHAR(100) NOT NULL ,
CHANGE COLUMN street_address street_address VARCHAR(50) NOT NULL ,
CHANGE COLUMN city city VARCHAR(45) NOT NULL ,
CHANGE COLUMN state state VARCHAR(2) NOT NULL ,
CHANGE COLUMN zip_code zip_code VARCHAR(5) NOT NULL ;
