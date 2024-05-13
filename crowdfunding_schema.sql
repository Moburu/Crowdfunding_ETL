-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.

-- Modify this code to update the DB schema diagram.
-- To reset the sample schema, replace everything with
-- two dots ('..' - without quotes).

CREATE TABLE "Contact" (
    "contact_id" integer   NOT NULL,
    "first_name" text   NOT NULL,
    "last_name" text   NOT NULL,
    "email" text   NOT NULL,
    CONSTRAINT "pk_Contact" PRIMARY KEY (
        "contact_id"
     )
);

CREATE TABLE "Campaign" (
    "cf_id" integer   NOT NULL,
    "contact_id" integer   NOT NULL,
    "company_name" text   NOT NULL,
    "description" text   NOT NULL,
    "goal" real   NOT NULL,
    "pledged" real   NOT NULL,
    "outcome" text   NOT NULL,
    "backers_count" integer   NOT NULL,
    "country" text   NOT NULL,
    "currency" text   NOT NULL,
    "launch_date" integer   NOT NULL,
    "end_date" integer   NOT NULL,
    "category_id" text   NOT NULL,
    "subcategory_id" text   NOT NULL,
    CONSTRAINT "pk_Campaign" PRIMARY KEY (
        "cf_id"
     )
);

CREATE TABLE "Category" (
    "category_id" text   NOT NULL,
    "category" text   NOT NULL,
    CONSTRAINT "pk_Category" PRIMARY KEY (
        "category_id"
     )
);

CREATE TABLE "Subcategory" (
    "subcategory_id" text   NOT NULL,
    "subcategory" text   NOT NULL,
    CONSTRAINT "pk_Subcategory" PRIMARY KEY (
        "subcategory_id"
     )
);

ALTER TABLE "Campaign" ADD CONSTRAINT "fk_Campaign_contact_id" FOREIGN KEY("contact_id")
REFERENCES "Contact" ("contact_id");

ALTER TABLE "Campaign" ADD CONSTRAINT "fk_Campaign_category_id" FOREIGN KEY("category_id")
REFERENCES "Category" ("category_id");

ALTER TABLE "Campaign" ADD CONSTRAINT "fk_Campaign_subcategory_id" FOREIGN KEY("subcategory_id")
REFERENCES "Subcategory" ("subcategory_id");

CREATE INDEX "idx_Contact_first_name"
ON "Contact" ("first_name");

