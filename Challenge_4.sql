-- CREATING DATABASE 
CREATE DATABASE sql_challenge_4;

USE sql_challenge_4;

--CREATING THE REQUIRED TABLES
CREATE TABLE regions (
  region_id INTEGER,
  region_name VARCHAR(9)
);

INSERT INTO regions
  (region_id, region_name)
VALUES
  ('1', 'Australia'),
  ('2', 'America'),
  ('3', 'Africa'),
  ('4', 'Asia'),
  ('5', 'Europe');


CREATE TABLE customer_nodes (
  customer_id INTEGER,
  region_id INTEGER,
  node_id INTEGER,
  start_date DATE,
  end_date DATE
);


INSERT INTO customer_nodes
  (customer_id, region_id, node_id, start_date, end_date)
VALUES
  ('217', '1', '2', '2020-04-10', '9999-12-31'),
  ('218', '5', '5', '2020-05-10', '9999-12-31'),
  ('219', '2', '3', '2020-04-14', '9999-12-31'),
  ('220', '2', '1', '2020-05-29', '9999-12-31'),
  ('221', '4', '5', '2020-04-25', '9999-12-31'),
  ('222', '1', '2', '2020-04-09', '9999-12-31'),
  ('223', '4', '1', '2020-05-04', '9999-12-31'),
  ('224', '2', '4', '2020-05-01', '9999-12-31'),
  ('225', '3', '4', '2020-05-28', '9999-12-31'),
  ('226', '2', '2', '2020-04-19', '9999-12-31'),
  ('227', '1', '4', '2020-03-30', '9999-12-31'),
  ('228', '4', '5', '2020-04-27', '9999-12-31'),
  ('229', '5', '1', '2020-04-08', '9999-12-31'),
  ('230', '3', '3', '2020-04-28', '9999-12-31'),
  ('231', '3', '1', '2020-04-14', '9999-12-31'),
  ('232', '4', '1', '2020-04-03', '9999-12-31'),
  ('233', '2', '3', '2020-04-09', '9999-12-31'),
  ('234', '2', '1', '2020-04-02', '9999-12-31'),
  ('235', '1', '1', '2020-04-28', '9999-12-31'),
  ('236', '4', '5', '2020-04-28', '9999-12-31'),
  ('237', '1', '4', '2020-03-14', '9999-12-31'),
  ('238', '4', '5', '2020-03-26', '9999-12-31'),
  ('239', '4', '5', '2020-04-05', '9999-12-31'),
  ('240', '2', '1', '2020-04-26', '9999-12-31'),
  ('241', '4', '1', '2020-04-07', '9999-12-31'),
  ('242', '3', '2', '2020-03-26', '9999-12-31'),
  ('243', '1', '1', '2020-02-24', '9999-12-31'),
  ('244', '1', '1', '2020-04-11', '9999-12-31'),
  ('245', '3', '3', '2020-04-22', '9999-12-31'),
  ('246', '1', '2', '2020-04-29', '9999-12-31'),
  ('247', '3', '2', '2020-03-24', '9999-12-31'),
  ('248', '4', '1', '2020-04-10', '9999-12-31'),
  ('249', '5', '3', '2020-04-28', '9999-12-31'),
  ('250', '3', '3', '2020-03-22', '9999-12-31'),
  ('251', '2', '1', '2020-04-08', '9999-12-31'),
  ('252', '4', '2', '2020-04-24', '9999-12-31'),
  ('253', '4', '1', '2020-06-11', '9999-12-31'),
  ('254', '1', '4', '2020-02-29', '9999-12-31'),
  ('255', '4', '2', '2020-05-10', '9999-12-31'),
  ('256', '3', '4', '2020-04-28', '9999-12-31'),
  ('257', '5', '3', '2020-06-02', '9999-12-31'),
  ('258', '1', '4', '2020-05-07', '9999-12-31'),
  ('259', '2', '5', '2020-04-18', '9999-12-31'),
  ('260', '4', '2', '2020-05-20', '9999-12-31'),
  ('261', '2', '2', '2020-05-19', '9999-12-31'),
  ('262', '3', '4', '2020-04-10', '9999-12-31'),
  ('263', '2', '5', '2020-04-05', '9999-12-31'),
  ('264', '4', '3', '2020-04-10', '9999-12-31'),
  ('265', '1', '4', '2020-03-29', '9999-12-31'),
  ('266', '3', '4', '2020-05-21', '9999-12-31'),
  ('267', '3', '5', '2020-04-16', '9999-12-31'),
  ('268', '4', '4', '2020-03-21', '9999-12-31'),
  ('269', '5', '3', '2020-04-12', '9999-12-31'),
  ('270', '4', '1', '2020-04-10', '9999-12-31'),
  ('271', '3', '3', '2020-03-25', '9999-12-31'),
  ('272', '2', '1', '2020-02-17', '9999-12-31'),
  ('273', '2', '1', '2020-04-12', '9999-12-31'),
  ('274', '1', '1', '2020-04-23', '9999-12-31'),
  ('275', '2', '2', '2020-03-29', '9999-12-31'),
  ('276', '1', '2', '2020-04-07', '9999-12-31'),
  ('277', '1', '2', '2020-05-14', '9999-12-31'),
  ('278', '1', '1', '2020-04-21', '9999-12-31'),
  ('279', '4', '2', '2020-04-25', '9999-12-31'),
  ('280', '2', '1', '2020-03-27', '9999-12-31'),
  ('281', '2', '1', '2020-04-10', '9999-12-31'),
  ('282', '1', '2', '2020-05-10', '9999-12-31'),
  ('283', '1', '3', '2020-04-29', '9999-12-31'),
  ('284', '1', '1', '2020-06-05', '9999-12-31'),
  ('285', '3', '1', '2020-05-22', '9999-12-31'),
  ('286', '4', '3', '2020-04-20', '9999-12-31'),
  ('287', '1', '1', '2020-05-05', '9999-12-31'),
  ('288', '4', '4', '2020-03-30', '9999-12-31'),
  ('289', '3', '4', '2020-05-01', '9999-12-31'),
  ('290', '4', '1', '2020-03-06', '9999-12-31'),
  ('291', '5', '4', '2020-05-07', '9999-12-31'),
  ('292', '1', '4', '2020-05-08', '9999-12-31'),
  ('293', '5', '4', '2020-04-23', '9999-12-31'),
  ('294', '2', '1', '2020-04-29', '9999-12-31'),
  ('295', '2', '4', '2020-03-23', '9999-12-31'),
  ('296', '5', '3', '2020-03-19', '9999-12-31'),
  ('297', '1', '5', '2020-04-05', '9999-12-31'),
  ('298', '4', '5', '2020-05-15', '9999-12-31'),
  ('299', '3', '2', '2020-05-10', '9999-12-31'),
  ('300', '2', '2', '2020-06-14', '9999-12-31'),
  ('301', '3', '2', '2020-04-05', '9999-12-31'),
  ('302', '1', '4', '2020-06-06', '9999-12-31'),
  ('303', '1', '5', '2020-04-08', '9999-12-31'),
  ('304', '5', '1', '2020-05-14', '9999-12-31'),
  ('305', '1', '1', '2020-05-06', '9999-12-31'),
  ('306', '4', '4', '2020-04-24', '9999-12-31'),
  ('307', '5', '5', '2020-04-16', '9999-12-31'),
  ('308', '3', '4', '2020-03-30', '9999-12-31'),
  ('309', '5', '2', '2020-03-25', '9999-12-31'),
  ('310', '5', '4', '2020-05-05', '9999-12-31'),
  ('311', '3', '5', '2020-03-24', '9999-12-31'),
  ('312', '5', '2', '2020-04-24', '9999-12-31'),
  ('313', '3', '2', '2020-05-11', '9999-12-31'),
  ('314', '1', '3', '2020-05-12', '9999-12-31'),
  ('315', '3', '2', '2020-03-21', '9999-12-31'),
  ('316', '4', '3', '2020-05-11', '9999-12-31'),
  ('317', '2', '3', '2020-04-25', '9999-12-31'),
  ('318', '4', '3', '2020-05-07', '9999-12-31'),
  ('319', '1', '4', '2020-04-07', '9999-12-31'),
  ('320', '3', '5', '2020-05-10', '9999-12-31'),
  ('321', '3', '4', '2020-05-28', '9999-12-31'),
  ('322', '5', '4', '2020-03-31', '9999-12-31'),
  ('323', '1', '4', '2020-04-12', '9999-12-31'),
  ('324', '1', '5', '2020-04-14', '9999-12-31'),
  ('325', '2', '1', '2020-05-26', '9999-12-31'),
  ('326', '4', '3', '2020-04-21', '9999-12-31'),
  ('327', '5', '5', '2020-03-21', '9999-12-31'),
  ('328', '3', '3', '2020-03-30', '9999-12-31'),
  ('329', '5', '2', '2020-05-24', '9999-12-31'),
  ('330', '5', '2', '2020-04-22', '9999-12-31'),
  ('331', '5', '2', '2020-04-12', '9999-12-31'),
  ('332', '5', '2', '2020-05-02', '9999-12-31'),
  ('333', '5', '1', '2020-04-06', '9999-12-31'),
  ('334', '2', '5', '2020-05-25', '9999-12-31'),
  ('335', '2', '5', '2020-03-19', '9999-12-31'),
  ('336', '2', '2', '2020-04-03', '9999-12-31'),
  ('337', '3', '1', '2020-05-18', '9999-12-31'),
  ('338', '3', '4', '2020-04-29', '9999-12-31'),
  ('339', '2', '1', '2020-03-22', '9999-12-31'),
  ('340', '4', '3', '2020-03-15', '9999-12-31'),
  ('341', '5', '2', '2020-05-17', '9999-12-31'),
  ('342', '1', '5', '2020-04-21', '9999-12-31'),
  ('343', '2', '5', '2020-04-12', '9999-12-31'),
  ('344', '1', '4', '2020-04-14', '9999-12-31'),
  ('345', '4', '5', '2020-04-08', '9999-12-31'),
  ('346', '4', '1', '2020-05-11', '9999-12-31'),
  ('347', '1', '3', '2020-04-21', '9999-12-31'),
  ('348', '3', '2', '2020-04-01', '9999-12-31'),
  ('349', '3', '1', '2020-05-03', '9999-12-31'),
  ('350', '2', '5', '2020-04-15', '9999-12-31'),
  ('351', '3', '4', '2020-03-26', '9999-12-31'),
  ('352', '5', '1', '2020-04-22', '9999-12-31'),
  ('353', '3', '5', '2020-04-21', '9999-12-31'),
  ('354', '5', '4', '2020-05-19', '9999-12-31'),
  ('355', '3', '2', '2020-05-23', '9999-12-31'),
  ('356', '5', '3', '2020-04-23', '9999-12-31'),
  ('357', '4', '2', '2020-05-11', '9999-12-31'),
  ('358', '3', '1', '2020-04-18', '9999-12-31'),
  ('359', '2', '3', '2020-04-04', '9999-12-31'),
  ('360', '5', '3', '2020-02-29', '9999-12-31'),
  ('361', '5', '5', '2020-05-18', '9999-12-31'),
  ('362', '5', '1', '2020-04-17', '9999-12-31'),
  ('363', '5', '1', '2020-04-25', '9999-12-31'),
  ('364', '4', '3', '2020-05-02', '9999-12-31'),
  ('365', '2', '5', '2020-05-24', '9999-12-31'),
  ('366', '2', '3', '2020-05-17', '9999-12-31'),
  ('367', '3', '4', '2020-04-25', '9999-12-31'),
  ('368', '1', '5', '2020-05-05', '9999-12-31'),
  ('369', '4', '5', '2020-04-03', '9999-12-31'),
  ('370', '5', '2', '2020-05-22', '9999-12-31'),
  ('371', '5', '4', '2020-05-31', '9999-12-31'),
  ('372', '2', '4', '2020-04-12', '9999-12-31'),
  ('373', '5', '2', '2020-05-10', '9999-12-31'),
  ('374', '2', '4', '2020-03-12', '9999-12-31'),
  ('375', '1', '1', '2020-04-02', '9999-12-31'),
  ('376', '5', '1', '2020-04-16', '9999-12-31'),
  ('377', '4', '5', '2020-04-26', '9999-12-31'),
  ('378', '2', '2', '2020-04-03', '9999-12-31'),
  ('379', '5', '3', '2020-04-23', '9999-12-31'),
  ('380', '1', '4', '2020-04-26', '9999-12-31'),
  ('381', '1', '3', '2020-04-15', '9999-12-31'),
  ('382', '4', '4', '2020-03-09', '9999-12-31'),
  ('383', '2', '5', '2020-05-16', '9999-12-31'),
  ('384', '3', '4', '2020-05-14', '9999-12-31'),
  ('385', '2', '5', '2020-05-13', '9999-12-31'),
  ('386', '1', '3', '2020-05-30', '9999-12-31'),
  ('387', '1', '5', '2020-03-22', '9999-12-31'),
  ('388', '3', '3', '2020-04-19', '9999-12-31'),
  ('389', '4', '2', '2020-04-01', '9999-12-31'),
  ('390', '2', '1', '2020-03-22', '9999-12-31'),
  ('391', '3', '2', '2020-04-20', '9999-12-31'),
  ('392', '2', '3', '2020-03-24', '9999-12-31'),
  ('393', '2', '4', '2020-04-04', '9999-12-31'),
  ('394', '4', '5', '2020-05-13', '9999-12-31'),
  ('395', '1', '2', '2020-04-15', '9999-12-31'),
  ('396', '3', '1', '2020-05-02', '9999-12-31'),
  ('397', '4', '3', '2020-04-26', '9999-12-31'),
  ('398', '3', '3', '2020-04-11', '9999-12-31'),
  ('399', '3', '1', '2020-04-03', '9999-12-31'),
  ('400', '4', '1', '2020-03-29', '9999-12-31'),
  ('401', '1', '1', '2020-02-19', '9999-12-31'),
  ('402', '2', '5', '2020-04-20', '9999-12-31'),
  ('403', '3', '5', '2020-04-30', '9999-12-31'),
  ('404', '5', '4', '2020-02-05', '9999-12-31'),
  ('405', '4', '3', '2020-03-31', '9999-12-31'),
  ('406', '5', '2', '2020-04-18', '9999-12-31'),
  ('407', '3', '4', '2020-04-01', '9999-12-31'),
  ('408', '5', '4', '2020-04-21', '9999-12-31'),
  ('409', '5', '3', '2020-05-01', '9999-12-31'),
  ('410', '2', '2', '2020-04-26', '9999-12-31'),
  ('411', '2', '2', '2020-06-02', '9999-12-31'),
  ('412', '4', '5', '2020-03-21', '9999-12-31'),
  ('413', '3', '5', '2020-04-14', '9999-12-31'),
  ('414', '1', '3', '2020-03-18', '9999-12-31'),
  ('415', '5', '2', '2020-04-02', '9999-12-31'),
  ('416', '1', '5', '2020-04-27', '9999-12-31'),
  ('417', '1', '2', '2020-02-29', '9999-12-31'),
  ('418', '1', '1', '2020-03-23', '9999-12-31'),
  ('419', '1', '4', '2020-03-15', '9999-12-31'),
  ('420', '2', '1', '2020-05-01', '9999-12-31'),
  ('421', '3', '3', '2020-04-15', '9999-12-31'),
  ('422', '1', '4', '2020-05-04', '9999-12-31'),
  ('423', '4', '4', '2020-04-10', '9999-12-31'),
  ('424', '1', '5', '2020-04-18', '9999-12-31'),
  ('425', '3', '3', '2020-04-11', '9999-12-31'),
  ('426', '1', '3', '2020-05-12', '9999-12-31'),
  ('427', '4', '3', '2020-05-26', '9999-12-31'),
  ('428', '2', '1', '2020-05-09', '9999-12-31'),
  ('429', '5', '3', '2020-04-18', '9999-12-31'),
  ('430', '2', '5', '2020-04-01', '9999-12-31'),
  ('431', '3', '5', '2020-04-09', '9999-12-31'),
  ('432', '1', '3', '2020-03-15', '9999-12-31'),
  ('433', '4', '1', '2020-04-03', '9999-12-31'),
  ('434', '5', '4', '2020-04-04', '9999-12-31'),
  ('435', '3', '2', '2020-04-01', '9999-12-31'),
  ('436', '3', '2', '2020-04-07', '9999-12-31'),
  ('437', '1', '3', '2020-04-06', '9999-12-31'),
  ('438', '4', '2', '2020-04-25', '9999-12-31'),
  ('439', '3', '2', '2020-04-27', '9999-12-31'),
  ('440', '5', '4', '2020-03-18', '9999-12-31'),
  ('441', '4', '3', '2020-04-13', '9999-12-31'),
  ('442', '1', '5', '2020-05-09', '9999-12-31'),
  ('443', '2', '4', '2020-04-15', '9999-12-31'),
  ('444', '3', '4', '2020-03-19', '9999-12-31'),
  ('445', '2', '3', '2020-04-30', '9999-12-31'),
  ('446', '3', '3', '2020-05-14', '9999-12-31'),
  ('447', '5', '1', '2020-04-02', '9999-12-31'),
  ('448', '3', '5', '2020-05-20', '9999-12-31'),
  ('449', '3', '5', '2020-04-11', '9999-12-31'),
  ('450', '3', '5', '2020-05-05', '9999-12-31'),
  ('451', '1', '3', '2020-04-26', '9999-12-31'),
  ('452', '2', '1', '2020-03-19', '9999-12-31'),
  ('453', '1', '5', '2020-04-12', '9999-12-31'),
  ('454', '2', '3', '2020-05-22', '9999-12-31'),
  ('455', '1', '2', '2020-03-17', '9999-12-31'),
  ('456', '2', '3', '2020-04-03', '9999-12-31'),
  ('457', '1', '3', '2020-05-02', '9999-12-31'),
  ('458', '4', '1', '2020-03-15', '9999-12-31'),
  ('459', '3', '2', '2020-04-19', '9999-12-31'),
  ('460', '3', '4', '2020-03-25', '9999-12-31'),
  ('461', '1', '2', '2020-04-02', '9999-12-31'),
  ('462', '1', '2', '2020-04-22', '9999-12-31'),
  ('463', '4', '2', '2020-05-14', '9999-12-31'),
  ('464', '1', '3', '2020-04-21', '9999-12-31'),
  ('465', '4', '2', '2020-03-27', '9999-12-31'),
  ('466', '1', '4', '2020-03-29', '9999-12-31'),
  ('467', '3', '2', '2020-03-28', '9999-12-31'),
  ('468', '4', '1', '2020-04-09', '9999-12-31'),
  ('469', '2', '4', '2020-04-24', '9999-12-31'),
  ('470', '3', '5', '2020-04-12', '9999-12-31'),
  ('471', '2', '1', '2020-04-17', '9999-12-31'),
  ('472', '4', '4', '2020-05-02', '9999-12-31'),
  ('473', '5', '4', '2020-04-26', '9999-12-31'),
  ('474', '3', '3', '2020-04-17', '9999-12-31'),
  ('475', '2', '5', '2020-03-22', '9999-12-31'),
  ('476', '3', '2', '2020-04-23', '9999-12-31'),
  ('477', '3', '2', '2020-04-19', '9999-12-31'),
  ('478', '3', '5', '2020-03-31', '9999-12-31'),
  ('479', '3', '5', '2020-04-08', '9999-12-31'),
  ('480', '2', '2', '2020-04-24', '9999-12-31'),
  ('481', '1', '4', '2020-04-23', '9999-12-31'),
  ('482', '3', '1', '2020-04-26', '9999-12-31'),
  ('483', '5', '2', '2020-04-10', '9999-12-31'),
  ('484', '3', '1', '2020-05-07', '9999-12-31'),
  ('485', '2', '2', '2020-04-17', '9999-12-31'),
  ('486', '3', '1', '2020-03-31', '9999-12-31'),
  ('487', '3', '5', '2020-04-01', '9999-12-31'),
  ('488', '5', '3', '2020-04-13', '9999-12-31'),
  ('489', '4', '5', '2020-03-25', '9999-12-31'),
  ('490', '5', '3', '2020-03-28', '9999-12-31'),
  ('491', '3', '5', '2020-05-13', '9999-12-31'),
  ('492', '1', '4', '2020-05-06', '9999-12-31'),
  ('493', '4', '3', '2020-03-19', '9999-12-31'),
  ('494', '5', '5', '2020-04-14', '9999-12-31'),
  ('495', '5', '4', '2020-05-07', '9999-12-31'),
  ('496', '3', '4', '2020-02-25', '9999-12-31'),
  ('497', '5', '4', '2020-05-27', '9999-12-31'),
  ('498', '1', '2', '2020-04-05', '9999-12-31'),
  ('499', '5', '1', '2020-02-03', '9999-12-31'),
  ('500', '2', '2', '2020-04-15', '9999-12-31');

