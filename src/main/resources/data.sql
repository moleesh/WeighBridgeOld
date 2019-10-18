-- Table Creation;
drop table IF EXISTS WEIGHINGTEMP;
create TABLE IF NOT EXISTS WEIGHINGTEMP (
	SLNO	INTEGER NOT NULL,
	DCNO	VARCHAR ( 20 ),
	DCNODATE	DATE,
	CUSTOMERNAME	VARCHAR ( 100 ),
	DRIVERNAME	VARCHAR ( 100 ),
	VEHICLENO	VARCHAR ( 100 ),
	MATERIAL	VARCHAR ( 100 ),
	NOOFBAGS	INTEGER,
	CHARGES	INTEGER,
	GROSSWT	INTEGER,
	GROSSDATE	DATE,
	GROSSTIME	TIME,
	TAREWT	INTEGER,
	TAREDATE	DATE,
	TARETIME	TIME,
	BAGDEDUCTION	INTEGER,
	NETWT	INTEGER,
	NETDATE	DATE,
	NETTIME	TIME,
	REMARKS	VARCHAR ( 100 ),
	MANUAL	BOOLEAN,
	PRIMARY KEY(SLNO)
);
drop table IF EXISTS WEIGHING;
create TABLE IF NOT EXISTS WEIGHING (
	SLNO	INTEGER NOT NULL,
	DCNO	VARCHAR ( 20 ),
	DCNODATE	DATE,
	CUSTOMERNAME	VARCHAR ( 100 ),
	DRIVERNAME	VARCHAR ( 100 ),
	VEHICLENO	VARCHAR ( 100 ),
	MATERIAL	VARCHAR ( 100 ),
	NOOFBAGS	INTEGER,
	CHARGES	INTEGER,
	GROSSWT	INTEGER,
	GROSSDATE	DATE,
	GROSSTIME	TIME,
	TAREWT	INTEGER,
	TAREDATE	DATE,
	TARETIME	TIME,
	BAGDEDUCTION	INTEGER,
	NETWT	INTEGER,
	NETDATE	DATE,
	NETTIME	TIME,
	REMARKS	VARCHAR ( 100 ),
	MANUAL	BOOLEAN,
	PRIMARY KEY(SLNO)
);
drop table IF EXISTS VEHICLETARES;
create TABLE IF NOT EXISTS VEHICLETARES (
	KEY	INTEGER NOT NULL,
	CUSTOMERNAME	VARCHAR ( 100 ),
	VEHICLENO	VARCHAR ( 100 ),
	TAREWT	INTEGER,
	TAREDATE	DATE,
	TARETIME	TIME,
	PRIMARY KEY(KEY)
);
drop table IF EXISTS TRANSPORTER;
create TABLE IF NOT EXISTS TRANSPORTER (
	TRANSPORTER	VARCHAR ( 100 ) NOT NULL,
	PRIMARY KEY(TRANSPORTER)
);
drop table IF EXISTS SETUP;
create TABLE IF NOT EXISTS SETUP (
	ID	VARCHAR ( 1 ) NOT NULL,
	UID	VARCHAR ( 100 ),
	ENDDATE	DATETIME,
	LASTLOGIN	DATETIME,
	PRIMARY KEY(ID)
);

