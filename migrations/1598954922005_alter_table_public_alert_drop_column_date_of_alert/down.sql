ALTER TABLE "public"."alert" ADD COLUMN "date_of_alert" int4;
ALTER TABLE "public"."alert" ALTER COLUMN "date_of_alert" DROP NOT NULL;
