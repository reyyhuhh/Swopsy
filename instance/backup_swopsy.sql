
BEGIN TRANSACTION;
CREATE TABLE IF NOT EXISTS "cart_item" (
	"id"	INTEGER NOT NULL,
	"user_id"	INTEGER NOT NULL,
	"product_id"	INTEGER NOT NULL,
	PRIMARY KEY("id"),
	FOREIGN KEY("product_id") REFERENCES "product"("id"),
	FOREIGN KEY("user_id") REFERENCES "user"("id")
);
CREATE TABLE IF NOT EXISTS "message" (
	"id"	INTEGER NOT NULL,
	"sender_id"	INTEGER NOT NULL,
	"receiver_id"	INTEGER NOT NULL,
	"content"	TEXT NOT NULL,
	"timestamp"	DATETIME,
	PRIMARY KEY("id"),
	FOREIGN KEY("receiver_id") REFERENCES "user"("id"),
	FOREIGN KEY("sender_id") REFERENCES "user"("id")
);
CREATE TABLE IF NOT EXISTS "order" (
	"id"	INTEGER NOT NULL,
	"buyer_id"	INTEGER NOT NULL,
	"product_id"	INTEGER NOT NULL,
	"delivery_method"	VARCHAR(50),
	"shipping_address"	VARCHAR(255),
	"payment_method"	VARCHAR(50),
	"timestamp"	DATETIME,
	PRIMARY KEY("id"),
	FOREIGN KEY("buyer_id") REFERENCES "user"("id"),
	FOREIGN KEY("product_id") REFERENCES "product"("id")
);
CREATE TABLE IF NOT EXISTS "product" (
	"id"	INTEGER NOT NULL,
	"title"	VARCHAR(100) NOT NULL,
	"description"	TEXT NOT NULL,
	"image_filename"	VARCHAR(200),
	"swap_option"	BOOLEAN,
	"user_id"	INTEGER NOT NULL,
	"price"	FLOAT NOT NULL,
	"sold" BOOL NOT NULL,
	PRIMARY KEY("id"),
	FOREIGN KEY("user_id") REFERENCES "user"("id")
);
CREATE TABLE IF NOT EXISTS "user" (
	"id"	INTEGER NOT NULL,
	"full_name"	VARCHAR(150) NOT NULL,
	"username"	VARCHAR(50) NOT NULL,
	"email"	VARCHAR(100) NOT NULL,
	"password"	VARCHAR(100) NOT NULL,
	UNIQUE("email"),
	PRIMARY KEY("id")
);
INSERT INTO "cart_item" VALUES (994,1,3);
INSERT INTO "cart_item" VALUES (98,1,4);
INSERT INTO "product" VALUES (78,'Squier FSR Affinity Series Stratocaster Electric Guitar, Laurel FB, Olympic White','21 frets, Stratocaster
','7c2022efae39e5a35c218bc8a96baed0.jpg',1,1,1000.0,0);
INSERT INTO "product" VALUES (28,'Highschool Black Hooded Leather Jacket','Bought 2 months ago','download.png',1,1,85.0,0);
INSERT INTO "product" VALUES (3,'Machine Chronograph Brown Leather Watch and Bracelet Se','Price can nego','88dc1c3ab7fc882fd7d6e18fedb1efac.jpg',1,2,800.0,0);
INSERT INTO "product" VALUES (4,'Flutter-sleeve dress with broderie anglaise','Bought this at H&M','efdaa9072c2278563744979e20d5d305.jpg',1,3,70.0,0);
INSERT INTO "product" VALUES (5,'Dr Martens 1461 3 Eye Gibson','Got last year, only wore it twice','af573f63f0e01a71f79aaa4b697e9e48.jpg',1,4,250.0,0);
INSERT INTO "product" VALUES (6,'Ipad Air','11 inch, barely used','0a4e5fa38f8a045965048438eee3d623.jpg',1,5,1300.0,0);
INSERT INTO "product" VALUES (7,'Shoulder Bag','Bought last 2 years','51f1d1691b0f55b0ec27781489ce8e37.jpg',1,6,15.0,0);
INSERT INTO "product" VALUES (8,'Nike Dunk','got the wrong size (36)','shoe.jpg',1,6,450.0,0);
INSERT INTO "product" VALUES (9,'Mini Oven','Can fit up to 2 liters','dbc4bcc262446b8cc7dcb5de19555387.jpg',1,7,600.0,0);
INSERT INTO "product" VALUES (10,'Air Fryer','Just bought two months ago, dont need it','ef352ad357a806a4a5e320ef65e21897.jpg',1,7,370.0,0);
INSERT INTO "product" VALUES (11,'Harry Potter and The Sorcerer Stone','The first edition','d64119d7b8494c198bceda5ab6574bb9.jpg',1,8,35.0,0);
INSERT INTO "product" VALUES (12,'White Jersey','XL size, baggy Jersey','a6127a6a50ab2ad2847b8e33b185eac6.jpg',1,8,13.0,0);
INSERT INTO "product" VALUES (13,'24 karat Labubu','the infamous labewbew','b7a202ad86cf10834a67740ee7b14ae7.jpg',1,8,800.0,0);
INSERT INTO "product" VALUES (14,'Yoda FIgurine','2 inches tall','56979ea1ff586f64f8b669427c572907.jpg',1,9,6.9,0);
INSERT INTO "product" VALUES (15,'Nars Eyeshadow Palette','never used','60e315d9f5df82cef10ce4b2eeccef2e.jpg',1,9,80.0,0);
INSERT INTO "user" VALUES (1,'Ria Qistina','reyyhuh','riaqistina05@gmail.com','$2b$12$geRCo2HesdOiWCIan3PT7OVbu3vmnhrU6IgYcPOQ/taUF9wG.muCG');
INSERT INTO "user" VALUES (2,'Rian Mikael','whoisrian','rian@gmail.com','$2b$12$.8zIT3fhf1vYfC61TjD1ye4J/00ETd0SzoBLxhoV7vAiHHtzPeH12');
INSERT INTO "user" VALUES (3,'Anis Shamila','anies','anies@gmail.com','$2b$12$NMI6bUg2/eJORRrWUx90puZa51hV7YSatVHILtN4i8ZfBZuVNuggG');
INSERT INTO "user" VALUES (4,'Adib Thaqify','dipfy','adib@gmail.com','$2b$12$5I02Mc2zPWMx9TEwm0mWWeo/EQ9wliit0oS9Tno7DKYzuXUEo3tF.');
INSERT INTO "user" VALUES (5,'Ahmad Nassharudin','anashh','anash@gmail.com','$2b$12$FcoVlGqUrJxFyHUtDtm9HeqACErz56J.HfJvuvRUwgV41y3xd8hni');
INSERT INTO "user" VALUES (6,'Ria Qistina Mohamad Razuan','user22010061','rqrazuan@gmail.com','$2b$12$TYCpotJ/10PljDhDESQ8PeUrm5vzmIrpP6Lw6AVP0E8YJs/AIp40i');
INSERT INTO "user" VALUES (7,'Raja Nor','rajanoe','naesya@gmail.com','$2b$12$Qv7UFwkrtlNj4TQOA0g8vOjgrvDuNHKtuxLUMeOrm5svgoqk7vb9K');
INSERT INTO "user" VALUES (8,'Aida Adrian','yedo','aida@gmail.com','$2b$12$n2VNSOO2XrbilGvd8sDcQuPfIi2XU7b4F1AaabbVFXRDdlzOrsum6');
INSERT INTO "user" VALUES (9,'Hilman Hakim','hill-man','hilman@gmail.com','$2b$12$usTluKTt4TsHP5yztyLWAeMtd0/DcmwZNOgHvG0mCoJb9WIl6ZMpO');
COMMIT;
