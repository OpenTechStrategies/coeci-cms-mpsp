CREATE TABLE "CMS"."LU_COUNTY" (
    "CODE" VARCHAR2(2 CHAR),
    "DESCRIPTION" VARCHAR2(255 CHAR)
);

ALTER TABLE "CMS"."LU_COUNTY" MODIFY ("CODE" NOT NULL ENABLE);
ALTER TABLE "CMS"."LU_COUNTY" ADD PRIMARY KEY ("CODE") ENABLE;

ALTER TABLE PROVIDER_PROFILE MODIFY COUNTY_NAME VARCHAR(200);
ALTER TABLE PROVIDER_PROFILE ADD PREV_MEDICARE_NUMBER VARCHAR(50);
ALTER TABLE PROVIDER_PROFILE ADD TITLE_18_BED_COUNT NUMBER(*,0);
ALTER TABLE PROVIDER_PROFILE ADD TITLE_19_BED_COUNT NUMBER(*,0);
ALTER TABLE PROVIDER_PROFILE ADD DUAL_CERT_BED_COUNT NUMBER(*,0);
ALTER TABLE PROVIDER_PROFILE ADD ICF_BED_COUNT NUMBER(*,0);
ALTER TABLE PROVIDER_PROFILE ADD PT_OT_IND CHAR(1 BYTE);

