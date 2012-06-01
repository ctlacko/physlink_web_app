PRAGMA foreign_keys=OFF;
BEGIN TRANSACTION;
CREATE TABLE client_info (
 "client_id" VARCHAR(255) default NULL,
 "session" VARCHAR(255) default NULL,
 "token" VARCHAR(255) default NULL,
 "token_sent" BIGINT default 0,
 "reset" BIGINT default 0,
 "port" VARCHAR(10) default NULL,
 "last_sync_success" VARCHAR(100) default NULL);
CREATE TABLE object_values (
 "source_id" BIGINT default NULL,
 "attrib" varchar(255) default NULL,
 "object" varchar(255) default NULL,
 "value" varchar default NULL);
INSERT INTO "object_values" VALUES(40003,'name','105180240906242.94','Cardiology');
INSERT INTO "object_values" VALUES(40003,'name','105180240906244.94','Pediatrics');
INSERT INTO "object_values" VALUES(40004,'firstname','105180240906246.94','John');
INSERT INTO "object_values" VALUES(40004,'lastname','105180240906246.94','Kocurek');
INSERT INTO "object_values" VALUES(40004,'login','105180240906246.94','jmk');
INSERT INTO "object_values" VALUES(40004,'password','105180240906246.94','pass');
INSERT INTO "object_values" VALUES(40004,'specialty_id','105180240906246.94','1');
INSERT INTO "object_values" VALUES(40004,'firstname','105180240906248.94','Joe');
INSERT INTO "object_values" VALUES(40004,'lastname','105180240906248.94','Smith');
INSERT INTO "object_values" VALUES(40004,'login','105180240906248.94','js');
INSERT INTO "object_values" VALUES(40004,'password','105180240906248.94','pass');
INSERT INTO "object_values" VALUES(40004,'specialty_id','105180240906248.94','2');
INSERT INTO "object_values" VALUES(40008,'procedure_date','105278544928865.05','5/3/2012');
INSERT INTO "object_values" VALUES(40008,'procedure_time','105278544928865.05','10:00am');
INSERT INTO "object_values" VALUES(40008,'facility_id','105278544928865.05','1');
INSERT INTO "object_values" VALUES(40008,'firstname','105278544928865.05','Sally');
INSERT INTO "object_values" VALUES(40008,'lastname','105278544928865.05','Smith');
INSERT INTO "object_values" VALUES(40008,'dob','105278544928865.05','1/1/1980');
INSERT INTO "object_values" VALUES(40008,'payment','105278544928865.05','Cash');
INSERT INTO "object_values" VALUES(40008,'dictation','105278544928865.05','123as');
INSERT INTO "object_values" VALUES(40008,'followup','105278544928865.05','no');
INSERT INTO "object_values" VALUES(40008,'physician_id','105278544928865.05','1');
INSERT INTO "object_values" VALUES(40008,'id','105278544928865.05','1');
INSERT INTO "object_values" VALUES(40008,'procedure_date','105278544928867.05','5/3/2012');
INSERT INTO "object_values" VALUES(40008,'procedure_time','105278544928867.05','11:00am');
INSERT INTO "object_values" VALUES(40008,'facility_id','105278544928867.05','2');
INSERT INTO "object_values" VALUES(40008,'firstname','105278544928867.05','Sue');
INSERT INTO "object_values" VALUES(40008,'lastname','105278544928867.05','Me');
INSERT INTO "object_values" VALUES(40008,'dob','105278544928867.05','2/2/2000');
INSERT INTO "object_values" VALUES(40008,'payment','105278544928867.05','Amex');
INSERT INTO "object_values" VALUES(40008,'dictation','105278544928867.05','7382xc');
INSERT INTO "object_values" VALUES(40008,'followup','105278544928867.05','yes');
INSERT INTO "object_values" VALUES(40008,'physician_id','105278544928867.05','1');
INSERT INTO "object_values" VALUES(40008,'id','105278544928867.05','2');
CREATE TABLE changed_values (
 "source_id" BIGINT default NULL,
 "attrib" varchar(255) default NULL,
 "object" varchar(255) default NULL,
 "value" varchar default NULL,
 "attrib_type" varchar(255) default NULL,
 "update_type" varchar(255) default NULL,
 "sent" BIGINT default 0);
