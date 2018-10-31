--drop table "ditmdm"."rawCacheDataTable";
create SCHEMA ditmdm;
CREATE SEQUENCE "ditmdm".data_records_id_seq;

CREATE TABLE "ditmdm"."rawCacheDataTable" (
 "id" int8 NOT NULL DEFAULT nextval('"ditmdm".data_records_id_seq'::regclass),
  "etalon_id" varchar(64) COLLATE "pg_catalog"."default" NOT NULL,
  "version" int8 NOT NULL,
  "data" jsonb NOT NULL DEFAULT '{}'::jsonb,
  "custom_data" jsonb NOT NULL DEFAULT '{}'::jsonb,
  "created_at" timestamp(6) NOT NULL DEFAULT timezone('utc'::text, now()),
  "updated_at" timestamp(6) NOT NULL DEFAULT timezone('utc'::text, now()),
  PRIMARY KEY ("id")
);



CREATE TABLE "ditmdm"."IndexCacheTable" (
  "id" int8 NOT NULL DEFAULT nextval('"ditmdm".data_records_id_seq'::regclass),
  "etalon_id" varchar(64) COLLATE "pg_catalog"."default" NOT NULL,
  "last_name" varchar(64) COLLATE "pg_catalog"."default" NOT NULL,
  "gender_tp_code" varchar(64) COLLATE "pg_catalog"."default" NOT NULL,
  "given_name_one" varchar(64) COLLATE "pg_catalog"."default" NOT NULL,
  "given_name_two" varchar(64) COLLATE "pg_catalog"."default" NOT NULL,
  "created_at" timestamp(6) NOT NULL DEFAULT timezone('utc'::text, now()),
  "updated_at" timestamp(6) NOT NULL DEFAULT timezone('utc'::text, now()),
  PRIMARY KEY ("id")
);

CREATE UNIQUE INDEX "IX_dataRecords_etalonId" ON "ditmdm"."IndexCacheTable" USING btree (
  "etalon_id" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);