CREATE TABLE customer_transactions (
  customer_id INTEGER,
  txn_date DATE,
  txn_type VARCHAR(10),
  txn_amount INTEGER
);

INSERT INTO customer_transactions
  (customer_id, txn_date, txn_type, txn_amount)
VALUES
  ('254', '2020-03-31', 'deposit', '734'),
  ('254', '2020-02-02', 'purchase', '482'),
  ('254', '2020-02-23', 'purchase', '931'),
  ('254', '2020-03-27', 'deposit', '961'),
  ('254', '2020-03-14', 'withdrawal', '782'),
  ('254', '2020-02-08', 'withdrawal', '971'),
  ('254', '2020-03-28', 'deposit', '778'),
  ('254', '2020-01-27', 'purchase', '820'),
  ('254', '2020-03-18', 'deposit', '590'),
  ('254', '2020-03-29', 'deposit', '17'),
  ('254', '2020-02-10', 'withdrawal', '314'),
  ('254', '2020-02-27', 'purchase', '221'),
  ('254', '2020-03-30', 'purchase', '5'),
  ('189', '2020-01-12', 'deposit', '373'),
  ('189', '2020-03-17', 'purchase', '726'),
  ('189', '2020-03-18', 'withdrawal', '462'),
  ('189', '2020-01-30', 'purchase', '956'),
  ('189', '2020-02-03', 'withdrawal', '870'),
  ('189', '2020-03-22', 'purchase', '718'),
  ('189', '2020-02-06', 'purchase', '393'),
  ('189', '2020-01-22', 'deposit', '302'),
  ('189', '2020-01-27', 'withdrawal', '861');