-- Table Insertion;
insert into SETUP values ('2',null,null,null);
drop table IF EXISTS SETTINGS;
create TABLE IF NOT EXISTS SETTINGS (
	key	INTEGER NOT NULL,
	SLNO	INTEGER,
	BILLNO	INTEGER,
	BAUDRATE	INTEGER,
	PORTNAME	VARCHAR ( 100 ),
	TITLE1	VARCHAR ( 100 ),
	TITLE2	VARCHAR ( 100 ),
	FOOTER	VARCHAR ( 100 ),
	TAX	FLOAT,
	PRINTER1	VARCHAR ( 100 ),
	PRINTER2	VARCHAR ( 100 ),
	EXCLUDECUSTOMERS	BOOLEAN,
	EXCLUDECHARGES	BOOLEAN,
	COPIES	INTEGER,
	COPIES1	INTEGER,
	PRINTOPTIONFORWEIGHT	VARCHAR ( 100 ),
	PRINTOPTIONFORBILL	VARCHAR ( 100 ),
	REMOVEBILLING	BOOLEAN,
	EXCLUDEDRIVER	BOOLEAN,
	EXCLUDEREMARKS	BOOLEAN,
	AUTOCHARGES	BOOLEAN,
	AUTOCHARGES1	BOOLEAN,
	MATERIALSL	BOOLEAN,
	SMS	BOOLEAN,
	CAMERA	BOOLEAN,
	SMSBAUDRATE	INTEGER,
	SMSPORTNAME	VARCHAR ( 100 ),
	LINE1	VARCHAR ( 100 ),
	LINE2	VARCHAR ( 100 ),
	LINE3	VARCHAR ( 100 ),
	LINE4	VARCHAR ( 100 ),
	NAMEOFCONTRACTOR	VARCHAR ( 100 ),
	DEPARTMENTNAME	VARCHAR ( 100 ),
	SITEAT	VARCHAR ( 100 ),
	TARENOSLNO	BOOLEAN,
	EXCLUDEBAGS	BOOLEAN,
	BAGWEIGHT	DOUBLE,
	PRIMARY KEY(key)
);
insert into SETTINGS values(1, 1, 1, 0, '', 'BABULENS', 'NAGERCOIL', 'FOOTER', 0.0, '', '', TRUE, FALSE, 0, 0, 'Pre Print', 'Pre Print', TRUE, TRUE, TRUE, FALSE, FALSE, FALSE, FALSE, FALSE, 0, '', '', '', '', '', '', '', '', FALSE, TRUE, 0.0);
drop table IF EXISTS MATERIALS;
create TABLE IF NOT EXISTS MATERIALS (
	KEY	INTEGER NOT NULL,
	MATERIALS	VARCHAR ( 100 ),
	COST	FLOAT,
	PRIMARY KEY(KEY)
);
drop table IF EXISTS CUSTOMER;
create TABLE IF NOT EXISTS CUSTOMER (
	KEY	INTEGER NOT NULL,
	CUSTOMER	VARCHAR ( 100 ),
	CUSTOMERADDRESS	VARCHAR ( 100 ),
	CUSTOMERADDRESS1	VARCHAR ( 100 ),
	PRIMARY KEY(KEY)
);
drop table IF EXISTS CAMERA;
create TABLE IF NOT EXISTS CAMERA (
	CAMERA	INT NOT NULL,
	ENABLE	BOOLEAN,
	NAME	VARCHAR ( 100 ),
	RESOLUTION	VARCHAR ( 100 ),
	CROPX	INT,
	CROPY	INT,
	CROPWIDTH	INT,
	CROPHEIGHT	INT,
	PRIMARY KEY(CAMERA)
);
insert into CAMERA values (1,'true','Webcam Temp','770 * 433',0,0,770,433);
insert into CAMERA values (2,'FALSE','Webcam Temp','',0,0,0,0);
insert into CAMERA values (3,'FALSE','Webcam Temp','',0,0,0,0);
insert into CAMERA values (4,'FALSE','Webcam Temp','',0,0,0,0);
insert into CAMERA values (5,'FALSE','Temp','',0,0,0,0);
drop table IF EXISTS BILLPRITER;
create TABLE IF NOT EXISTS BILLPRITER (
	KEY	INTEGER NOT NULL,
	A1	VARCHAR ( 100 ),
	A2	VARCHAR ( 100 ),
	A3	VARCHAR ( 100 ),
	A4	VARCHAR ( 100 ),
	A5	VARCHAR ( 100 ),
	B1	VARCHAR ( 100 ),
	B2	VARCHAR ( 100 ),
	B3	VARCHAR ( 100 ),
	B4	VARCHAR ( 100 ),
	B5	VARCHAR ( 100 ),
	C1	VARCHAR ( 100 ),
	C2	VARCHAR ( 100 ),
	C3	VARCHAR ( 100 ),
	C4	VARCHAR ( 100 ),
	C5	VARCHAR ( 100 ),
	C6	VARCHAR ( 100 ),
	D1	VARCHAR ( 100 ),
	D2	VARCHAR ( 100 ),
	D3	VARCHAR ( 100 ),
	D4	VARCHAR ( 100 ),
	D5	VARCHAR ( 100 ),
	D6	VARCHAR ( 100 ),
	TITLE	VARCHAR ( 100 ),
	PRIMARY KEY(KEY)
);
insert into BILLPRITER values (1,'','','','','','','','','','','','','','','','','','','','','','','');
drop table IF EXISTS BILLING;
create TABLE IF NOT EXISTS BILLING (
	BILLNO	INTEGER NOT NULL,
	REFERENCESLNO	INTEGER,
	CUSTOMERNAME	VARCHAR ( 100 ),
	MATERIALNAME	VARCHAR ( 100 ),
	COSTPERUNIT	DOUBLE,
	NOOFUNITS	INTEGER,
	DISCOUNT	INTEGER,
	TOTAL	INTEGER,
	BILLDATE	DATE,
	REMARK	VARCHAR ( 100 ),
	CUSTOMERADDRESS	VARCHAR ( 100 ),
	VAT	INTEGER,
	CUSTOMERADDRESS1	VARCHAR ( 100 ),
	PRIMARY KEY(BILLNO)
);
commit;