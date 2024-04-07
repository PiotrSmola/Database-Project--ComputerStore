--------------------------------------------------------
--  File created - pi�tek-kwietnia-05-2024   
--------------------------------------------------------
DROP SEQUENCE "C##SKLEP"."PRODUKTY_SEQ";
DROP TABLE "C##SKLEP"."KATEGORIE" cascade constraints;
DROP TABLE "C##SKLEP"."KLIENCI" cascade constraints;
DROP TABLE "C##SKLEP"."NEWSLETTER" cascade constraints;
DROP TABLE "C##SKLEP"."OPINIE" cascade constraints;
DROP TABLE "C##SKLEP"."PRACOWNICY" cascade constraints;
DROP TABLE "C##SKLEP"."PRODUKTY" cascade constraints;
DROP TABLE "C##SKLEP"."PRODUKTY_KATEGORIE" cascade constraints;
DROP TABLE "C##SKLEP"."PROMOCJE" cascade constraints;
DROP TABLE "C##SKLEP"."PRZESYLKI" cascade constraints;
DROP TABLE "C##SKLEP"."REKLAMACJE" cascade constraints;
DROP TABLE "C##SKLEP"."ZAMOWIENIA" cascade constraints;
DROP TABLE "C##SKLEP"."ZAMOWIENIA_PRODUKTY" cascade constraints;
--------------------------------------------------------
--  DDL for Sequence PRODUKTY_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "C##SKLEP"."PRODUKTY_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 NOCACHE  NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Table KATEGORIE
--------------------------------------------------------

  CREATE TABLE "C##SKLEP"."KATEGORIE" 
   (	"ID_KATEGORII" NUMBER(*,0), 
	"NAZWA_KATEGORII" VARCHAR2(50 CHAR), 
	"OPIS" VARCHAR2(100 CHAR)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table KLIENCI
--------------------------------------------------------

  CREATE TABLE "C##SKLEP"."KLIENCI" 
   (	"ID_KLIENTA" NUMBER(*,0), 
	"IMIE" VARCHAR2(20 CHAR), 
	"NAZWISKO" VARCHAR2(50 CHAR), 
	"ADRES_DOSTAWY" VARCHAR2(100 CHAR), 
	"ADRES_FAKTURA" VARCHAR2(100 CHAR), 
	"NR_TELEFONU" CHAR(10 CHAR), 
	"EMAIL" VARCHAR2(100 CHAR), 
	"HASLO" CHAR(64 CHAR)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table NEWSLETTER
--------------------------------------------------------

  CREATE TABLE "C##SKLEP"."NEWSLETTER" 
   (	"ID_SUBSKRYPCJI" NUMBER(*,0), 
	"ID_KLIENTA" NUMBER(*,0), 
	"POCZATEK_SUBSKRYPCJI" TIMESTAMP (6), 
	"STATUS_SUBSKRYPCJI" VARCHAR2(10 CHAR)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table OPINIE
--------------------------------------------------------

  CREATE TABLE "C##SKLEP"."OPINIE" 
   (	"ID_OPINII" NUMBER(*,0), 
	"ID_PRODUKTU" NUMBER(*,0), 
	"ID_KLIENTA" NUMBER(*,0), 
	"TRESC_OPINII" NVARCHAR2(250), 
	"OCENA" NUMBER(*,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table PRACOWNICY
--------------------------------------------------------

  CREATE TABLE "C##SKLEP"."PRACOWNICY" 
   (	"ID_PRACOWNIKA" NUMBER(*,0), 
	"IMIE" VARCHAR2(20 CHAR), 
	"NAZWISKO" VARCHAR2(50 CHAR), 
	"STANOWISKO" VARCHAR2(50 CHAR), 
	"EMAIL" VARCHAR2(100 CHAR), 
	"NR_TELEFONU" CHAR(10 CHAR)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table PRODUKTY
--------------------------------------------------------

  CREATE TABLE "C##SKLEP"."PRODUKTY" 
   (	"ID_PRODUKTU" NUMBER(*,0), 
	"NAZWA" VARCHAR2(50 CHAR), 
	"ID_KATEGORII" NUMBER(*,0), 
	"CENA" NUMBER(10,2), 
	"SPECYFIKACJA" CLOB, 
	"ILOSC_DOSTEPNYCH" NUMBER(*,0), 
	"ID_PROMOCJI" NUMBER(*,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" 
 LOB ("SPECYFIKACJA") STORE AS SECUREFILE (
  TABLESPACE "USERS" ENABLE STORAGE IN ROW CHUNK 8192
  NOCACHE LOGGING  NOCOMPRESS  KEEP_DUPLICATES 
  STORAGE(INITIAL 106496 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)) ;
--------------------------------------------------------
--  DDL for Table PRODUKTY_KATEGORIE
--------------------------------------------------------

  CREATE TABLE "C##SKLEP"."PRODUKTY_KATEGORIE" 
   (	"ID_PRODUKTU" NUMBER(*,0), 
	"ID_KATEGORII" NUMBER(*,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table PROMOCJE
--------------------------------------------------------

  CREATE TABLE "C##SKLEP"."PROMOCJE" 
   (	"ID_PROMOCJI" NUMBER(*,0), 
	"OPIS_PROMOCJI" VARCHAR2(100 CHAR), 
	"WYSOKOSC_RABATU" NUMBER(5,2), 
	"DATA_ROZPOCZECIA" DATE, 
	"DATA_ZAKONCZENIA" DATE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table PRZESYLKI
--------------------------------------------------------

  CREATE TABLE "C##SKLEP"."PRZESYLKI" 
   (	"ID_PRZESYLKI" NUMBER(*,0), 
	"ID_ZAMOWIENIA" NUMBER(*,0), 
	"FIRMA_KURIERSKA" VARCHAR2(50 CHAR), 
	"ID_SLEDZENIA" CHAR(20 CHAR), 
	"STATUS_DOSTAWY" VARCHAR2(30 CHAR), 
	"CZAS_DOSTAWY" DATE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table REKLAMACJE
--------------------------------------------------------

  CREATE TABLE "C##SKLEP"."REKLAMACJE" 
   (	"ID_REKLAMACJI" NUMBER(*,0), 
	"ID_ZAMOWIENIA" NUMBER(*,0), 
	"PRZYCZYNA" VARCHAR2(100 CHAR), 
	"STATUS" VARCHAR2(20 CHAR), 
	"DATA_ZGLOSZENIA" TIMESTAMP (6)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table ZAMOWIENIA
--------------------------------------------------------

  CREATE TABLE "C##SKLEP"."ZAMOWIENIA" 
   (	"ID_ZAMOWIENIA" NUMBER(*,0), 
	"ID_KLIENTA" NUMBER(*,0), 
	"ID_PRACOWNIKA" NUMBER(*,0), 
	"DATA_ZAMOWIENIA" TIMESTAMP (6), 
	"STATUS" VARCHAR2(20 CHAR)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table ZAMOWIENIA_PRODUKTY
--------------------------------------------------------

  CREATE TABLE "C##SKLEP"."ZAMOWIENIA_PRODUKTY" 
   (	"ID_ZAMOWIENIA" NUMBER(*,0), 
	"ID_PRODUKTU" NUMBER(*,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
REM INSERTING into C##SKLEP.KATEGORIE
SET DEFINE OFF;
REM INSERTING into C##SKLEP.KLIENCI
SET DEFINE OFF;
REM INSERTING into C##SKLEP.NEWSLETTER
SET DEFINE OFF;
REM INSERTING into C##SKLEP.OPINIE
SET DEFINE OFF;
REM INSERTING into C##SKLEP.PRACOWNICY
SET DEFINE OFF;
REM INSERTING into C##SKLEP.PRODUKTY
SET DEFINE OFF;
REM INSERTING into C##SKLEP.PRODUKTY_KATEGORIE
SET DEFINE OFF;
REM INSERTING into C##SKLEP.PROMOCJE
SET DEFINE OFF;
REM INSERTING into C##SKLEP.PRZESYLKI
SET DEFINE OFF;
REM INSERTING into C##SKLEP.REKLAMACJE
SET DEFINE OFF;
REM INSERTING into C##SKLEP.ZAMOWIENIA
SET DEFINE OFF;
REM INSERTING into C##SKLEP.ZAMOWIENIA_PRODUKTY
SET DEFINE OFF;
--------------------------------------------------------
--  DDL for Index PK_KATEGORIE
--------------------------------------------------------

  CREATE UNIQUE INDEX "C##SKLEP"."PK_KATEGORIE" ON "C##SKLEP"."KATEGORIE" ("ID_KATEGORII") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index PK_KLIENCI
--------------------------------------------------------

  CREATE UNIQUE INDEX "C##SKLEP"."PK_KLIENCI" ON "C##SKLEP"."KLIENCI" ("ID_KLIENTA") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index PK_NEWSLETTER
--------------------------------------------------------

  CREATE UNIQUE INDEX "C##SKLEP"."PK_NEWSLETTER" ON "C##SKLEP"."NEWSLETTER" ("ID_SUBSKRYPCJI") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index PK_OPINIE
--------------------------------------------------------

  CREATE UNIQUE INDEX "C##SKLEP"."PK_OPINIE" ON "C##SKLEP"."OPINIE" ("ID_OPINII") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index PK_PRACOWNICY
--------------------------------------------------------

  CREATE UNIQUE INDEX "C##SKLEP"."PK_PRACOWNICY" ON "C##SKLEP"."PRACOWNICY" ("ID_PRACOWNIKA") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index PK_PRODUKTY
--------------------------------------------------------

  CREATE UNIQUE INDEX "C##SKLEP"."PK_PRODUKTY" ON "C##SKLEP"."PRODUKTY" ("ID_PRODUKTU") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index PK_PRODUKTY_KATEGORIE
--------------------------------------------------------

  CREATE UNIQUE INDEX "C##SKLEP"."PK_PRODUKTY_KATEGORIE" ON "C##SKLEP"."PRODUKTY_KATEGORIE" ("ID_PRODUKTU", "ID_KATEGORII") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index PK_PROMOCJE
--------------------------------------------------------

  CREATE UNIQUE INDEX "C##SKLEP"."PK_PROMOCJE" ON "C##SKLEP"."PROMOCJE" ("ID_PROMOCJI") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index PK_PRZESYLKI
--------------------------------------------------------

  CREATE UNIQUE INDEX "C##SKLEP"."PK_PRZESYLKI" ON "C##SKLEP"."PRZESYLKI" ("ID_PRZESYLKI") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index PK_REKLAMACJE
--------------------------------------------------------

  CREATE UNIQUE INDEX "C##SKLEP"."PK_REKLAMACJE" ON "C##SKLEP"."REKLAMACJE" ("ID_REKLAMACJI") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index PK_ZAMOWIENIA
--------------------------------------------------------

  CREATE UNIQUE INDEX "C##SKLEP"."PK_ZAMOWIENIA" ON "C##SKLEP"."ZAMOWIENIA" ("ID_ZAMOWIENIA") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index PK_ZAMOWIENIA_PRODUKTY
--------------------------------------------------------

  CREATE UNIQUE INDEX "C##SKLEP"."PK_ZAMOWIENIA_PRODUKTY" ON "C##SKLEP"."ZAMOWIENIA_PRODUKTY" ("ID_ZAMOWIENIA", "ID_PRODUKTU") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index UNIQUE_ID_KLIENTA_NEWSLETTER
--------------------------------------------------------

  CREATE UNIQUE INDEX "C##SKLEP"."UNIQUE_ID_KLIENTA_NEWSLETTER" ON "C##SKLEP"."NEWSLETTER" ("ID_KLIENTA") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index UNIQUE_ID_ZAMOWIENIA
--------------------------------------------------------

  CREATE UNIQUE INDEX "C##SKLEP"."UNIQUE_ID_ZAMOWIENIA" ON "C##SKLEP"."REKLAMACJE" ("ID_ZAMOWIENIA") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index UNIQUE_ID_ZAMOWIENIA_PRZESYLKI
--------------------------------------------------------

  CREATE UNIQUE INDEX "C##SKLEP"."UNIQUE_ID_ZAMOWIENIA_PRZESYLKI" ON "C##SKLEP"."PRZESYLKI" ("ID_ZAMOWIENIA") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Trigger PRODUKTY_BIR
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "C##SKLEP"."PRODUKTY_BIR" 
BEFORE INSERT ON Produkty 
FOR EACH ROW 
BEGIN
  SELECT produkty_seq.NEXTVAL
  INTO   :new.ID_Produktu
  FROM   dual;
END;
/
ALTER TRIGGER "C##SKLEP"."PRODUKTY_BIR" ENABLE;
--------------------------------------------------------
--  Constraints for Table PRZESYLKI
--------------------------------------------------------

  ALTER TABLE "C##SKLEP"."PRZESYLKI" MODIFY ("ID_PRZESYLKI" NOT NULL ENABLE);
  ALTER TABLE "C##SKLEP"."PRZESYLKI" MODIFY ("ID_ZAMOWIENIA" NOT NULL ENABLE);
  ALTER TABLE "C##SKLEP"."PRZESYLKI" MODIFY ("FIRMA_KURIERSKA" NOT NULL ENABLE);
  ALTER TABLE "C##SKLEP"."PRZESYLKI" MODIFY ("STATUS_DOSTAWY" NOT NULL ENABLE);
  ALTER TABLE "C##SKLEP"."PRZESYLKI" ADD CONSTRAINT "PK_PRZESYLKI" PRIMARY KEY ("ID_PRZESYLKI")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "C##SKLEP"."PRZESYLKI" ADD CONSTRAINT "UNIQUE_ID_ZAMOWIENIA_PRZESYLKI" UNIQUE ("ID_ZAMOWIENIA")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table PRODUKTY_KATEGORIE
--------------------------------------------------------

  ALTER TABLE "C##SKLEP"."PRODUKTY_KATEGORIE" MODIFY ("ID_PRODUKTU" NOT NULL ENABLE);
  ALTER TABLE "C##SKLEP"."PRODUKTY_KATEGORIE" MODIFY ("ID_KATEGORII" NOT NULL ENABLE);
  ALTER TABLE "C##SKLEP"."PRODUKTY_KATEGORIE" ADD CONSTRAINT "PK_PRODUKTY_KATEGORIE" PRIMARY KEY ("ID_PRODUKTU", "ID_KATEGORII")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table NEWSLETTER
--------------------------------------------------------

  ALTER TABLE "C##SKLEP"."NEWSLETTER" MODIFY ("ID_SUBSKRYPCJI" NOT NULL ENABLE);
  ALTER TABLE "C##SKLEP"."NEWSLETTER" MODIFY ("ID_KLIENTA" NOT NULL ENABLE);
  ALTER TABLE "C##SKLEP"."NEWSLETTER" MODIFY ("POCZATEK_SUBSKRYPCJI" NOT NULL ENABLE);
  ALTER TABLE "C##SKLEP"."NEWSLETTER" MODIFY ("STATUS_SUBSKRYPCJI" NOT NULL ENABLE);
  ALTER TABLE "C##SKLEP"."NEWSLETTER" ADD CONSTRAINT "PK_NEWSLETTER" PRIMARY KEY ("ID_SUBSKRYPCJI")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "C##SKLEP"."NEWSLETTER" ADD CONSTRAINT "UNIQUE_ID_KLIENTA_NEWSLETTER" UNIQUE ("ID_KLIENTA")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table ZAMOWIENIA_PRODUKTY
--------------------------------------------------------

  ALTER TABLE "C##SKLEP"."ZAMOWIENIA_PRODUKTY" MODIFY ("ID_ZAMOWIENIA" NOT NULL ENABLE);
  ALTER TABLE "C##SKLEP"."ZAMOWIENIA_PRODUKTY" MODIFY ("ID_PRODUKTU" NOT NULL ENABLE);
  ALTER TABLE "C##SKLEP"."ZAMOWIENIA_PRODUKTY" ADD CONSTRAINT "PK_ZAMOWIENIA_PRODUKTY" PRIMARY KEY ("ID_ZAMOWIENIA", "ID_PRODUKTU")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table PRODUKTY
--------------------------------------------------------

  ALTER TABLE "C##SKLEP"."PRODUKTY" MODIFY ("ID_PRODUKTU" NOT NULL ENABLE);
  ALTER TABLE "C##SKLEP"."PRODUKTY" MODIFY ("NAZWA" NOT NULL ENABLE);
  ALTER TABLE "C##SKLEP"."PRODUKTY" MODIFY ("ID_KATEGORII" NOT NULL ENABLE);
  ALTER TABLE "C##SKLEP"."PRODUKTY" MODIFY ("CENA" NOT NULL ENABLE);
  ALTER TABLE "C##SKLEP"."PRODUKTY" MODIFY ("ILOSC_DOSTEPNYCH" NOT NULL ENABLE);
  ALTER TABLE "C##SKLEP"."PRODUKTY" ADD CONSTRAINT "PK_PRODUKTY" PRIMARY KEY ("ID_PRODUKTU")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table REKLAMACJE
--------------------------------------------------------

  ALTER TABLE "C##SKLEP"."REKLAMACJE" MODIFY ("ID_REKLAMACJI" NOT NULL ENABLE);
  ALTER TABLE "C##SKLEP"."REKLAMACJE" MODIFY ("ID_ZAMOWIENIA" NOT NULL ENABLE);
  ALTER TABLE "C##SKLEP"."REKLAMACJE" MODIFY ("PRZYCZYNA" NOT NULL ENABLE);
  ALTER TABLE "C##SKLEP"."REKLAMACJE" MODIFY ("STATUS" NOT NULL ENABLE);
  ALTER TABLE "C##SKLEP"."REKLAMACJE" MODIFY ("DATA_ZGLOSZENIA" NOT NULL ENABLE);
  ALTER TABLE "C##SKLEP"."REKLAMACJE" ADD CONSTRAINT "PK_REKLAMACJE" PRIMARY KEY ("ID_REKLAMACJI")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "C##SKLEP"."REKLAMACJE" ADD CONSTRAINT "UNIQUE_ID_ZAMOWIENIA" UNIQUE ("ID_ZAMOWIENIA")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table KLIENCI
--------------------------------------------------------

  ALTER TABLE "C##SKLEP"."KLIENCI" MODIFY ("ID_KLIENTA" NOT NULL ENABLE);
  ALTER TABLE "C##SKLEP"."KLIENCI" MODIFY ("IMIE" NOT NULL ENABLE);
  ALTER TABLE "C##SKLEP"."KLIENCI" MODIFY ("NAZWISKO" NOT NULL ENABLE);
  ALTER TABLE "C##SKLEP"."KLIENCI" MODIFY ("ADRES_DOSTAWY" NOT NULL ENABLE);
  ALTER TABLE "C##SKLEP"."KLIENCI" MODIFY ("NR_TELEFONU" NOT NULL ENABLE);
  ALTER TABLE "C##SKLEP"."KLIENCI" MODIFY ("HASLO" NOT NULL ENABLE);
  ALTER TABLE "C##SKLEP"."KLIENCI" ADD CONSTRAINT "PK_KLIENCI" PRIMARY KEY ("ID_KLIENTA")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table PRACOWNICY
--------------------------------------------------------

  ALTER TABLE "C##SKLEP"."PRACOWNICY" MODIFY ("ID_PRACOWNIKA" NOT NULL ENABLE);
  ALTER TABLE "C##SKLEP"."PRACOWNICY" MODIFY ("IMIE" NOT NULL ENABLE);
  ALTER TABLE "C##SKLEP"."PRACOWNICY" MODIFY ("NAZWISKO" NOT NULL ENABLE);
  ALTER TABLE "C##SKLEP"."PRACOWNICY" MODIFY ("STANOWISKO" NOT NULL ENABLE);
  ALTER TABLE "C##SKLEP"."PRACOWNICY" MODIFY ("NR_TELEFONU" NOT NULL ENABLE);
  ALTER TABLE "C##SKLEP"."PRACOWNICY" ADD CONSTRAINT "PK_PRACOWNICY" PRIMARY KEY ("ID_PRACOWNIKA")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table OPINIE
--------------------------------------------------------

  ALTER TABLE "C##SKLEP"."OPINIE" MODIFY ("ID_OPINII" NOT NULL ENABLE);
  ALTER TABLE "C##SKLEP"."OPINIE" MODIFY ("ID_PRODUKTU" NOT NULL ENABLE);
  ALTER TABLE "C##SKLEP"."OPINIE" MODIFY ("ID_KLIENTA" NOT NULL ENABLE);
  ALTER TABLE "C##SKLEP"."OPINIE" MODIFY ("OCENA" NOT NULL ENABLE);
  ALTER TABLE "C##SKLEP"."OPINIE" ADD CONSTRAINT "CHK_OCENA" CHECK (Ocena BETWEEN 1 AND 5) ENABLE;
  ALTER TABLE "C##SKLEP"."OPINIE" ADD CONSTRAINT "PK_OPINIE" PRIMARY KEY ("ID_OPINII")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table ZAMOWIENIA
--------------------------------------------------------

  ALTER TABLE "C##SKLEP"."ZAMOWIENIA" MODIFY ("ID_ZAMOWIENIA" NOT NULL ENABLE);
  ALTER TABLE "C##SKLEP"."ZAMOWIENIA" MODIFY ("ID_KLIENTA" NOT NULL ENABLE);
  ALTER TABLE "C##SKLEP"."ZAMOWIENIA" MODIFY ("ID_PRACOWNIKA" NOT NULL ENABLE);
  ALTER TABLE "C##SKLEP"."ZAMOWIENIA" MODIFY ("DATA_ZAMOWIENIA" NOT NULL ENABLE);
  ALTER TABLE "C##SKLEP"."ZAMOWIENIA" MODIFY ("STATUS" NOT NULL ENABLE);
  ALTER TABLE "C##SKLEP"."ZAMOWIENIA" ADD CONSTRAINT "PK_ZAMOWIENIA" PRIMARY KEY ("ID_ZAMOWIENIA")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table PROMOCJE
--------------------------------------------------------

  ALTER TABLE "C##SKLEP"."PROMOCJE" MODIFY ("ID_PROMOCJI" NOT NULL ENABLE);
  ALTER TABLE "C##SKLEP"."PROMOCJE" MODIFY ("WYSOKOSC_RABATU" NOT NULL ENABLE);
  ALTER TABLE "C##SKLEP"."PROMOCJE" MODIFY ("DATA_ROZPOCZECIA" NOT NULL ENABLE);
  ALTER TABLE "C##SKLEP"."PROMOCJE" MODIFY ("DATA_ZAKONCZENIA" NOT NULL ENABLE);
  ALTER TABLE "C##SKLEP"."PROMOCJE" ADD CONSTRAINT "PK_PROMOCJE" PRIMARY KEY ("ID_PROMOCJI")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table KATEGORIE
--------------------------------------------------------

  ALTER TABLE "C##SKLEP"."KATEGORIE" MODIFY ("ID_KATEGORII" NOT NULL ENABLE);
  ALTER TABLE "C##SKLEP"."KATEGORIE" MODIFY ("NAZWA_KATEGORII" NOT NULL ENABLE);
  ALTER TABLE "C##SKLEP"."KATEGORIE" ADD CONSTRAINT "PK_KATEGORIE" PRIMARY KEY ("ID_KATEGORII")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table NEWSLETTER
--------------------------------------------------------

  ALTER TABLE "C##SKLEP"."NEWSLETTER" ADD CONSTRAINT "FK_NEWSLETTER_KLIENCI" FOREIGN KEY ("ID_KLIENTA")
	  REFERENCES "C##SKLEP"."KLIENCI" ("ID_KLIENTA") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table OPINIE
--------------------------------------------------------

  ALTER TABLE "C##SKLEP"."OPINIE" ADD CONSTRAINT "FK_OPINIE_KLIENCI" FOREIGN KEY ("ID_KLIENTA")
	  REFERENCES "C##SKLEP"."KLIENCI" ("ID_KLIENTA") ENABLE;
  ALTER TABLE "C##SKLEP"."OPINIE" ADD CONSTRAINT "FK_OPINIE_PRODUKTY" FOREIGN KEY ("ID_PRODUKTU")
	  REFERENCES "C##SKLEP"."PRODUKTY" ("ID_PRODUKTU") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table PRODUKTY
--------------------------------------------------------

  ALTER TABLE "C##SKLEP"."PRODUKTY" ADD CONSTRAINT "FK_PRODUKTY_PROMOCJE" FOREIGN KEY ("ID_PROMOCJI")
	  REFERENCES "C##SKLEP"."PROMOCJE" ("ID_PROMOCJI") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table PRODUKTY_KATEGORIE
--------------------------------------------------------

  ALTER TABLE "C##SKLEP"."PRODUKTY_KATEGORIE" ADD CONSTRAINT "FK_PRODUKTY_KATEGORIE_PRODUKTY" FOREIGN KEY ("ID_PRODUKTU")
	  REFERENCES "C##SKLEP"."PRODUKTY" ("ID_PRODUKTU") ENABLE;
  ALTER TABLE "C##SKLEP"."PRODUKTY_KATEGORIE" ADD CONSTRAINT "FK_PRODUKTY_KATEGORIE_KATEGORIE" FOREIGN KEY ("ID_KATEGORII")
	  REFERENCES "C##SKLEP"."KATEGORIE" ("ID_KATEGORII") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table PRZESYLKI
--------------------------------------------------------

  ALTER TABLE "C##SKLEP"."PRZESYLKI" ADD CONSTRAINT "FK_PRZESYLKI_ZAMOWIENIA" FOREIGN KEY ("ID_ZAMOWIENIA")
	  REFERENCES "C##SKLEP"."ZAMOWIENIA" ("ID_ZAMOWIENIA") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table REKLAMACJE
--------------------------------------------------------

  ALTER TABLE "C##SKLEP"."REKLAMACJE" ADD CONSTRAINT "FK_REKLAMACJE_ZAMOWIENIA" FOREIGN KEY ("ID_ZAMOWIENIA")
	  REFERENCES "C##SKLEP"."ZAMOWIENIA" ("ID_ZAMOWIENIA") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table ZAMOWIENIA
--------------------------------------------------------

  ALTER TABLE "C##SKLEP"."ZAMOWIENIA" ADD CONSTRAINT "FK_ZAMOWIENIA_PRACOWNICY" FOREIGN KEY ("ID_PRACOWNIKA")
	  REFERENCES "C##SKLEP"."PRACOWNICY" ("ID_PRACOWNIKA") ENABLE;
  ALTER TABLE "C##SKLEP"."ZAMOWIENIA" ADD CONSTRAINT "FK_ZAMOWIENIA_KLIENCI" FOREIGN KEY ("ID_KLIENTA")
	  REFERENCES "C##SKLEP"."KLIENCI" ("ID_KLIENTA") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table ZAMOWIENIA_PRODUKTY
--------------------------------------------------------

  ALTER TABLE "C##SKLEP"."ZAMOWIENIA_PRODUKTY" ADD CONSTRAINT "FK_ZAMOWIENIA_PRODUKTY_ZAMOWIENIA" FOREIGN KEY ("ID_ZAMOWIENIA")
	  REFERENCES "C##SKLEP"."ZAMOWIENIA" ("ID_ZAMOWIENIA") ENABLE;
  ALTER TABLE "C##SKLEP"."ZAMOWIENIA_PRODUKTY" ADD CONSTRAINT "FK_ZAMOWIENIA_PRODUKTY_PRODUKTY" FOREIGN KEY ("ID_PRODUKTU")
	  REFERENCES "C##SKLEP"."PRODUKTY" ("ID_PRODUKTU") ENABLE;