--------------------------------------------------------------------------------------------------
-- CHECKING THE TABLES

SELECT * FROM regions;
SELECT * FROM customer_nodes;
SELECT * FROM customer_transactions;

--------------------------------------------------------------------------------------------------
--A. CUSTOMER NODES EXPLORATION

--1. How many unique nodes are there on the Data Bank system?

SELECT COUNT(DISTINCT(node_id)) Unique_nodes
FROM customer_nodes;


--2. What is the number of nodes per region?

SELECT region_id, COUNT(node_id) Nodes
FROM customer_nodes
GROUP BY region_id;


--3. How many customers are allocated to each region?

SELECT region_id, COUNT(DISTINCT(customer_id)) Customers
FROM customer_nodes
GROUP BY region_id;


--4. How many days on average are customers reallocated to a different node?

SELECT  CAST(AVG(DATEDIFF(DAY, start_date, end_date)) AS DECIMAL(10,2)) avg_reallocation_days
FROM customer_nodes
WHERE end_date <> '9999-12-31';


--5. What is the median, 80th and 95th percentile for this same reallocation days metric for each region?

WITH TEMP1_CTE AS
	(SELECT 
		region_id, 
		DATEDIFF(DAY, start_date, end_date) reallocate_days
	FROM customer_nodes
	WHERE end_date <> '9999-12-31'),

