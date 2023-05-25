CREATE TABLE category (
  category_id VARCHAR NOT NULL,
  category VARCHAR NOT NULL,
  CONSTRAINT "pk_category" PRIMARY KEY (
  "category_id")
);

CREATE TABLE contacts (
  contact_id INT NOT NULL,
  first_name VARCHAR NOT NULL,
  last_name VARCHAR NOT NULL,
  email VARCHAR NOT NULL,
  CONSTRAINT pk_contact PRIMARY KEY (contact_id)
);

CREATE TABLE subcategory (
  subcategory_id VARCHAR NOT NULL,
  subcategory VARCHAR NOT NULL,
  CONSTRAINT pk_subcategory PRIMARY KEY (subcategory_id)
);

CREATE TABLE campaign (
  cf_id INT NOT NULL,
  contact_id INT NOT NULL,
  company_name VARCHAR NOT NULL,
  description VARCHAR NOT NULL,
  goal DECIMAL(10,2) NOT NULL,
  pledge DECIMAL(10,2) NOT NULL,
  outcome VARCHAR NOT NULL,
  backers_count INT NOT NULL,
  country VARCHAR NOT NULL,
  currency VARCHAR NOT NULL,
  launched_date DATE NOT NULL,
  end_date DATE NOT NULL,
  category_id VARCHAR NOT NULL,
  subcategory_id VARCHAR NOT NULL,
  CONSTRAINT pk_cf PRIMARY KEY (cf_id)
);

ALTER TABLE "campaign" ADD CONSTRAINT "fk_category_id" FOREIGN KEY("category_id")
REFERENCES "category" ("category_id");

ALTER TABLE "campaign" ADD CONSTRAINT "fk_contact_id" FOREIGN KEY("contact_id")
REFERENCES "contacts" ("contact_id");

ALTER TABLE "campaign" ADD CONSTRAINT "fk_subcategory_id" FOREIGN KEY("subcategory_id")
REFERENCES "subcategory" ("subcategory_id");