CREATE TABLE sources (
 "source_id" BIGINT PRIMARY KEY,
 "name" VARCHAR(255) default NULL,
 "token" BIGINT default NULL,
 "sync_priority" BIGINT,
 "partition" VARCHAR(255),
 "sync_type" VARCHAR(255),
 "metadata" varchar default NULL, 
 "last_updated" BIGINT default 0,
 "last_inserted_size" BIGINT default 0,
 "last_deleted_size" BIGINT default 0,
 "last_sync_duration" BIGINT default 0,
 "last_sync_success" BIGINT default 0,
 "backend_refresh_time" BIGINT default 0,
 "source_attribs" varchar default NULL,
 "schema" varchar default NULL,
 "schema_version" varchar default NULL,
 "associations" varchar default NULL,
 "blob_attribs" varchar default NULL);
INSERT INTO "sources" VALUES(40003,'Specialty',NULL,1000,'local','none',NULL,0,0,0,0,0,0,NULL,NULL,NULL,'','');
INSERT INTO "sources" VALUES(40004,'Physician',NULL,1000,'local','none',NULL,0,0,0,0,0,0,NULL,'CREATE TABLE "Physician" ( "firstname" varchar default null,"lastname" varchar default null,"login" varchar default null,"password" varchar default null,"specialty_id" integer default null,"object" varchar(255) PRIMARY KEY );
;
',NULL,'','');
INSERT INTO "sources" VALUES(40005,'Procedure',NULL,1000,'local','none',NULL,0,0,0,0,0,0,NULL,'CREATE TABLE "Procedure" ( "name" varchar default null,"specialty_id" integer default null,"object" varchar(255) PRIMARY KEY );
;
',NULL,'','');
INSERT INTO "sources" VALUES(40006,'Facilities',NULL,1000,'local','none',NULL,0,0,0,0,0,0,NULL,'CREATE TABLE "Facilities" ( "name" varchar default null,"physician_id" integer default null,"object" varchar(255) PRIMARY KEY );
;
',NULL,'','');
INSERT INTO "sources" VALUES(40007,'CaseProcedure',NULL,1000,'local','none',NULL,0,0,0,0,0,0,NULL,'CREATE TABLE "CaseProcedure" ( "laterality" varchar default null,"volume" varchar default null,"patient_case_id" integer default null,"procedure_id" integer default null,"object" varchar(255) PRIMARY KEY );
;
',NULL,'','');
INSERT INTO "sources" VALUES(40008,'PatientCases',NULL,1000,'local','none',NULL,0,0,0,0,0,0,NULL,NULL,NULL,'','');
INSERT INTO "sources" VALUES(40009,'Image',NULL,1000,'local','none',NULL,0,0,0,0,0,0,NULL,NULL,NULL,'','image_uri,0');
CREATE TABLE "Physician" ( "firstname" varchar default null,"lastname" varchar default null,"login" varchar default null,"password" varchar default null,"specialty_id" integer default null,"object" varchar(255) PRIMARY KEY , "id" INTEGER);
INSERT INTO "Physician" VALUES('John','Kocurek','jmk','pass',1,'105181674125624.03',1);
INSERT INTO "Physician" VALUES('Joe','Smoth','js','pass',2,'105181674125626.03',2);
CREATE TABLE "Facilities" ( "name" varchar default null,"physician_id" integer default null,"object" varchar(255) PRIMARY KEY , "facility_id" INTEGER);
INSERT INTO "Facilities" VALUES('St. Judes',1,'105188295109382.0',1);
INSERT INTO "Facilities" VALUES('St. Mary',2,'105188295109384.0',2);
INSERT INTO "Facilities" VALUES('UTMB Galveston',1,'105188295109386.0',3);
INSERT INTO "Facilities" VALUES('Texas Medical Center',2,'105188295109388.0',4);
CREATE TABLE "Procedure" ( "name" varchar default null,"specialty_id" integer default null,"object" varchar(255) PRIMARY KEY , "procedure_id" INTEGER);
INSERT INTO "Procedure" VALUES('Breast Augmentation',1,'105188295109390.0',1);
INSERT INTO "Procedure" VALUES('Liposuction',1,'105188295109392.0',2);
INSERT INTO "Procedure" VALUES('Tissue Expander',1,'105188295109394.0',3);
INSERT INTO "Procedure" VALUES('Breast Reduction',2,'105188295109396.0',4);
INSERT INTO "Procedure" VALUES('Brazilian Butt Lift',2,'105188295109398.0',5);
CREATE TABLE "CaseProcedure" ( "laterality" varchar default null,"volume" varchar default null,"patient_case_id" integer default null,"procedure_id" integer default null,"object" varchar(255) PRIMARY KEY );
INSERT INTO "CaseProcedure" VALUES('both','100 ml',1,1,'105269898936640.06');
INSERT INTO "CaseProcedure" VALUES('left','50 ml',2,2,'105269898936642.06');
CREATE TABLE "PatientCases" ( "procedure_date" integer default null,"procedure_time" integer default null,"facility_id" integer default null,"firstname" varchar default null,"lastname" varchar default null,"dob" integer default null,"payment" varchar default null,"dictation" varchar default null,"followup" varchar default null,"physician_id" integer default null,"id" integer default null,"object" varchar(255) PRIMARY KEY , "procedure_id" INTEGER, "age" INTEGER);
INSERT INTO "PatientCases" VALUES('05/11/2012','13:00:00',1,'Sally','Smith','1/1/1980','Cash','1234sd','yes',1,1,'105279791729514.02',2,32);
INSERT INTO "PatientCases" VALUES('05/11/2012','15:00:00',2,'Cindy','Source','2/2/2000','Amex','57848xc','yes',1,2,'105279791729516.02',3,12);
INSERT INTO "PatientCases" VALUES('05/11/2012','06:00:00',1,'Sally','Smithers','3/3/1992','Check','1235365','no',1,3,'105356151095203.97',4,20);
INSERT INTO "PatientCases" VALUES('05/11/2012','07:00:00',1,'chris','lacko','02/20/1999','asdf','asdf','no',1,6,'105626128679514.03',1,18);
INSERT INTO "PatientCases" VALUES('05/11/2012','09:30:30',4,'Sandra','Sonderberg','02/02/2000','Cash','asd0202','no',1,7,'105963826710414.98',5,12);
INSERT INTO "PatientCases" VALUES(NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'106236048398878.97',NULL,NULL);
INSERT INTO "PatientCases" VALUES(NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'106236048398880.97',NULL,NULL);
CREATE TABLE "Image" ("image_uri" varchar DEFAULT (null) ,"object" varchar(255) PRIMARY KEY ,"image_id" INTEGER AUTO_INCREMENT DEFAULT (1) );
CREATE INDEX by_src_id on object_values ("source_id");
CREATE UNIQUE INDEX by_src_object ON object_values ("object", "attrib", "source_id");
CREATE INDEX by_src_value ON object_values ("attrib", "source_id", "value");
CREATE TRIGGER rhodeleteTrigger BEFORE DELETE ON object_values FOR EACH ROW 
   BEGIN 
       SELECT rhoOnDeleteObjectRecord(OLD.value, OLD.source_id, OLD.attrib );
   END;
CREATE TRIGGER rhoupdateTrigger BEFORE UPDATE ON object_values FOR EACH ROW WHEN NEW.value != OLD.value
   BEGIN 
       SELECT rhoOnUpdateObjectRecord(OLD.value, OLD.source_id, OLD.attrib );
   END;
CREATE TRIGGER rhoSchemaTrigger_Image_image_uri_delete BEFORE DELETE ON "Image" FOR EACH ROW 
   BEGIN 
       SELECT rhoOnDeleteSchemaRecord( OLD.image_uri);
   END;
CREATE TRIGGER rhoSchemaTrigger_Image_image_uri_update BEFORE UPDATE ON "Image" FOR EACH ROW
   BEGIN 
       SELECT rhoOnUpdateSchemaRecord( OLD.image_uri, NEW.image_uri);
   END;
COMMIT;