TEMP2_CTE AS
	(SELECT *,
		PERCENT_RANK() OVER (PARTITION BY region_id ORDER BY reallocate_days) pr
	FROM TEMP1_CTE)

SELECT 
	region_id, 
	AVG(reallocate_days) percentile_value
FROM TEMP2_CTE
WHERE pr > 0.5
GROUP BY region_id;

--Replacing pr value to 0.5, 0.8 and 0.95 will give the results

-----------------------------------------------------------------------------------------------------
--B. CUSTOMER TRANSACTIONS	

--1. What is the unique count and total amount for each transaction type?

SELECT 
	txn_type,
	COUNT(txn_type) Count,
	SUM(txn_amount) Total_amount
FROM customer_transactions
GROUP BY txn_type;


--2. What is the average total historical deposit counts and amounts for all customers?

SELECT 
	AVG(deposit_count) avg_deposit_count,
	AVG(sum_amount) avg_amount
FROM
(	SELECT 
		customer_id,
		(COUNT(txn_type)) deposit_count,
		SUM(txn_amount) sum_amount
	FROM customer_transactions
	WHERE txn_type = 'deposit'
	GROUP BY customer_id ) TEMP;


--3. For each month - how many Data Bank customers make more than 1 deposit and either 1 purchase or 1 withdrawal in a single month?

