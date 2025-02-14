CREATE table restaurant (
	id int NOT NULL auto_increment,
    name varchar(150),
    phone_number varchar(10),
    email_address varchar(100),
    street_address varchar(50),
    street_address_two varchar(20),
    city varchar(45),
    state varchar(27),
    zip_code varchar(10),
    PRIMARY KEY (id)
);

CREATE TABLE menu(
    id int NOT NULL AUTO_INCREMENT,
    name varchar(50),
    is_active tinyint,
    PRIMARY KEY(id)
);

CREATE TABLE restaurant_menu_crosswalk(
id int NOT NULL AUTO_INCREMENT,
restaurant_id int NOT NULL,
menu_id int NOT NULL,
PRIMARY KEY (id),
FOREIGN KEY (restaurant_id) references restaurant(id),
FOREIGN KEY (menu_id) references menu(id)
);

CREATE TABLE menu_item_group(
    id int NOT NULL AUTO_INCREMENT,
    menu_id int NOT NULL,
    name varchar(50),
    position int,
    PRIMARY KEY(id),
    FOREIGN KEY (menu_id) references menu(id)
);

CREATE TABLE menu_item(
    id int NOT NULL AUTO_INCREMENT,
    menu_id int NOT NULL,
    menu_item_group_id int NOT NULL,
    name varchar(50),
    description varchar(500),
    extra_details varchar(200),
    price decimal(10,2),
    position int,
    PRIMARY KEY(id),
    FOREIGN KEY (menu_id) references menu(id),
    FOREIGN KEY (menu_item_group_id) references menu_item_group(id)
);

CREATE TABLE allergen(
    id int NOT NULL AUTO_INCREMENT,
    name varchar(50),
    PRIMARY KEY(id)
);

CREATE TABLE menu_item_allergen(
    id int NOT NULL AUTO_INCREMENT,
    menu_item_id int NOT NULL,
    allergen_id int NOT NULL,
    may_contain tinyint,
    refined tinyint,
    PRIMARY KEY(id),
    FOREIGN KEY (menu_item_id) references menu_item(id),
    FOREIGN KEY (allergen_id) references allergen(id)
);

--INSERT INTO allergen(name)
--VALUES("Milk"),
--("Eggs"),
--("Fish"),
--("Shellfish"),
--("Tree Nuts"),
--("Peanuts"),
--("Wheat"),
--("Soybeans"),
--("Sesame");