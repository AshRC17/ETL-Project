-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.

-- Modify this code to update the DB schema diagram.
-- To reset the sample schema, replace everything with
-- two dots ('..' - without quotes).

CREATE TABLE "Population" (
    "City" VARCHAR(50)   NOT NULL,
    "Population" Int   NOT NULL,
    CONSTRAINT "pk_Population" PRIMARY KEY (
        "City"
     )
);

CREATE TABLE "Community_Health" (
    "City" VARCHAR(50)   NOT NULL,
    "Amount" FLOAT   NOT NULL
);

CREATE TABLE "Culture_Recreation" (
    "City" VARCHAR(50)   NOT NULL,
    "Amount" FLOAT   NOT NULL
);

CREATE TABLE "General_Administration_Finance" (
    "City" VARCHAR(50)   NOT NULL,
    "Amount" FLOAT   NOT NULL
);

CREATE TABLE "General_City_Responsibilities" (
    "City" VARCHAR(50)   NOT NULL,
    "Amount" FLOAT   NOT NULL
);

CREATE TABLE "Human_Welfare_Neighborhood_Development" (
    "City" VARCHAR(50)   NOT NULL,
    "Amount" FLOAT   NOT NULL
);

CREATE TABLE "Other" (
    "City" VARCHAR(50)   NOT NULL,
    "Amount" FLOAT   NOT NULL
);

CREATE TABLE "Public_Protection" (
    "City" VARCHAR(50)   NOT NULL,
    "Amount" FLOAT   NOT NULL
);

CREATE TABLE "Public_Works_Transportion_Commerce" (
    "City" VARCHAR(50)   NOT NULL,
    "Amount" FLOAT   NOT NULL
);

ALTER TABLE "Community_Health" ADD CONSTRAINT "fk_Community_Health_City" FOREIGN KEY("City")
REFERENCES "Population" ("City");

ALTER TABLE "Culture_Recreation" ADD CONSTRAINT "fk_Culture_Recreation_City" FOREIGN KEY("City")
REFERENCES "Population" ("City");

ALTER TABLE "General_Administration_Finance" ADD CONSTRAINT "fk_General_Administration_Finance_City" FOREIGN KEY("City")
REFERENCES "Population" ("City");

ALTER TABLE "General_City_Responsibilities" ADD CONSTRAINT "fk_General_City_Responsibilities_City" FOREIGN KEY("City")
REFERENCES "Population" ("City");

ALTER TABLE "Human_Welfare_Neighborhood_Development" ADD CONSTRAINT "fk_Human_Welfare_Neighborhood_Development_City" FOREIGN KEY("City")
REFERENCES "Population" ("City");

ALTER TABLE "Other" ADD CONSTRAINT "fk_Other_City" FOREIGN KEY("City")
REFERENCES "Population" ("City");

ALTER TABLE "Public_Protection" ADD CONSTRAINT "fk_Public_Protection_City" FOREIGN KEY("City")
REFERENCES "Population" ("City");

ALTER TABLE "Public_Works_Transportion_Commerce" ADD CONSTRAINT "fk_Public_Works_Transportion_Commerce_City" FOREIGN KEY("City")
REFERENCES "Population" ("City");