SELECT month, COUNT(customer_id) count_of_customers
FROM
	(SELECT 
		MONTH(txn_date) month,
		customer_id,
		SUM(CASE WHEN txn_type = 'deposit' THEN 1 ELSE 0 END) sum_deposit,
		SUM(CASE WHEN txn_type = 'withdrawal' THEN 1 ELSE 0 END) sum_withdrawal,
		SUM(CASE WHEN txn_type = 'purchase' THEN 1 ELSE 0 END) sum_purchase
	FROM customer_transactions
	GROUP BY MONTH(txn_date), customer_id) TEMP
WHERE sum_deposit > 1 AND (sum_purchase = 1 OR sum_withdrawal = 1)
GROUP BY month
ORDER BY month;


--4. What is the closing balance for each customer at the end of the month?

SELECT 
	customer_id, 
	month, 
	SUM(net_amt) OVER(PARTITION BY customer_id ORDER BY month ROWS BETWEEN UNBOUNDED preceding AND CURRENT ROW) closing_balance
FROM
	(SELECT 
			MONTH(txn_date) month,
			customer_id,
			SUM(CASE
                  WHEN txn_type = 'deposit' THEN txn_amount
                  ELSE -txn_amount
                END) net_amt
		FROM customer_transactions
		GROUP BY MONTH(txn_date), customer_id ) TEMP