INSERT INTO LU_COUNTY(CODE, DESCRIPTION) VALUES ('01', 'Aitkin');
INSERT INTO LU_COUNTY(CODE, DESCRIPTION) VALUES ('02', 'Anoka');
INSERT INTO LU_COUNTY(CODE, DESCRIPTION) VALUES ('03', 'Becker');
INSERT INTO LU_COUNTY(CODE, DESCRIPTION) VALUES ('04', 'Beltrami');
INSERT INTO LU_COUNTY(CODE, DESCRIPTION) VALUES ('05', 'Benton');
INSERT INTO LU_COUNTY(CODE, DESCRIPTION) VALUES ('06', 'Big Stone');
INSERT INTO LU_COUNTY(CODE, DESCRIPTION) VALUES ('07', 'Blue Earth');
INSERT INTO LU_COUNTY(CODE, DESCRIPTION) VALUES ('08', 'Brown');
INSERT INTO LU_COUNTY(CODE, DESCRIPTION) VALUES ('09', 'Carlton');
INSERT INTO LU_COUNTY(CODE, DESCRIPTION) VALUES ('10', 'Carver');
INSERT INTO LU_COUNTY(CODE, DESCRIPTION) VALUES ('11', 'Cass');
INSERT INTO LU_COUNTY(CODE, DESCRIPTION) VALUES ('12', 'Chippewa');
INSERT INTO LU_COUNTY(CODE, DESCRIPTION) VALUES ('13', 'Chisago');
INSERT INTO LU_COUNTY(CODE, DESCRIPTION) VALUES ('14', 'Clay');
INSERT INTO LU_COUNTY(CODE, DESCRIPTION) VALUES ('15', 'Clearwater');
INSERT INTO LU_COUNTY(CODE, DESCRIPTION) VALUES ('16', 'Cook');
INSERT INTO LU_COUNTY(CODE, DESCRIPTION) VALUES ('17', 'Cottonwood');
INSERT INTO LU_COUNTY(CODE, DESCRIPTION) VALUES ('18', 'Crow Wing');
INSERT INTO LU_COUNTY(CODE, DESCRIPTION) VALUES ('19', 'Dakota');
INSERT INTO LU_COUNTY(CODE, DESCRIPTION) VALUES ('20', 'Dodge');
INSERT INTO LU_COUNTY(CODE, DESCRIPTION) VALUES ('21', 'Douglas');
INSERT INTO LU_COUNTY(CODE, DESCRIPTION) VALUES ('22', 'Faribault');
INSERT INTO LU_COUNTY(CODE, DESCRIPTION) VALUES ('23', 'Fillmore');
INSERT INTO LU_COUNTY(CODE, DESCRIPTION) VALUES ('24', 'Freeborn');
INSERT INTO LU_COUNTY(CODE, DESCRIPTION) VALUES ('25', 'Goodhue');
INSERT INTO LU_COUNTY(CODE, DESCRIPTION) VALUES ('26', 'Grant');
INSERT INTO LU_COUNTY(CODE, DESCRIPTION) VALUES ('27', 'Hennepin');
INSERT INTO LU_COUNTY(CODE, DESCRIPTION) VALUES ('28', 'Houston');
INSERT INTO LU_COUNTY(CODE, DESCRIPTION) VALUES ('29', 'Hubbard');
INSERT INTO LU_COUNTY(CODE, DESCRIPTION) VALUES ('30', 'Isanti');
INSERT INTO LU_COUNTY(CODE, DESCRIPTION) VALUES ('31', 'Itasca');
INSERT INTO LU_COUNTY(CODE, DESCRIPTION) VALUES ('32', 'Jackson');
INSERT INTO LU_COUNTY(CODE, DESCRIPTION) VALUES ('33', 'Kanabec');
INSERT INTO LU_COUNTY(CODE, DESCRIPTION) VALUES ('34', 'Kandiyohi');
INSERT INTO LU_COUNTY(CODE, DESCRIPTION) VALUES ('35', 'Kittson');
INSERT INTO LU_COUNTY(CODE, DESCRIPTION) VALUES ('36', 'Koochiching');
INSERT INTO LU_COUNTY(CODE, DESCRIPTION) VALUES ('37', 'Lac qui Parle');
INSERT INTO LU_COUNTY(CODE, DESCRIPTION) VALUES ('38', 'Lake');
INSERT INTO LU_COUNTY(CODE, DESCRIPTION) VALUES ('39', 'Lake of the Woods');
INSERT INTO LU_COUNTY(CODE, DESCRIPTION) VALUES ('40', 'Le Sueur');
INSERT INTO LU_COUNTY(CODE, DESCRIPTION) VALUES ('41', 'Lincoln');
INSERT INTO LU_COUNTY(CODE, DESCRIPTION) VALUES ('42', 'Lyon');
INSERT INTO LU_COUNTY(CODE, DESCRIPTION) VALUES ('43', 'Mahnomen');
INSERT INTO LU_COUNTY(CODE, DESCRIPTION) VALUES ('44', 'Marshall');
INSERT INTO LU_COUNTY(CODE, DESCRIPTION) VALUES ('45', 'Martin');
INSERT INTO LU_COUNTY(CODE, DESCRIPTION) VALUES ('46', 'McLeod');
INSERT INTO LU_COUNTY(CODE, DESCRIPTION) VALUES ('47', 'Meeker');
INSERT INTO LU_COUNTY(CODE, DESCRIPTION) VALUES ('48', 'Mille Lacs');
INSERT INTO LU_COUNTY(CODE, DESCRIPTION) VALUES ('49', 'Morrison');
INSERT INTO LU_COUNTY(CODE, DESCRIPTION) VALUES ('50', 'Mower');
INSERT INTO LU_COUNTY(CODE, DESCRIPTION) VALUES ('51', 'Murray');
INSERT INTO LU_COUNTY(CODE, DESCRIPTION) VALUES ('52', 'Nicollet');
INSERT INTO LU_COUNTY(CODE, DESCRIPTION) VALUES ('53', 'Nobles');
INSERT INTO LU_COUNTY(CODE, DESCRIPTION) VALUES ('54', 'Norman');
INSERT INTO LU_COUNTY(CODE, DESCRIPTION) VALUES ('55', 'Olmsted');
INSERT INTO LU_COUNTY(CODE, DESCRIPTION) VALUES ('56', 'Otter Tail');
INSERT INTO LU_COUNTY(CODE, DESCRIPTION) VALUES ('57', 'Pennington');
INSERT INTO LU_COUNTY(CODE, DESCRIPTION) VALUES ('58', 'Pine');
INSERT INTO LU_COUNTY(CODE, DESCRIPTION) VALUES ('59', 'Pipestone');
INSERT INTO LU_COUNTY(CODE, DESCRIPTION) VALUES ('60', 'Polk');
INSERT INTO LU_COUNTY(CODE, DESCRIPTION) VALUES ('61', 'Pope');
INSERT INTO LU_COUNTY(CODE, DESCRIPTION) VALUES ('62', 'Ramsey');
INSERT INTO LU_COUNTY(CODE, DESCRIPTION) VALUES ('63', 'Red Lake');
INSERT INTO LU_COUNTY(CODE, DESCRIPTION) VALUES ('64', 'Redwood');
INSERT INTO LU_COUNTY(CODE, DESCRIPTION) VALUES ('65', 'Renville');
INSERT INTO LU_COUNTY(CODE, DESCRIPTION) VALUES ('66', 'Rice');
INSERT INTO LU_COUNTY(CODE, DESCRIPTION) VALUES ('67', 'Rock');
INSERT INTO LU_COUNTY(CODE, DESCRIPTION) VALUES ('68', 'Roseau');
INSERT INTO LU_COUNTY(CODE, DESCRIPTION) VALUES ('69', 'Scott');
INSERT INTO LU_COUNTY(CODE, DESCRIPTION) VALUES ('70', 'Sherburne');
INSERT INTO LU_COUNTY(CODE, DESCRIPTION) VALUES ('71', 'Sibley');
INSERT INTO LU_COUNTY(CODE, DESCRIPTION) VALUES ('72', 'St. Louis');
INSERT INTO LU_COUNTY(CODE, DESCRIPTION) VALUES ('73', 'Stearns');
INSERT INTO LU_COUNTY(CODE, DESCRIPTION) VALUES ('74', 'Steele');
INSERT INTO LU_COUNTY(CODE, DESCRIPTION) VALUES ('75', 'Stevens');
INSERT INTO LU_COUNTY(CODE, DESCRIPTION) VALUES ('76', 'Swift');
INSERT INTO LU_COUNTY(CODE, DESCRIPTION) VALUES ('77', 'Todd');
INSERT INTO LU_COUNTY(CODE, DESCRIPTION) VALUES ('78', 'Traverse');
INSERT INTO LU_COUNTY(CODE, DESCRIPTION) VALUES ('79', 'Wabasha');
INSERT INTO LU_COUNTY(CODE, DESCRIPTION) VALUES ('80', 'Wadena');
INSERT INTO LU_COUNTY(CODE, DESCRIPTION) VALUES ('81', 'Waseca');
INSERT INTO LU_COUNTY(CODE, DESCRIPTION) VALUES ('82', 'Washington');
INSERT INTO LU_COUNTY(CODE, DESCRIPTION) VALUES ('83', 'Watonwan');
INSERT INTO LU_COUNTY(CODE, DESCRIPTION) VALUES ('84', 'Wilkin');
INSERT INTO LU_COUNTY(CODE, DESCRIPTION) VALUES ('85', 'Winona');
INSERT INTO LU_COUNTY(CODE, DESCRIPTION) VALUES ('86', 'Wright');
INSERT INTO LU_COUNTY(CODE, DESCRIPTION) VALUES ('87', 'Yellow');


