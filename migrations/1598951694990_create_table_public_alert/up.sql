CREATE EXTENSION IF NOT EXISTS pgcrypto;
CREATE TABLE "public"."alert"("date_of_alert" integer NOT NULL, "criticality" integer NOT NULL, "exceeding_value" float8 NOT NULL, "site_id" integer NOT NULL, "product_site_id" integer NOT NULL, "id" uuid NOT NULL DEFAULT gen_random_uuid(), "product_site_name" varchar NOT NULL, "message" text NOT NULL, PRIMARY KEY ("id") );