ORDER BY customer_id, month;


--5. What is the percentage of customers who increase their closing balance by more than 5%?

WITH CTE_1 AS 
	(SELECT 
		customer_id, 
		month, 
		SUM(net_amt) OVER(PARTITION BY customer_id ORDER BY month ROWS BETWEEN UNBOUNDED preceding AND CURRENT ROW) closing_balance
	FROM
		(SELECT 
				MONTH(txn_date) month,
				customer_id,
				SUM(CASE
					  WHEN txn_type = 'deposit' THEN txn_amount
					  ELSE -txn_amount
					END) net_amt
			FROM customer_transactions
			GROUP BY MONTH(txn_date), customer_id) TEMP1),

CTE_2 AS
	( SELECT customer_id,
		   month,
		   ((LAST_VALUE(closing_balance) OVER (PARTITION BY customer_id ORDER BY month) - FIRST_VALUE(closing_balance) OVER (PARTITION BY customer_id ORDER BY month) ) / FIRST_VALUE(closing_balance) OVER (PARTITION BY customer_id ORDER BY month)) Net
	FROM CTE_1 ),

CTE_3 AS 
	(SELECT customer_id,
			MAX(month) mm
	FROM CTE_2
	WHERE Net >= 0.05
	GROUP BY customer_id)