INSERT INTO LU_PROVIDER_TYPE(CODE, APPLICANT_TYP, DESCRIPTION, PRIVATE_OFFICE_FLG, EMPLOYED_CONTRACTED_FLG, ADDITONAL_PRACTICE_FLG, PAYMENT_REQUIRED_FLG, AGREEMENT_FLG, ADDENDUM_FLG) VALUES ('64', 1, 'Individual Education Plan', 'N', 'N', 'N', 'N', 'N', 'N');
INSERT INTO LU_PROVIDER_TYPE(CODE, APPLICANT_TYP, DESCRIPTION, PRIVATE_OFFICE_FLG, EMPLOYED_CONTRACTED_FLG, ADDITONAL_PRACTICE_FLG, PAYMENT_REQUIRED_FLG, AGREEMENT_FLG, ADDENDUM_FLG) VALUES ('65', 1, 'Nursing Facility', 'N', 'N', 'N', 'N', 'N', 'N');

INSERT INTO LU_LICENSE_TYPE(CODE, DESCRIPTION) VALUES ('AO', 'License and Transmittal (CMS 1539 Form) from MN Department of Health');
INSERT INTO LU_LICENSE_TYPE(CODE, DESCRIPTION) VALUES ('AP', 'Approval by Kent Dufresne to enroll new facility');
INSERT INTO PROVIDER_SETTING(PROVIDER_SETTING_ID, PROVIDER_TYP_CD, RELATED_ENTITY_TYP, RELATED_ENTITY_CD, REL_TYP)
    VALUES (6501, '65', 'LicenseType', 'AO', 'LO');
