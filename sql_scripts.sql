-- 1. Create "mkyong" user with password: "password"
-- 2. Execute the script below:


--------------------------------------------------------
--  DDL for Table STOCK
--------------------------------------------------------

  CREATE TABLE "MKYONG"."STOCK" 
   ("STOCK_ID" NUMBER, 
	"STOCK_CODE" VARCHAR2(10 BYTE), 
	"STOCK_NAME" VARCHAR2(20 BYTE)
   );
--------------------------------------------------------
--  DDL for Index STOCK_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "MKYONG"."STOCK_PK" ON "MKYONG"."STOCK" ("STOCK_ID");
--------------------------------------------------------
--  DDL for Index UNI_STOCK_ID
--------------------------------------------------------

  CREATE UNIQUE INDEX "MKYONG"."UNI_STOCK_ID" ON "MKYONG"."STOCK" ("STOCK_CODE");
--------------------------------------------------------
--  DDL for Index UNI_STOCK_NAME
--------------------------------------------------------

  CREATE UNIQUE INDEX "MKYONG"."UNI_STOCK_NAME" ON "MKYONG"."STOCK" ("STOCK_NAME");
--------------------------------------------------------
--  Constraints for Table STOCK
--------------------------------------------------------

  ALTER TABLE "MKYONG"."STOCK" ADD CONSTRAINT "UNI_STOCK_NAME" UNIQUE ("STOCK_NAME");
  ALTER TABLE "MKYONG"."STOCK" ADD CONSTRAINT "UNI_STOCK_CODE" UNIQUE ("STOCK_CODE");
  ALTER TABLE "MKYONG"."STOCK" ADD CONSTRAINT "STOCK_PK" PRIMARY KEY ("STOCK_ID");
  ALTER TABLE "MKYONG"."STOCK" MODIFY ("STOCK_CODE" NOT NULL ENABLE);
  ALTER TABLE "MKYONG"."STOCK" MODIFY ("STOCK_ID" NOT NULL ENABLE);
  ALTER TABLE "MKYONG"."STOCK" MODIFY ("STOCK_NAME" NOT NULL ENABLE);
  
  
  
  --------------------------------------------------------
--  DDL for Sequence STOCK_SEQ
--------------------------------------------------------

  CREATE SEQUENCE  "MKYONG"."STOCK_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999 INCREMENT BY 1 START WITH 21 CACHE 20 ORDER  CYCLE ;

   
   --------------------------------------------------------
--  DDL for Table STOCK_DETAIL
--------------------------------------------------------

  CREATE TABLE "MKYONG"."STOCK_DETAIL" 
   ("STOCK_ID" NUMBER, 
	"COMP_NAME" VARCHAR2(100 BYTE), 
	"COMP_DESC" VARCHAR2(255 BYTE), 
	"REMARK" VARCHAR2(255 BYTE), 
	"LISTED_DATE" DATE
   );
--------------------------------------------------------
--  DDL for Index STOCK_DETAIL_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "MKYONG"."STOCK_DETAIL_PK" ON "MKYONG"."STOCK_DETAIL" ("STOCK_ID");
--------------------------------------------------------
--  Constraints for Table STOCK_DETAIL
--------------------------------------------------------

  ALTER TABLE "MKYONG"."STOCK_DETAIL" ADD CONSTRAINT "STOCK_DETAIL_PK" PRIMARY KEY ("STOCK_ID");
  ALTER TABLE "MKYONG"."STOCK_DETAIL" MODIFY ("LISTED_DATE" NOT NULL ENABLE);
  ALTER TABLE "MKYONG"."STOCK_DETAIL" MODIFY ("REMARK" NOT NULL ENABLE);
  ALTER TABLE "MKYONG"."STOCK_DETAIL" MODIFY ("COMP_DESC" NOT NULL ENABLE);
  ALTER TABLE "MKYONG"."STOCK_DETAIL" MODIFY ("COMP_NAME" NOT NULL ENABLE);
  ALTER TABLE "MKYONG"."STOCK_DETAIL" MODIFY ("STOCK_ID" NOT NULL ENABLE);

   