SELECT CONCAT((COUNT(customer_id)* 100)/(SELECT COUNT(DISTINCT customer_id) FROM customer_nodes), ' %') Perc_customers
FROM CTE_3;


-----------------------------------------------------------------------------------------------------------------------------------------------
-- DATA ALLOCATION CHALLENGE
/* 
To test out a few different hypotheses - the Data Bank team wants to run an experiment where different groups of customers would be allocated 
data using 3 different options:

Option 1: data is allocated based off the amount of money at the end of the previous month
Option 2: data is allocated on the average amount of money kept in the account in the previous 30 days
Option 3: data is updated real-time
For this multi-part challenge question - you have been requested to generate the following data elements to help the Data Bank team 
estimate how much data will need to be provisioned for each option:

- running customer balance column that includes the impact each transaction
- customer balance at the end of each month
- minimum, average and maximum values of the running balance for each customer
Using all of the data available - how much data would have been required for each option on a monthly basis? 
*/


-- Data is allocated based off the amount of money at the end of the previous month
-- Running customer balance column that includes the impact each transaction

WITH CTE_1 AS
( SELECT 
		customer_id, 
		month, 
		SUM(net_amt) OVER(PARTITION BY customer_id ORDER BY month ROWS BETWEEN UNBOUNDED preceding AND CURRENT ROW) closing_balance,
		MIN(net_amt) OVER(PARTITION BY customer_id ORDER BY month ROWS BETWEEN UNBOUNDED preceding AND CURRENT ROW) min_net_balance,
		MAX(net_amt) OVER(PARTITION BY customer_id ORDER BY month ROWS BETWEEN UNBOUNDED preceding AND CURRENT ROW) max_net_balance,
		AVG(net_amt) OVER(PARTITION BY customer_id ORDER BY month ROWS BETWEEN UNBOUNDED preceding AND CURRENT ROW) avg_net_balance
	FROM
		(SELECT 
				MONTH(txn_date) month,
				customer_id,
				SUM(CASE
					  WHEN txn_type = 'deposit' THEN txn_amount
					  ELSE -txn_amount
					END) net_amt
			FROM customer_transactions
			GROUP BY MONTH(txn_date), customer_id ) TEMP
)
SELECT *
FROM CTE_1;