INSERT INTO PROVIDER_SETTING(PROVIDER_SETTING_ID, PROVIDER_TYP_CD, RELATED_ENTITY_TYP, RELATED_ENTITY_CD, REL_TYP)
    VALUES (6502, '65', 'LicenseType', 'AP', 'LO');






INSERT INTO LU_PROVIDER_TYPE(CODE, APPLICANT_TYP, DESCRIPTION, PRIVATE_OFFICE_FLG, EMPLOYED_CONTRACTED_FLG, ADDITONAL_PRACTICE_FLG, PAYMENT_REQUIRED_FLG, AGREEMENT_FLG, ADDENDUM_FLG) VALUES ('66', 1, 'Hospice', 'N', 'N', 'N', 'N', 'N', 'N');

INSERT INTO LU_LICENSE_TYPE(CODE, DESCRIPTION) VALUES ('AQ', 'Hospice license from the MN Dept of Health');
INSERT INTO LU_LICENSE_TYPE(CODE, DESCRIPTION) VALUES ('AR', 'CMS Medicare Certification Letter');
INSERT INTO LU_LICENSE_TYPE(CODE, DESCRIPTION) VALUES ('AS', 'Ambulance Services - Basic Service');
INSERT INTO LU_LICENSE_TYPE(CODE, DESCRIPTION) VALUES ('AT', 'Ambulance Services - Advanced Life Support');
INSERT INTO LU_LICENSE_TYPE(CODE, DESCRIPTION) VALUES ('AU', 'Ambulance Services - Air Transport with FAA Air Worthiness Certificate');
INSERT INTO PROVIDER_SETTING(PROVIDER_SETTING_ID, PROVIDER_TYP_CD, RELATED_ENTITY_TYP, RELATED_ENTITY_CD, REL_TYP)
    VALUES (6601, '66', 'LicenseType', 'AQ', 'LO');
INSERT INTO PROVIDER_SETTING(PROVIDER_SETTING_ID, PROVIDER_TYP_CD, RELATED_ENTITY_TYP, RELATED_ENTITY_CD, REL_TYP)
    VALUES (6602, '66', 'LicenseType', 'AR', 'LO');


INSERT INTO LU_PROVIDER_TYPE(CODE, APPLICANT_TYP, DESCRIPTION, PRIVATE_OFFICE_FLG, EMPLOYED_CONTRACTED_FLG, ADDITONAL_PRACTICE_FLG, PAYMENT_REQUIRED_FLG, AGREEMENT_FLG, ADDENDUM_FLG) VALUES ('67', 1, 'Hospital', 'N', 'N', 'N', 'N', 'N', 'N');
INSERT INTO LU_LICENSE_TYPE(CODE, DESCRIPTION) VALUES ('AV', 'State License to operate as a Hospital');
INSERT INTO LU_LICENSE_TYPE(CODE, DESCRIPTION) VALUES ('AW', 'CMS PECOS Website Verification');
INSERT INTO LU_LICENSE_TYPE(CODE, DESCRIPTION) VALUES ('AX', 'CLIA Certificate if billing Lab Services');
INSERT INTO PROVIDER_SETTING(PROVIDER_SETTING_ID, PROVIDER_TYP_CD, RELATED_ENTITY_TYP, RELATED_ENTITY_CD, REL_TYP)
    VALUES (6701, '67', 'LicenseType', 'AV', 'LO');
INSERT INTO PROVIDER_SETTING(PROVIDER_SETTING_ID, PROVIDER_TYP_CD, RELATED_ENTITY_TYP, RELATED_ENTITY_CD, REL_TYP)
    VALUES (6702, '67', 'LicenseType', 'AR', 'LO');
INSERT INTO PROVIDER_SETTING(PROVIDER_SETTING_ID, PROVIDER_TYP_CD, RELATED_ENTITY_TYP, RELATED_ENTITY_CD, REL_TYP)
    VALUES (6703, '67', 'LicenseType', 'AW', 'LO');
INSERT INTO PROVIDER_SETTING(PROVIDER_SETTING_ID, PROVIDER_TYP_CD, RELATED_ENTITY_TYP, RELATED_ENTITY_CD, REL_TYP)
    VALUES (6704, '67', 'LicenseType', 'AX', 'LO');
