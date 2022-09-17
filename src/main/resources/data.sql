-- TABLE CREATION;
DROP TABLE IF EXISTS WEIGHING;
CREATE TABLE IF NOT EXISTS WEIGHING
(
    SLNO                     INTEGER NOT NULL,
    DCNO                     VARCHAR(20),
    DCNODATE                 DATE,
    CUSTOMERNAME             VARCHAR(100),
    DRIVERNAME               VARCHAR(100),
    VEHICLENO                VARCHAR(100),
    PLACE                    VARCHAR(100),
    PHONE_NUMBER             VARCHAR(100),
    MATERIAL                 VARCHAR(100),
    NOOFBAGS                 INTEGER,
    CHARGES                  DOUBLE,
    CREDIT                   BOOLEAN,
    GROSSWT                  INTEGER,
    GROSSDATE                DATE,
    GROSSTIME                TIME,
    TAREWT                   INTEGER,
    TAREDATE                 DATE,
    TARETIME                 TIME,
    DEDUCTION_OR_PER_COST    DOUBLE,
    ROUND_OFF                DOUBLE,
    NETWT                    INTEGER,
    NETDATE                  DATE,
    NETTIME                  TIME,
    FINALWT                  INTEGER,
    FINALAMOUNT              INTEGER,
    REMARKS                  VARCHAR(100),
    MANUAL                   BOOLEAN,
    PRIMARY KEY (SLNO)
);
DROP TABLE IF EXISTS VEHICLETARES;
CREATE TABLE IF NOT EXISTS VEHICLETARES
(
    SQNO                     INTEGER NOT NULL,
    CUSTOMERNAME             VARCHAR(100),
    VEHICLENO                VARCHAR(100),
    TAREWT                   INTEGER,
    TAREDATE                 DATE,
    TARETIME                 TIME,
    PRIMARY KEY (SQNO)
);
DROP TABLE IF EXISTS TRANSPORTER;
CREATE TABLE IF NOT EXISTS TRANSPORTER
(
    TRANSPORTER              VARCHAR(100) NOT NULL,
    PRIMARY KEY (TRANSPORTER)
);
DROP TABLE IF EXISTS SETUP;
CREATE TABLE IF NOT EXISTS SETUP
(
    ID                       VARCHAR(1) NOT NULL,
    UID                      VARCHAR(100),
    ENDDATE                  DATETIME,
    LASTLOGIN                DATETIME,
    PRIMARY KEY (ID)
);
DROP TABLE IF EXISTS SETTINGS;
CREATE TABLE IF NOT EXISTS SETTINGS
(
    SQNO                   INTEGER NOT NULL,
    SLNO                   INTEGER,
    BAUDRATE               INTEGER,
    PORTNAME               VARCHAR(100),
    TITLE1                 VARCHAR(100),
    TITLE2                 VARCHAR(100),
    TITLE3                 VARCHAR(100),
    FOOTER                 VARCHAR(100),
    PRINTER                VARCHAR(100),
    EXCLUDECUSTOMERS       BOOLEAN,
    EXCLUDECHARGES         BOOLEAN,
    COPIES                 INTEGER,
    PRINTOPTIONFORWEIGHT   VARCHAR(100),
    REPORT                 VARCHAR(100),
    EXCLUDEDRIVER          BOOLEAN,
    EXCLUDEREMARKS         BOOLEAN,
    EXCLUDE_PLACE_AND_PHONE_NUMBER         BOOLEAN,
    EXCLUDEBAGS            BOOLEAN,
    EXCLUDEDCNO            BOOLEAN,
    EXCLUDE_CREDIT         BOOLEAN,
    AUTOCHARGES            BOOLEAN,
    MATERIALSL             BOOLEAN,
    ICEWATER               BOOLEAN,
    ROUND_OFF              BOOLEAN,
    TARE_TOKEN             BOOLEAN,
    EXIT_PASS              BOOLEAN,
    SMS                    BOOLEAN,
    CAMERA                 BOOLEAN,
    SMSBAUDRATE            INTEGER,
    SMSPORTNAME            VARCHAR(100),
    LINE1                  VARCHAR(100),
    LINE2                  VARCHAR(100),
    LINE3                  VARCHAR(100),
    LINE4                  VARCHAR(100),
    NAMEOFCONTRACTOR       VARCHAR(100),
    DEPARTMENTNAME         VARCHAR(100),
    SITEAT                 VARCHAR(100),
    TARENOSLNO             BOOLEAN,
    BAGWEIGHT              DOUBLE,
    ROUND_OFF_DECIMALS     INTEGER,
    NEED_LOGIN             BOOLEAN,
    NEED_PRINT_COPY_DIALOG BOOLEAN,
    SHOW_STATUS            BOOLEAN,
    TAKE_BACKUP            BOOLEAN,
    TRIAL_LICENSE_PASSWORD VARCHAR(20),
    LICENSE_PASSWORD       VARCHAR(20),
    UNLOCK_PASSWORD        VARCHAR(20),
    CAMERA_PASSWORD        VARCHAR(20),
    SMS_PASSWORD           VARCHAR(20),
    MANUAL_ENTRY_PASSWORD  VARCHAR(20),
    EDIT_ENABLE_PASSWORD   VARCHAR(20),
    RESET_PASSWORD         VARCHAR(20),
    LOGIN_PASSWORD         VARCHAR(20),
    PRIMARY KEY (SQNO)
);
DROP TABLE IF EXISTS MATERIALS;
CREATE TABLE IF NOT EXISTS MATERIALS
(
    SQNO                         INTEGER NOT NULL,
    MATERIAL                     VARCHAR(100),
    COST                         DOUBLE,
    PRIMARY KEY (SQNO)
);
DROP TABLE IF EXISTS CUSTOMER;
CREATE TABLE IF NOT EXISTS CUSTOMER
(
    SQNO                         INTEGER NOT NULL,
    CUSTOMER                     VARCHAR(100),
    CUSTOMERADDRESS              VARCHAR(100),
    CUSTOMERADDRESS1             VARCHAR(100),
    PRIMARY KEY (SQNO)
);
DROP TABLE IF EXISTS CAMERA;
CREATE TABLE IF NOT EXISTS CAMERA
(
    CAMERA                      INT NOT NULL,
    ENABLE                      BOOLEAN,
    NAME                        VARCHAR(100),
    RESOLUTION                  VARCHAR(100),
    CROPX                       INT,
    CROPY                       INT,
    CROPWIDTH                   INT,
    CROPHEIGHT                  INT,
    PRIMARY KEY (CAMERA)
);
-- TABLE INSERTION;
INSERT INTO SETUP
VALUES ('2', NULL, NULL, NULL);
INSERT INTO SETTINGS
VALUES (1, 1, 1200, 'COM0;8;0;10;~~~;f', 'BABULENS', 'NAGERCOIL', '', 'FOOTER', '',
        TRUE, FALSE, 1, 'Standard', 'Standard', TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, FALSE, FALSE, FALSE, FALSE, FALSE, FALSE, FALSE, FALSE,
         9600, 'COM0', '', '', '', '', '', '', '', FALSE, 0.0, 0, FALSE, FALSE, FALSE, TRUE,
        '147085', '147085aA', '147085', '147085', '147085', '147085', '147085', '147085', '123');
INSERT INTO CAMERA
VALUES (1, 'TRUE', 'WEBCAM TEMP', '770 * 433', 0, 0, 770, 433);
INSERT INTO CAMERA
VALUES (2, 'FALSE', 'WEBCAM TEMP', '', 0, 0, 0, 0);
INSERT INTO CAMERA
VALUES (3, 'FALSE', 'WEBCAM TEMP', '', 0, 0, 0, 0);
INSERT INTO CAMERA
VALUES (4, 'FALSE', 'WEBCAM TEMP', '', 0, 0, 0, 0);
INSERT INTO CAMERA
VALUES (5, NULL, '', '', 0, 0, 0, 0);
COMMIT;