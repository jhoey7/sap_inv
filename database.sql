/*
SQLyog Community v12.4.0 (64 bit)
MySQL - 10.1.19-MariaDB : Database - sap_inv_db
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`sap_inv_db` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `sap_inv_db`;

/*Table structure for table `reff_jns_barang` */

DROP TABLE IF EXISTS `reff_jns_barang`;

CREATE TABLE `reff_jns_barang` (
  `KD_JNS` char(2) NOT NULL,
  `URAIAN` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`KD_JNS`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `reff_jns_barang` */

insert  into `reff_jns_barang`(`KD_JNS`,`URAIAN`) values 
('1','BAHAN BAKU'),
('10','SETENGAH JADI'),
('11','BARANG UNTUK KEPERLUAN RND'),
('12','BAHAN BAKAR'),
('13','SISA PENGEMAS'),
('14','LIMBAH'),
('2','BAHAN PENOLONG'),
('3','MESIN'),
('3A','SPARE PART'),
('3B','MOULD'),
('3C','PERALATAN PABRIK'),
('3D','PERALATAN KONSTRUKSI'),
('4','PERALATAN KANTOR'),
('5','BARANG CONTOH'),
('6','HASIL PRODUKSI'),
('7','SISA PRODUKSI'),
('8','PENGEMAS'),
('9','BARANG KONSUMSI');

/*Table structure for table `reff_negara` */

DROP TABLE IF EXISTS `reff_negara`;

CREATE TABLE `reff_negara` (
  `KD_NEGARA` char(2) NOT NULL,
  `URAIAN_NEGARA` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`KD_NEGARA`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `reff_negara` */

insert  into `reff_negara`(`KD_NEGARA`,`URAIAN_NEGARA`) values 
('AD','Andorra'),
('AE','United Arab Emirates'),
('AF','Afghanistan'),
('AG','Antigua And Barbuda'),
('AI','Anguilla'),
('AL','Albania'),
('AM','Armenia'),
('AN','Netherlands Antilles'),
('AO','Angola'),
('AQ','Antarctica'),
('AR','Argentina'),
('AS','American Samoa'),
('AT','Austria'),
('AU','Australia'),
('AW','Aruba'),
('AZ','Azerbaijan'),
('BA','Bosnia And Herzegovina'),
('BB','Barbados'),
('BD','Bangladesh'),
('BE','Belgium'),
('BF','Burkina Faso'),
('BG','Bulgaria'),
('BH','Bahrain'),
('BI','Burundi'),
('BJ','Benin'),
('BM','Bermuda'),
('BN','Brunei Darussalam'),
('BO','Bolivia'),
('BR','Brazil'),
('BS','Bahamas'),
('BT','Bhutan'),
('BV','Bouvet Island'),
('BW','Botswana'),
('BY','Belarus'),
('BZ','Belize'),
('CA','Canada'),
('CC','Cocos (keeling) Islands'),
('CD','Congo, The Democratic Republic Of The'),
('CF','Central African Republic '),
('CG','Congo'),
('CH','Switzerland'),
('CI','Cote D\'ivoire'),
('CK','Cook Islands'),
('CL','Chile'),
('CM','Cameroon'),
('CN','China'),
('CO','Colombia'),
('CR','Costa Rica'),
('CU','Cuba '),
('CV','Cape Verde'),
('CX','Christmas Island'),
('CY','Cyprus'),
('CZ','Czech Republic'),
('DE','Germany'),
('DJ','Djibouti'),
('DK','Denmark'),
('DM','Dominica'),
('DO','Dominican Republic'),
('DZ','Algeria'),
('EC','Ecuador'),
('EE','Estonia'),
('EG','Egypt'),
('EH','Western Sahara'),
('ER','Eritrea'),
('ES','Spain'),
('ET','Ethiopia'),
('FI','Finland'),
('FJ','Fiji'),
('FK','Falkland Islands (malvinas)'),
('FM','Micronesia, Federated States Of'),
('FO','Faroe Islands'),
('FR','France'),
('GA','Gabon'),
('GB','United Kingdom'),
('GD','Grenada'),
('GE','Georgia'),
('GF','French Guiana'),
('GH','Ghana'),
('GI','Gibraltar'),
('GL','Greenland'),
('GM','Gambia'),
('GN','Guinea'),
('GP','Guadeloupe'),
('GQ','Equatorial Guinea'),
('GR','Greece'),
('GS','South Georgia And The South Sandwich Isl'),
('GT','Guatemala'),
('GU','Guam'),
('GW','Guinea-bissau'),
('GY','Guyana'),
('HC','HO CHI MINH,'),
('HK','Hong Kong'),
('HM','Heard Island And Mcdonald Islands'),
('HN','Honduras'),
('HR','Croatia'),
('HT','Haiti '),
('HU','Hungary'),
('ID','Indonesia'),
('IE','Ireland'),
('IL','Israel'),
('IN','India '),
('IO','British Indian Ocean Territory'),
('IQ','Iraq'),
('IR','Iran, Islamic Republic Of'),
('IS','Iceland'),
('IT','Italy'),
('JM','Jamaica'),
('JO','Jordan'),
('JP','Japan'),
('KE','Kenya'),
('KG','Kyrgyzstan'),
('KH','Cambodia'),
('KI','Kiribati'),
('KM','Comoros'),
('KN','Saint Kitts And Nevis '),
('KP','Korea, Democratic People\'s Republic Of'),
('KR','Korea, Republic Of'),
('KW','Kuwait'),
('KY','Cayman Islands'),
('KZ','Kazakstan'),
('LA','Lao People\'s Democratic Republic'),
('LB','Lebanon'),
('LC','Saint Lucia '),
('LI','Liechtenstein'),
('LK','Sri Lanka'),
('LR','Liberia'),
('LS','Lesotho'),
('LT','Lithuania'),
('LU','Luxembourg'),
('LV','Latvia'),
('LY','Libyan Arab Jamahiriya'),
('MA','Morocco'),
('MC','Monaco'),
('MD','Moldova, Republic Of'),
('MG','Madagascar'),
('MH','Marshall Islands'),
('MK','Macedonia, The Former Yugoslav Republic'),
('ML','Mali'),
('MM','Myanmar'),
('MN','Mongolia'),
('MO','Macau'),
('MP','Northern Mariana Islands'),
('MQ','Martinique'),
('MR','Mauritania'),
('MS','Montserrat'),
('MT','Malta'),
('MU','Mauritius'),
('MV','Maldives'),
('MW','Malawi'),
('MX','Mexico'),
('MY','Malaysia'),
('MZ','Mozambique'),
('NA','Namibia'),
('NC','NEW CALEDONIA'),
('NE','Niger'),
('NF','Norfolk Island'),
('NG','Nigeria'),
('NI','Nicaragua'),
('NL','Netherlands'),
('NO','Norway'),
('NP','Nepal'),
('NR','Nauru'),
('NU','Niue'),
('NZ','New Zealand'),
('OM','Oman'),
('OP','Osaka, Japan'),
('PA','Panama'),
('PE','Peru'),
('PF','French Polynesia'),
('PG','Papua New Guinea'),
('PH','Philippines'),
('PJ','Tokyo  Japan'),
('PK','Pakistan'),
('PL','Poland'),
('PM','Saint Pierre And Miquelon'),
('PN','Pitcairn'),
('PR','Puerto Rico'),
('PS','Palestinian Territory, Occupied'),
('PT','Portugal'),
('PU','Pasir Gudang, Malaysia'),
('PW','Palau'),
('PY','Paraguay'),
('QA','Qatar'),
('RE','Reunion'),
('RO','Romania'),
('RU','Russian Federation'),
('RW','Rwanda'),
('SA','Saudi Arabia'),
('SB','Solomon Islands'),
('SC','Seychelles'),
('SD','Sudan'),
('SE','Sweden'),
('SG','Singapore'),
('SH','Saint Helena'),
('SI','Slovenia'),
('SJ','Svalbard And Jan Mayen'),
('SK','Slovakia'),
('SL','Sierra Leone'),
('SM','San Marino'),
('SN','Senegal'),
('SO','Somalia'),
('SR','Suriname'),
('ST','Sao Tome And Principe'),
('SV','El Salvador'),
('SY','Syrian Arab Republic'),
('SZ','Swaziland'),
('TC','Turks And Caicos Islands'),
('TD','Chad'),
('TF','French Southern Territories'),
('TG','Togo'),
('TH','Thailand'),
('TI','TAIWAN'),
('TJ','Tajikistan'),
('TK','Tokelau'),
('TM','Turkmenistan'),
('TN','Tunisia'),
('TO','Tonga'),
('TP','East Timor'),
('TR','Turkey'),
('TT','Trinidad And Tobago'),
('TV','Tuvalu'),
('TW','Taiwan, Province Of China'),
('TY','TOKYO, JAPAN VIA YOKOHAMA'),
('TZ','Tanzania, United Republic Of'),
('UA','Ukraine'),
('UG','Uganda'),
('UM','United States Minor Outlying Islands'),
('US','United States'),
('UY','Uruguay'),
('UZ','Uzbekistan'),
('VA','Holy See (vatican City State)'),
('VC','Saint Vincent And The Grenadines'),
('VE','Venezuela'),
('VG','Virgin Islands, British'),
('VI','Virgin Islands, U.s.'),
('VN','Viet Nam'),
('VU','Vanuatu'),
('WF','Wallis And Futuna'),
('WS','Samoa'),
('XX','Semua Negara'),
('YE','Yemen'),
('YT','Mayotte'),
('YU','Yugoslavia'),
('ZA','South Africa'),
('ZM','Zambia'),
('ZW','Zimbabwe');

/*Table structure for table `reff_satuan` */

DROP TABLE IF EXISTS `reff_satuan`;

CREATE TABLE `reff_satuan` (
  `KD_SATUAN` char(3) NOT NULL,
  `URAIAN` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`KD_SATUAN`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `reff_satuan` */

insert  into `reff_satuan`(`KD_SATUAN`,`URAIAN`) values 
('05','lift'),
('06','small spray'),
('08','heat lot'),
('10','group'),
('11','outfit'),
('13','ration'),
('14','shot'),
('15','stick, military'),
('16','hundred fifteen kg drum'),
('17','hundred lb drum'),
('18','fiftyfive gallon (US) drum'),
('19','tank truck'),
('1A','car mile'),
('1B','car count'),
('1C','locomotive count'),
('1D','caboose count'),
('1E','empty car'),
('1F','train mile'),
('1G','fuel usage gallon (US)'),
('1H','caboose mile'),
('1I','fixed rate'),
('1J','ton mile'),
('1K','locomotive mile'),
('1L','total car count'),
('1M','total car mile'),
('1X','quarter mile'),
('20','twenty foot container'),
('21','forty foot container'),
('22','decilitre per gram'),
('23','gram per cubic centimetre'),
('24','theoretical pound'),
('25','gram per square centimetre'),
('26','actual ton'),
('27','theoretical ton'),
('28','kilogram per square metre'),
('29','pound per thousand square foot'),
('2A','radian per second'),
('2B','radian per second squared'),
('2C','roentgen'),
('2G','volt AC'),
('2H','volt DC'),
('2I','British thermal unit (international table) per hou'),
('2J','cubic centimetre per second'),
('2K','cubic foot per hour'),
('2L','cubic foot per minute'),
('2M','centimetre per second'),
('2N','decibel'),
('2P','kilobyte'),
('2Q','kilobecquerel'),
('2R','kilocurie'),
('2U','megagram'),
('2V','megagram per hour'),
('2W','bin'),
('2X','metre per minute'),
('2Y','milliroentgen'),
('2Z','millivolt'),
('30','horse power day per air dry metric ton'),
('31','catch weight'),
('32','kilogram per air dry metric ton'),
('33','kilopascal square metre per gram'),
('34','kilopascal per millimetre'),
('35','millilitre per square centimetre second'),
('36','cubic foot per minute per square foot'),
('37','ounce per square foot'),
('38','ounce per square foot per 0,01inch'),
('3B','megajoule'),
('3C','manmonth'),
('3E','pound per pound of product'),
('3G','pound per piece of product'),
('3H','kilogram per kilogram of product'),
('3I','kilogram per piece of product'),
('40','millilitre per second'),
('41','millilitre per minute'),
('43','super bulk bag'),
('44','fivehundred kg bulk bag'),
('45','threehundred kg bulk bag'),
('46','fifty lb bulk bag'),
('47','fifty lb bag'),
('48','bulk car load'),
('4A','bobbin'),
('4B','cap'),
('4C','centistokes'),
('4E','twenty pack'),
('4G','microlitre'),
('4H','micrometre (micron)'),
('4K','milliampere'),
('4L','megabyte'),
('4M','milligram per hour'),
('4N','megabecquerel'),
('4O','microfarad'),
('4P','newton per metre'),
('4Q','ounce inch'),
('4R','ounce foot'),
('4T','picofarad'),
('4U','pound per hour'),
('4W','ton (US) per hour'),
('4X','kilolitre per hour'),
('53','theoretical kilogram'),
('54','theoretical tonne'),
('56','sitas'),
('57','mesh'),
('58','net kilogram'),
('59','part per million'),
('5A','barrel (US) per minute'),
('5B','batch'),
('5C','gallon(US) per thousand'),
('5E','MMSCF/day'),
('5F','pound per thousand'),
('5G','pump'),
('5H','stage'),
('5I','standard cubic foot'),
('5J','hydraulic horse power'),
('5K','count per minute'),
('5P','seismic level'),
('5Q','seismic line'),
('60','percent weight'),
('61','part per billion (US)'),
('62','percent per 1000 hour'),
('63','failure rate in time'),
('64','pound per square inch, gauge'),
('66','oersted'),
('69','test specific scale'),
('71','volt ampere per pound'),
('72','watt per pound'),
('73','ampere tum per centimetre'),
('74','millipascal'),
('76','gauss'),
('77','milli-inch'),
('78','kilogauss'),
('80','pound per square inch absolute'),
('81','henry'),
('84','kilopound-force per square inch'),
('85','foot pound-force'),
('87','pound per cubic foot'),
('89','poise'),
('90','Saybold universal second'),
('91','stokes'),
('92','calorie per cubic centimetre'),
('93','calorie per gram'),
('94','curl unit'),
('95','twenty thousand gallon (US) tankcar'),
('96','ten thousand gallon (US) tankcar'),
('97','ten kg drum'),
('98','fifteen kg drum'),
('A1','15 °C calorie'),
('A10','ampere square metre per joule second'),
('A11','angstrom'),
('A12','astronomical unit'),
('A13','attojoule'),
('A14','barn'),
('A15','barn per electronvolt'),
('A16','barn per steradian electronvolt'),
('A17','barn per steradian'),
('A18','becquerel per kilogram'),
('A19','becquerel per cubic metre'),
('A2','ampere per centimetre'),
('A20','British thermal unit (international table) per sec'),
('A21','British thermal unit (international table) per pou'),
('A22','British thermal unit (international table) per sec'),
('A23','British thermal unit (international table) per hou'),
('A24','candela per square metre'),
('A25','cheval vapeur'),
('A26','coulomb metre'),
('A27','coulomb metre squared per volt'),
('A28','coulomb per cubic centimetre'),
('A29','coulomb per cubic metre'),
('A3','ampere per millimetre'),
('A30','coulomb per cubic millimetre'),
('A31','coulomb per kilogram second'),
('A32','coulomb per mole'),
('A33','coulomb per square centimetre'),
('A34','coulomb per square metre'),
('A35','coulomb per square millimetre'),
('A36','cubic centimetre per mole'),
('A37','cubic decimetre per mole'),
('A38','cubic metre per coulomb'),
('A39','cubic metre per kilogram'),
('A4','ampere per square centimetre'),
('A40','cubic metre per mole'),
('A41','ampere per square metre'),
('A42','curie per kilogram'),
('A43','deadweight tonnage'),
('A44','decalitre'),
('A45','decametre'),
('A47','decitex'),
('A48','degree Rankine'),
('A49','denier'),
('A5','ampere square metre'),
('A50','dyne second per cubic centimetre'),
('A51','dyne second per centimetre'),
('A52','dyne second per centimetre to the fifth power'),
('A53','electronvolt'),
('A54','electronvolt per metre'),
('A55','electronvolt square metre'),
('A56','electronvolt square metre per kilogram'),
('A57','erg'),
('A58','erg per centimetre'),
('A59','8-part cloud cover'),
('A6','ampere per square metre kelvin squared'),
('A60','erg per cubic centimetre'),
('A61','erg per gram'),
('A62','erg per gram second'),
('A63','erg per second'),
('A64','erg per second square centimetre'),
('A65','erg per square centimetre second'),
('A66','erg square centimetre'),
('A67','erg square centimetre per gram'),
('A68','exajoule'),
('A69','farad per metre'),
('A7','ampere per square millimetre'),
('A70','femtojoule'),
('A71','femtometre'),
('A73','foot per second squared'),
('A74','foot pound-force per second'),
('A75','freight ton'),
('A76','gal'),
('A77','Gaussian CGS unit of displacement'),
('A78','Gaussian CGS unit of electric current'),
('A79','Gaussian CGS unit of electric charge'),
('A8','ampere second'),
('A80','Gaussian CGS unit of electric field strength'),
('A81','Gaussian CGS unit of electric polarization'),
('A82','Gaussian CGS unit of electric potential'),
('A83','Gaussian CGS unit of magnetization'),
('A84','gigacoulomb per cubic metre'),
('A85','gigaelectronvolt'),
('A86','gigahertz'),
('A87','gigaohm'),
('A88','gigaohm metre'),
('A89','gigapascal'),
('A9','rate'),
('A90','gigawatt'),
('A91','gon'),
('A93','gram per cubic metre'),
('A94','gram per mole'),
('A95','gray'),
('A96','gray per second'),
('A97','hectopascal'),
('A98','henry per metre'),
('A99','bit'),
('AA','ball'),
('AB','bulk pack'),
('ACR','Acre (4840 yd2)'),
('ACT','activity'),
('AD','byte'),
('AE','ampere per metre'),
('AH','additional minute'),
('AI','average minute per call'),
('AJ','cop'),
('AK','fathom'),
('AL','access line'),
('AM','ampoule'),
('AMH','Ampere-hour  (3,6 kC)'),
('AMP','Ampere'),
('ANN','Year'),
('AP','aluminium pound only'),
('APZ','Ounce GB,US (31,10348 g)'),
('AQ','anti-hemophilic factor (AHF) unit'),
('AR','suppository'),
('ARE','Are (100m2)'),
('AS','assortment'),
('ASM','alcoholic strength by mass'),
('ASU','alcoholic strength by volume'),
('ATM','Standard atmosphere (101325 Pa)'),
('ATT','Technical atmosphere (98066,5 Pa)'),
('AV','Capsule'),
('AW','Powder Filled Vial'),
('AY','assembly'),
('AZ','British thermal unit (international table) per pou'),
('B0','Btu per cubic foot'),
('B1','barrel (US) per day'),
('B10','bit per second'),
('B11','joule per kilogram kelvin'),
('B12','joule per metre'),
('B13','joule per square metre'),
('B14','joule per metre to the fourth power'),
('B15','joule per mole'),
('B16','joule per mole kelvin'),
('B17','credit'),
('B18','joule second'),
('B19','digit'),
('B2','bunk'),
('B20','joule square metre per kilogram'),
('B21','kelvin per watt'),
('B22','kiloampere'),
('B23','kiloampere per square metre'),
('B24','kiloampere per metre'),
('B25','kilobecquerel per kilogram'),
('B26','kilocoulomb'),
('B27','kilocoulomb per cubic metre'),
('B28','kilocoulomb per square metre'),
('B29','kiloelectronvolt'),
('B3','batting pound'),
('B30','gibibit'),
('B31','kilogram metre per second'),
('B32','kilogram metre squared'),
('B33','kilogram metre squared per second'),
('B34','kilogram per cubic decimetre'),
('B35','kilogram per litre'),
('B36','calorie (thermochemical) per gram'),
('B37','kilogram-force'),
('B38','kilogram-force metre'),
('B39','kilogram-force metre per second'),
('B4','barrel, imperial'),
('B40','kilogram-force per square metre'),
('B41','kilojoule per kelvin'),
('B42','kilojoule per kilogram'),
('B43','kilojoule per kilogram kelvin'),
('B44','kilojoule per mole'),
('B45','kilomole'),
('B46','kilomole per cubic metre'),
('B47','kilonewton'),
('B48','kilonewton metre'),
('B49','kiloohm'),
('B5','billet'),
('B50','kiloohm metre'),
('B51','kilopond'),
('B52','kilosecond'),
('B53','kilosiemens'),
('B54','kilosiemens per metre'),
('B55','kilovolt per metre'),
('B56','kiloweber per metre'),
('B57','light year'),
('B58','litre per mole'),
('B59','lumen hour'),
('B6','bun'),
('B60','lumen per square metre'),
('B61','lumen per watt'),
('B62','lumen second'),
('B63','lux hour'),
('B64','lux second'),
('B65','maxwell'),
('B66','megaampere per square metre'),
('B67','megabecquerel per kilogram'),
('B68','gigabit'),
('B69','megacoulomb per cubic metre'),
('B7','cycle'),
('B70','megacoulomb per square metre'),
('B71','megaelectronvolt'),
('B72','megagram per cubic metre'),
('B73','meganewton'),
('B74','meganewton metre'),
('B75','megaohm'),
('B76','megaohm metre'),
('B77','megasiemens per metre'),
('B78','megavolt'),
('B79','megavolt per metre'),
('B8','joule per cubic metre'),
('B80','gigabit per second'),
('B81','reciprocal metre squared reciprocal second'),
('B82','inch per linear foot'),
('B83','metre to the fourth power'),
('B84','microampere'),
('B85','microbar'),
('B86','microcoulomb'),
('B87','microcoulomb per cubic metre'),
('B88','microcoulomb per square metre'),
('B89','microfarad per metre'),
('B9','batt'),
('B90','microhenry'),
('B91','microhenry per metre'),
('B92','micronewton'),
('B93','micronewton metre'),
('B94','microohm'),
('B95','microohm metre'),
('B96','micropascal'),
('B97','microradian'),
('B98','microsecond'),
('B99','microsiemens'),
('BAR','Bar'),
('BB','base box'),
('BD','board'),
('BE','bundle'),
('BFT','board foot'),
('BG','bag'),
('BH','brush'),
('BHP','brake horse power'),
('BIL','Billion'),
('BJ','bucket'),
('BK','basket'),
('BL','bale'),
('BLD','Dry barrel (115,627 dm3)'),
('BLL','Barrel (petroleum) (458,987 dm3)'),
('BO','bottle'),
('BP','hundred board foot'),
('BQL','Becquerel'),
('BR','bar [unit of packaging]'),
('BT','bolt'),
('BTU','British thermal unit (international table)'),
('BUA','Bushel (35,2391 dm3)'),
('BUI','Bushel (36,36874 dm3)'),
('BW','base weight'),
('BX','box'),
('BZ','million BTUs'),
('C0','call'),
('C1','composite product pound (total weight)'),
('C10','millifarad'),
('C11','milligal'),
('C12','milligram per metre'),
('C13','milligray'),
('C14','millihenry'),
('C15','millijoule'),
('C16','millimetre per second'),
('C17','millimetre squared per second'),
('C18','millimole'),
('C19','mole per kilogram'),
('C2','carset'),
('C20','millinewton'),
('C21','kibibit'),
('C22','millinewton per metre'),
('C23','milliohm metre'),
('C24','millipascal second'),
('C25','milliradian'),
('C26','millisecond'),
('C27','millisiemens'),
('C28','millisievert'),
('C29','millitesla'),
('C3','microvolt per metre'),
('C30','millivolt per metre'),
('C31','milliwatt'),
('C32','milliwatt per square metre'),
('C33','milliweber'),
('C34','mole'),
('C35','mole per cubic decimetre'),
('C36','mole per cubic metre'),
('C37','kilobit'),
('C38','mole per litre'),
('C39','nanoampere'),
('C4','carload'),
('C40','nanocoulomb'),
('C41','nanofarad'),
('C42','nanofarad per metre'),
('C43','nanohenry'),
('C44','nanohenry per metre'),
('C45','nanometre'),
('C46','nanoohm metre'),
('C47','nanosecond'),
('C48','nanotesla'),
('C49','nanowatt'),
('C5','cost'),
('C50','neper'),
('C51','neper per second'),
('C52','picometre'),
('C53','newton metre second'),
('C54','newton metre squared kilogram squared'),
('C55','newton per square metre'),
('C56','newton per square millimetre'),
('C57','newton second'),
('C58','newton second per metre'),
('C59','octave'),
('C6','cell'),
('C60','ohm centimetre'),
('C61','ohm metre'),
('C62','one'),
('C63','parsec'),
('C64','pascal per kelvin'),
('C65','pascal second'),
('C66','pascal second per cubic metre'),
('C67','pascal second per metre'),
('C68','petajoule'),
('C69','phon'),
('C7','centipoise'),
('C70','picoampere'),
('C71','picocoulomb'),
('C72','picofarad per metre'),
('C73','picohenry'),
('C74','kilobit per second'),
('C75','picowatt'),
('C76','picowatt per square metre'),
('C77','pound gage'),
('C78','pound-force'),
('C79','kilovolt ampere hour'),
('C8','millicoulomb per kilogram'),
('C80','rad'),
('C81','radian'),
('C82','radian square metre per mole'),
('C83','radian square metre per kilogram'),
('C84','radian per metre'),
('C85','reciprocal angstrom'),
('C86','reciprocal cubic metre'),
('C87','reciprocal cubic metre per second'),
('C88','reciprocal electron volt per cubic metre'),
('C89','reciprocal henry'),
('C9','coil group'),
('C90','reciprocal joule per cubic metre'),
('C91','reciprocal kelvin or kelvin to the power minus one'),
('C92','reciprocal metre'),
('C93','reciprocal square metre'),
('C94','reciprocal minute'),
('C95','reciprocal mole'),
('C96','reciprocal pascal or pascal to the power minus one'),
('C97','reciprocal second'),
('C98','reciprocal second per cubic metre'),
('C99','reciprocal second per metre squared'),
('CA','can'),
('CCT','Carrying capacity in metric tonnes'),
('CDL','Candela'),
('CEL','Degree celcius'),
('CEN','Hundred'),
('CG','card'),
('CGM','centigram'),
('CH','container'),
('CJ','cone'),
('CK','connector'),
('CKG','Coulomb per kilogram'),
('CL','coil'),
('CLF','hundred leave'),
('CLT','Centilitre'),
('CMK','Square centimetre'),
('CMQ','Cubic centimetre'),
('CMT','Centimetre'),
('CNP','Hundred packs'),
('CNT','Cental GB (45,359237 kg)'),
('CO','carboy'),
('COU','Coulomb'),
('CQ','cartridge'),
('CR','crate'),
('CS','case'),
('CT','carton'),
('CTG','content gram'),
('CTM','Metric carat (200 mg = 2.10-4 kg)'),
('CTN','content ton (metric)'),
('CU','cup'),
('CUR','Curie'),
('CV','cover'),
('CWA','Hundredweight, US (45,3592 kg)'),
('CWI','Long/ hundredweight GB (50,802345 kg)'),
('CY','cylinder'),
('CZ','combo'),
('D03','kilowatt hour per hour'),
('D04','lot  [unit of weight]'),
('D1','reciprocal second per steradian'),
('D10','siemens per metre'),
('D11','mebibit'),
('D12','siemens square metre per mole'),
('D13','sievert'),
('D14','thousand linear yard'),
('D15','sone'),
('D16','square centimetre per erg'),
('D17','square centimetre per steradian erg'),
('D18','metre kelvin'),
('D19','square metre kelvin per watt'),
('D2','reciprocal second per steradian metre squared'),
('D20','square metre per joule'),
('D21','square metre per kilogram'),
('D22','square metre per mole'),
('D23','pen gram (protein)'),
('D24','square metre per steradian'),
('D25','square metre per steradian joule'),
('D26','square metre per volt second'),
('D27','steradian'),
('D28','syphon'),
('D29','terahertz'),
('D30','terajoule'),
('D31','terawatt'),
('D32','terawatt hour'),
('D33','tesla'),
('D34','tex'),
('D35','calorie (thermochemical)'),
('D36','megabit'),
('D37','calorie (thermochemical) per gram kelvin'),
('D38','calorie (thermochemical) per second centimetre kel'),
('D39','calorie (thermochemical) per second square centime'),
('D40','thousand litre'),
('D41','tonne per cubic metre'),
('D42','tropical year'),
('D43','unified atomic mass unit'),
('D44','var'),
('D45','volt squared per kelvin squared'),
('D46','volt - ampere'),
('D47','volt per centimetre'),
('D48','volt per kelvin'),
('D49','millivolt per kelvin'),
('D5','kilogram per square centimetre'),
('D50','volt per metre'),
('D51','volt per millimetre'),
('D52','watt per kelvin'),
('D53','watt per metre kelvin'),
('D54','watt per square metre'),
('D55','watt per square metre kelvin'),
('D56','watt per square metre kelvin to the fourth power'),
('D57','watt per steradian'),
('D58','watt per steradian square metre'),
('D59','weber per metre'),
('D6','roentgen per second'),
('D60','weber per millimetre'),
('D61','minute [unit of angle]'),
('D62','second [unit of angle]'),
('D63','book'),
('D64','block'),
('D65','round'),
('D66','cassette'),
('D67','dollar per hour'),
('D68','number of words'),
('D69','inch to the fourth power'),
('D7','sandwich'),
('D70','International Table (IT) calorie'),
('D71','International Table (IT) calorie per second centim'),
('D72','International Table (IT) calorie per second square'),
('D73','joule square metre'),
('D74','kilogram per mole'),
('D75','calorie (international table) per gram'),
('D76','calorie (international table) per gram kelvin'),
('D77','megacoulomb'),
('D78','megajoule per second'),
('D79','beam'),
('D8','draize score'),
('D80','microwatt'),
('D81','microtesla'),
('D82','microvolt'),
('D83','millinewton metre'),
('D85','microwatt per square metre'),
('D86','millicoulomb'),
('D87','millimole per kilogram'),
('D88','millicoulomb per cubic metre'),
('D89','millicoulomb per square metre'),
('D9','dyne per square centimetre'),
('D90','cubic metre (net)'),
('D91','rem'),
('D92','band'),
('D93','second per cubic metre'),
('D94','second per cubic metre radian'),
('D95','joule per gram'),
('D96','pound gross'),
('D97','pallet/unit load'),
('D98','mass pound'),
('D99','sleeve'),
('DAA','Decare'),
('DAD','Ten day'),
('DAY','Day'),
('DB','dry pound'),
('DBC','Decade (ten years)'),
('DC','disk (disc)'),
('DD','degree [unit of angle]'),
('DE','deal'),
('DEC','decade'),
('DG','decigram'),
('DI','dispenser'),
('DJ','decagram'),
('DLT','decilitre'),
('DMA','cubic decametre'),
('DMK','Square decimetre'),
('DMO','standard kilolitre'),
('DMQ','Cubic decimetre'),
('DMT','Decimetre'),
('DN','decinewton metre'),
('DPC','dozen piece'),
('DPR','Dozen pairs'),
('DPT','Displecement tonnege'),
('DQ','data record'),
('DR','drum'),
('DRA','Dram US (3,887935 g)'),
('DRI','Dram GB (1,771745 g)'),
('DRL','Dozen rolls'),
('DRM','Drachm, GB (3,887935 g)'),
('DS','display'),
('DT','dry ton'),
('DTN','Centner, metric (100 kg)'),
('DU','dyne'),
('DWT','Pennyweight GB,US (1,555174 g)'),
('DX','dyne per centimetre'),
('DY','directory book'),
('DZN','Dozen'),
('DZP','Dozen packs'),
('E01','newton per square centimetre'),
('E07','megawatt hour per hour'),
('E08','megawatt per hertz'),
('E09','milliampere hour'),
('E10','degree day'),
('E11','gigacalorie'),
('E12','mille'),
('E14','kilocalorie (international table)'),
('E15','kilocalorie (thermochemical) per hour'),
('E16','million Btu(IT) per hour'),
('E17','cubic foot per second'),
('E18','tonne per hour'),
('E19','ping'),
('E2','belt'),
('E20','megabit per second'),
('E21','shares'),
('E22','TEU'),
('E23','tyre'),
('E25','active unit'),
('E27','dose'),
('E28','air dry ton'),
('E3','trailer'),
('E30','strand'),
('E31','square metre per litre'),
('E32','litre per hour'),
('E33','foot per thousand'),
('E34','gigabyte'),
('E35','terabyte'),
('E36','petabyte'),
('E37','pixel'),
('E38','megapixel'),
('E39','dots per inch'),
('E4','gross kilogram'),
('E40','part per hundred thousand'),
('E41','kilogram-force per square millimetre'),
('E42','kilogram-force per square centimetre'),
('E43','joule per square centimetre'),
('E44','kilogram-force metre per square centimetre'),
('E45','milliohm'),
('E46','kilowatt hour per cubic metre'),
('E47','kilowatt hour per kelvin'),
('E48','service unit'),
('E49','working day'),
('E5','metric long ton'),
('E50','accounting unit'),
('E51','job'),
('E52','run foot'),
('E53','test'),
('E54','trip'),
('E55','use'),
('E56','well'),
('E57','zone'),
('E58','exabit per second'),
('E59','exbibyte'),
('E60','pebibyte'),
('E61','tebibyte'),
('E62','gibibyte'),
('E63','mebibyte'),
('E64','kibibyte'),
('E65','exbibit per metre'),
('E66','exbibit per square metre'),
('E67','exbibit per cubic metre'),
('E68','gigabyte per second'),
('E69','gibibit per metre'),
('E70','gibibit per square metre'),
('E71','gibibit per cubic metre'),
('E72','kibibit per metre'),
('E73','kibibit per square metre'),
('E74','kibibit per cubic metre'),
('E75','mebibit per metre'),
('E76','mebibit per square metre'),
('E77','mebibit per cubic metre'),
('E78','petabit'),
('E79','petabit per second'),
('E80','pebibit per metre'),
('E81','pebibit per square metre'),
('E82','pebibit per cubic metre'),
('E83','terabit'),
('E84','terabit per second'),
('E85','tebibit per metre'),
('E86','tebibit per cubic metre'),
('E87','tebibit per square metre'),
('E88','bit per metre'),
('E89','bit per square metre'),
('E90','reciprocal centimetre'),
('E91','reciprocal day'),
('E92','cubic decimetre per hour'),
('E93','kilogram per hour'),
('E94','kilomole per second'),
('E95','mole per second'),
('E96','degree per second'),
('E97','millimetre per degree Celcius metre'),
('E98','degree celsius per kelvin'),
('E99','hektopascal per bar'),
('EA','each'),
('EB','electronic mail box'),
('EC','each per month'),
('EP','eleven pack'),
('EQ','equivalent gallon'),
('EV','envelope'),
('F01','bit per cubic metre'),
('F02','kelvin per kelvin'),
('F03','kilopascal per bar'),
('F04','millibar per bar'),
('F05','megapascal per bar'),
('F06','poise per bar'),
('F07','pascal per bar'),
('F08','milliampere per inch'),
('F1','thousand cubic foot per day'),
('F10','kelvin per hour'),
('F11','kelvin per minute'),
('F12','kelvin per second'),
('F13','slug'),
('F14','gram per kelvin'),
('F15','kilogram per kelvin'),
('F16','milligram per kelvin'),
('F17','pound-force per foot'),
('F18','kilogram square centimetre'),
('F19','kilogram square millimetre'),
('F20','pound inch squared'),
('F21','pound-force inch'),
('F22','pound-force foot per ampere'),
('F23','gram per cubic decimetre'),
('F24','kilogram per kilomol'),
('F25','gram per hertz'),
('F26','gram per day'),
('F27','gram per hour'),
('F28','gram per minute'),
('F29','gram per second'),
('F30','kilogram per day'),
('F31','kilogram per minute'),
('F32','milligram per day'),
('F33','milligram per minute'),
('F34','milligram per second'),
('F35','gram per day kelvin'),
('F36','gram per hour kelvin'),
('F37','gram per minute kelvin'),
('F38','gram per second kelvin'),
('F39','kilogram per day kelvin'),
('F40','kilogram per hour kelvin'),
('F41','kilogram per minute kelvin'),
('F42','kilogram per second kelvin'),
('F43','milligram per day kelvin'),
('F44','milligram per hour kelvin'),
('F45','milligram per minute kelvin'),
('F46','milligram per second kelvin'),
('F47','newton per millimetre'),
('F48','pound-force per inch'),
('F49','rod [unit of distance]'),
('F50','micrometre per kelvin'),
('F51','centimetre per kelvin'),
('F52','metre per kelvin'),
('F53','millimetre per kelvin'),
('F54','milliohm per metre'),
('F55','ohm per mile'),
('F56','ohm per kilometre'),
('F57','milliampere per pound-force per square inch'),
('F58','reciprocal bar'),
('F59','milliampere per bar'),
('F60','degree Celsius per bar'),
('F61','kelvin per bar'),
('F62','gram per day bar'),
('F63','gram per hour bar'),
('F64','gram per minute bar'),
('F65','gram per second bar'),
('F66','kilogram per day bar'),
('F67','kilogram per hour bar'),
('F68','kilogram per minute bar'),
('F69','kilogram per second bar'),
('F70','milligram per day bar'),
('F71','milligram per hour bar'),
('F72','milligram per minute bar'),
('F73','milligram per second bar'),
('F74','gram per bar'),
('F75','milligram per bar'),
('F76','milliampere per millimetre'),
('F77','pascal second per kelvin'),
('F78','inch of water'),
('F79','inch of mercury'),
('F80','water horse power'),
('F81','bar per kelvin'),
('F82','hektopascal per kelvin'),
('F83','kilopascal per kelvin'),
('F84','millibar per kelvin'),
('F85','megapascal per kelvin'),
('F86','poise per kelvin'),
('F87','volt per litre minute'),
('F88','newton centimetre'),
('F89','newton metre per degree'),
('F9','fibre per cubic centimetre of air'),
('F90','newton metre per ampere'),
('F91','bar litre per second'),
('F92','bar cubic metre per second'),
('F93','hektopascal litre per second'),
('F94','hektopascal cubic metre per second'),
('F95','millibar litre per second'),
('F96','millibar cubic metre per second'),
('F97','megapascal litre per second'),
('F98','megapascal cubic metre per second'),
('F99','pascal litre per second'),
('FAH','degree Fahrenheit'),
('FAR','farad'),
('FB','field'),
('FBM','fibre metre'),
('FC','thousand cubic foot'),
('FD','million particle per cubic foot'),
('FE','track foot'),
('FF','hundred cubic metre'),
('FG','transdermal patch'),
('FH','micromole'),
('FIT','failures in time'),
('FL','flake ton'),
('FM','million cubic foot'),
('FOT','Foot (0.3048 m)'),
('FP','pound per square foot'),
('FR','foot per minute'),
('FS','foot per second'),
('FTK','Square foot'),
('FTQ','Cubic foot'),
('G01','pascal cubic metre per second'),
('G04','centimetre per bar'),
('G05','metre per bar'),
('G06','millimetre per bar'),
('G08','square inch per second'),
('G09','square metre per second kelvin'),
('G10','stokes per kelvin'),
('G11','gram per cubic centimetre bar'),
('G12','gram per cubic decimetre bar'),
('G13','gram per litre bar'),
('G14','gram per cubic metre bar'),
('G15','gram per millilitre bar'),
('G16','kilogram per cubic centimetre bar'),
('G17','kilogram per litre bar'),
('G18','kilogram per cubic metre bar'),
('G19','newton metre per kilogram'),
('G2','US gallon per minute'),
('G20','pound-force foot per pound'),
('G21','cup [unit of volume]'),
('G23','peck'),
('G24','tablespoon (US)'),
('G25','teaspoon (US)'),
('G26','stere'),
('G27','cubic centimetre per kelvin'),
('G28','litre per kelvin'),
('G29','cubic metre per kelvin'),
('G3','Imperial gallon per minute'),
('G30','millilitre per kelvin'),
('G31','kilogram per cubic centimetre'),
('G32','ounce (avoirdupois) per cubic yard'),
('G33','gram per cubic centimetre kelvin'),
('G34','gram per cubic decimetre kelvin'),
('G35','gram per litre kelvin'),
('G36','gram per cubic metre kelvin'),
('G37','gram per millilitre kelvin'),
('G38','kilogram per cubic centimetre kelvin'),
('G39','kilogram per litre kelvin'),
('G40','kilogram per cubic metre kelvin'),
('G41','square metre per second bar'),
('G42','microsiemens per centimetre'),
('G43','microsiemens per metre'),
('G44','nanosiemens per centimetre'),
('G45','nanosiemens per metre'),
('G46','stokes per bar'),
('G47','cubic centimetre per day'),
('G48','cubic centimetre per hour'),
('G49','cubic centimetre per minute'),
('G50','gallon (US) per hour'),
('G51','litre per second'),
('G52','cubic metre per day'),
('G53','cubic metre per minute'),
('G54','millilitre per day'),
('G55','millilitre per hour'),
('G56','cubic inch per hour'),
('G57','cubic inch per minute'),
('G58','cubic inch per second'),
('G59','milliampere per litre minute'),
('G60','volt per bar'),
('G61','cubic centimetre per day kelvin'),
('G62','cubic centimetre per hour kelvin'),
('G63','cubic centimetre per minute kelvin'),
('G64','cubic centimetre per second kelvin'),
('G65','litre per day kelvin'),
('G66','litre per hour kelvin'),
('G67','litre per minute kelvin'),
('G68','litre per second kelvin'),
('G69','cubic metre per day kelvin'),
('G7','microfiche sheet'),
('G70','cubic metre per hour kelvin'),
('G71','cubic metre per minute kelvin'),
('G72','cubic metre per second kelvin'),
('G73','millilitre per day kelvin'),
('G74','millilitre per hour kelvin'),
('G75','millilitre per minute kelvin'),
('G76','millilitre per second kelvin'),
('G77','millimetre to the fourth power'),
('G78','cubic centimetre per day bar'),
('G79','cubic centimetre per hour bar'),
('G80','cubic centimetre per minute bar'),
('G81','cubic centimetre per second bar'),
('G82','litre per day bar'),
('G83','litre per hour bar'),
('G84','litre per minute bar'),
('G85','litre per second bar'),
('G86','cubic metre per day bar'),
('G87','cubic metre per hour bar'),
('G88','cubic metre per minute bar'),
('G89','cubic metre per second bar'),
('G90','millilitre per day bar'),
('G91','millilitre per hour bar'),
('G92','millilitre per minute bar'),
('G93','millilitre per second bar'),
('G94','cubic centimetre per bar'),
('G95','litre per bar'),
('G96','cubic metre per bar'),
('G97','millilitre per bar'),
('G98','microhenry per kiloohm'),
('G99','microhenry per ohm'),
('GB','gallon (US) per day'),
('GBQ','Gigabecquerel'),
('GC','gram per 100 gram'),
('GD','gross barrel'),
('GDW','gram, dry weight'),
('GE','pound per gallon (US)'),
('GF','gram per metre (gram per 100 centimetres)'),
('GFI','gram of fissile isotope'),
('GGR','Great gross (12 gross)'),
('GH','half gallon (US)'),
('GIA','Gill (11,8294 cm3)'),
('GIC','gram, including container'),
('GII','Gill (0,142065 dm3)'),
('GIP','gram, including inner packaging'),
('GJ','gram per millilitre'),
('GK','gram per kilogram'),
('GL','gram per litre'),
('GLD','Dry gallon (4,404884 dm3)'),
('GLI','Gallon (4,546092 dm3)'),
('GLL','Liquid gallon (3,78541 dm3)'),
('GM','gram per square metre'),
('GN','gross gallon'),
('GO','milligram per square metre'),
('GP','milligram per cubic metre'),
('GQ','microgram per cubic metre'),
('GRM','Gram'),
('GRN','Grain GB,US (64,798910 mg)'),
('GRO','Gross'),
('GRT','Gross (register) ton'),
('GT','gross ton'),
('GV','gigajoule'),
('GW','gallon per thousand cubic foot'),
('GWH','Gigawatt-hour (1 million KW/h)'),
('GY','gross yard'),
('GZ','gage system'),
('H03','henry per kiloohm'),
('H04','henry per ohm'),
('H05','millihenry per kiloohm'),
('H06','millihenry per ohm'),
('H07','pascal second per bar'),
('H08','microbecquerel'),
('H09','reciprocal year'),
('H1','half page ¿ electronic'),
('H10','reciprocal hour'),
('H11','reciprocal month'),
('H12','degree Celsius per hour'),
('H13','degree Celsius per minute'),
('H14','degree Celsius per second'),
('H15','square centimetre per gram'),
('H16','square decametre'),
('H18','square hectometre'),
('H19','cubic hectometre'),
('H2','half litre'),
('H20','cubic kilometre'),
('H21','blank'),
('H22','volt square inch per pound-force'),
('H23','volt per inch'),
('H24','volt per microsecond'),
('H25','percent per kelvin'),
('H26','ohm per metre'),
('H27','degree per metre'),
('H28','microfarad per kilometre'),
('H29','microgram per litre'),
('H30','square micrometre'),
('H31','ampere per kilogram'),
('H32','ampere squared second'),
('H33','farad per kilometre'),
('H34','hertz metre'),
('H35','kelvin metre per watt'),
('H36','megaohm per kilometre'),
('H37','megaohm per metre'),
('H38','megaampere'),
('H39','megahertz kilometre'),
('H40','newton per ampere'),
('H41','newton metre watt to the power minus 0,5'),
('H42','pascal per metre'),
('H43','siemens per centimetre'),
('H44','teraohm'),
('H45','volt second per metre'),
('H46','volt per second'),
('H47','watt per cubic metre'),
('H48','attofarad'),
('H49','centimetre per hour'),
('H50','reciprocal cubic centimetre'),
('H51','decibel per kilometre'),
('H52','decibel per metre'),
('H53','kilogram per bar'),
('H54','kilogram per cubic decimetre kelvin'),
('H55','kilogram per cubic decimetre bar'),
('H56','kilogram per square metre second'),
('H57','inch per two pi radiant'),
('H58','metre per volt second'),
('H59','square metre per newton'),
('H60','cubic metre per cubic metre'),
('H61','millisiemens per centimetre'),
('H62','millivolt per minute'),
('H63','milligram per square centimetre'),
('H64','milligram per gram'),
('H65','millilitre per cubic metre'),
('H66','millimetre per year'),
('H67','millimetre per hour'),
('H68','millimole per gram'),
('H69','picopascal per kilometre'),
('H70','picosecond'),
('H71','percent per month'),
('H72','percent per hectobar'),
('H73','percent per decakelvin'),
('H74','watt per metre'),
('H75','decapascal'),
('H76','gram per millimetre'),
('H77','module width'),
('H78','conventional centimetre of water'),
('H79','French gauge'),
('H80','rack unit'),
('H81','millimetre per minute'),
('H82','big point'),
('H83','litre per kilogram'),
('H84','gram millimetre'),
('H85','reciprocal week'),
('H87','piece'),
('H88','megaohm kilometre'),
('H89','percent per ohm'),
('H90','percent per degree'),
('H91','percent per ten thousand'),
('H92','percent per one hundred thousand'),
('H93','percent per hundred'),
('H94','percent per thousand'),
('H95','percent per volt'),
('H96','percent per bar'),
('H98','percent per inch'),
('H99','percent per metre'),
('HA','hank'),
('HAR','Hectare'),
('HBA','Hectobar'),
('HBX','hundred boxes'),
('HC','hundred count'),
('HD','half dozen'),
('HDW','hundred kilogram, dry weight'),
('HE','hundredth of a carat'),
('HF','hundred foot'),
('HGM','Hectogram'),
('HH','hundred cubic foot'),
('HI','hundred sheet'),
('HIU','Hundred intenational units'),
('HJ','metric horse power'),
('HK','hundred kilogram'),
('HKM','hundred kilogram, net mass'),
('HL','hundred foot (linear)'),
('HLT','Hectolitre'),
('HM','mile per hour'),
('HMQ','Million cubic metres'),
('HMT','Hectometre'),
('HN','conventional millimetre of mercury'),
('HO','hundred troy ounce'),
('HP','conventional millimetre of water'),
('HPA','Hectolitre of pure alcohol'),
('HS','hundred square foot'),
('HT','half hour'),
('HTZ','Hertz'),
('HUR','Hour'),
('HY','hundred yard'),
('IA','inch pound (pound inch)'),
('IC','count per inch'),
('IE','person'),
('IF','inches of water'),
('II','column inch'),
('IL','inch per minute'),
('IM','impression'),
('INH','Inch (2.54 mm)'),
('INK','Square inch'),
('INQ','Cubic inch'),
('IP','insurance policy'),
('ISD','international sugar degree'),
('IT','count per centimetre'),
('IU','inch per second'),
('IV','inch per second squared'),
('J10','percent per millimetre'),
('J12','per mille per psi'),
('J13','degree API'),
('J14','degree Baume (origin scale)'),
('J15','degree Baume (US heavy)'),
('J16','degree Baume (US light)'),
('J17','degree Balling'),
('J18','degree Brix'),
('J19','degree Fahrenheit hour square foot per British the'),
('J2','joule per kilogram'),
('J20','degree Fahrenheit per kelvin'),
('J21','degree Fahrenheit per bar'),
('J22','degree Fahrenheit hour square foot per British the'),
('J23','degree Fahrenheit per hour'),
('J24','degree Fahrenheit per minute'),
('J25','degree Fahrenheit per second'),
('J26','reciprocal degree Fahrenheit'),
('J27','degree Oechsle'),
('J28','degree Rankine per hour'),
('J29','degree Rankine per minute'),
('J30','degree Rankine per second'),
('J31','degree Twaddell'),
('J32','micropoise'),
('J33','microgram per kilogram'),
('J34','microgram per cubic metre kelvin'),
('J35','microgram per cubic metre bar'),
('J36','microlitre per litre'),
('J38','baud'),
('J39','British thermal unit (mean)'),
('J40','British thermal unit (international table) foot pe'),
('J41','British thermal unit (international table) inch pe'),
('J42','British thermal unit (international table) inch pe'),
('J43','British thermal unit (international table) per pou'),
('J44','British thermal unit (international table) per min'),
('J45','British thermal unit (international table) per sec'),
('J46','British thermal unit (thermochemical) foot per hou'),
('J47','British thermal unit (thermochemical) per hour'),
('J48','British thermal unit (thermochemical) inch per hou'),
('J49','British thermal unit (thermochemical) inch per sec'),
('J50','British thermal unit (thermochemical) per pound de'),
('J51','British thermal unit (thermochemical) per minute'),
('J52','British thermal unit (thermochemical) per second'),
('J53','coulomb square metre per kilogram'),
('J54','megabaud'),
('J55','watt second'),
('J56','bar per bar'),
('J57','barrel (UK petroleum)'),
('J58','barrel (UK petroleum) per minute'),
('J59','barrel (UK petroleum) per day'),
('J60','barrel (UK petroleum) per hour'),
('J61','barrel (UK petroleum) per second'),
('J62','barrel (US petroleum) per hour'),
('J63','barrel (US petroleum) per second'),
('J64','bushel (UK) per day'),
('J65','bushel (UK) per hour'),
('J66','bushel (UK) per minute'),
('J67','bushel (UK) per second'),
('J68','bushel (US dry) per day'),
('J69','bushel (US dry) per hour'),
('J70','bushel (US dry) per minute'),
('J71','bushel (US dry) per second'),
('J72','centinewton metre'),
('J73','centipoise per kelvin'),
('J74','centipoise per bar'),
('J75','calorie (mean)'),
('J76','calorie (international table) per gram degree Cels'),
('J78','calorie (thermochemical) per centimetre second deg'),
('J79','calorie (thermochemical) per gram degree Celsius'),
('J81','calorie (thermochemical) per minute'),
('J82','calorie (thermochemical) per second'),
('J83','clo'),
('J84','centimetre per second kelvin'),
('J85','centimetre per second bar'),
('J87','cubic centimetre per cubic metre'),
('J89','centimetre of mercury'),
('J90','cubic decimetre per day'),
('J91','cubic decimetre per cubic metre'),
('J92','cubic decimetre per minute'),
('J93','cubic decimetre per second'),
('J94','dyne centimetre'),
('J95','ounce (UK fluid) per day'),
('J96','ounce (UK fluid) per hour'),
('J97','ounce (UK fluid) per minute'),
('J98','ounce (UK fluid) per second'),
('J99','ounce (US fluid) per day'),
('JB','jumbo'),
('JE','joule per kelvin'),
('JG','jug'),
('JK','megajoule per kilogram'),
('JM','megajoule per cubic metre'),
('JNT','pipeline joint'),
('JO','joint'),
('JOU','Joule'),
('JPS','hundred metre'),
('JR','jar'),
('JWL','number of jewels'),
('K1','kilowatt demand'),
('K10','ounce (US fluid) per hour'),
('K11','ounce (US fluid) per minute'),
('K12','ounce (US fluid) per second'),
('K13','foot per degree Fahrenheit'),
('K14','foot per hour'),
('K15','foot pound-force per hour'),
('K16','foot pound-force per minute'),
('K17','foot per psi'),
('K18','foot per second degree Fahrenheit'),
('K19','foot per second psi'),
('K2','kilovolt ampere reactive demand'),
('K20','reciprocal cubic foot'),
('K21','cubic foot per degree Fahrenheit'),
('K22','cubic foot per day'),
('K23','cubic foot per psi'),
('K24','foot of water'),
('K25','foot of mercury'),
('K26','gallon (UK) per day'),
('K27','gallon (UK) per hour'),
('K28','gallon (UK) per second'),
('K3','kilovolt ampere reactive hour'),
('K30','gallon (US liquid) per second'),
('K31','gram-force per square centimetre'),
('K32','gill (UK) per day'),
('K33','gill (UK) per hour'),
('K34','gill (UK) per minute'),
('K35','gill (UK) per second'),
('K36','gill (US) per day'),
('K37','gill (US) per hour'),
('K38','gill (US) per minute'),
('K39','gill (US) per second'),
('K40','standard acceleration of free fall'),
('K41','grain per gallon (US)'),
('K42','horsepower (boiler)'),
('K43','horsepower (electric)'),
('K45','inch per degree Fahrenheit'),
('K46','inch per psi'),
('K47','inch per second degree Fahrenheit'),
('K48','inch per second psi'),
('K49','reciprocal cubic inch'),
('K5','kilovolt ampere (reactive)'),
('K50','kilobaud'),
('K51','kilocalorie (mean)'),
('K52','kilocalorie (international table) per hour metre d'),
('K53','kilocalorie (thermochemical)'),
('K54','kilocalorie (thermochemical) per minute'),
('K55','kilocalorie (thermochemical) per second'),
('K58','kilomole per hour'),
('K59','kilomole per cubic metre kelvin'),
('K6','Kilolitre'),
('K60','kilomole per cubic metre bar'),
('K61','kilomole per minute'),
('K62','litre per litre'),
('K63','reciprocal litre'),
('K64','pound (avoirdupois) per degree Fahrenheit'),
('K65','pound (avoirdupois) square foot'),
('K66','pound (avoirdupois) per day'),
('K67','pound per foot hour'),
('K68','pound per foot second'),
('K69','pound (avoirdupois) per cubic foot degree Fahrenhe'),
('K70','pound (avoirdupois) per cubic foot psi'),
('K71','pound (avoirdupois) per gallon (UK)'),
('K73','pound (avoirdupois) per hour degree Fahrenheit'),
('K74','pound (avoirdupois) per hour psi'),
('K75','pound (avoirdupois) per cubic inch degree Fahrenhe'),
('K76','pound (avoirdupois) per cubic inch psi'),
('K77','pound (avoirdupois) per psi'),
('K78','pound (avoirdupois) per minute'),
('K79','pound (avoirdupois) per minute degree Fahrenheit'),
('K80','pound (avoirdupois) per minute psi'),
('K81','pound (avoirdupois) per second'),
('K82','pound (avoirdupois) per second degree Fahrenheit'),
('K83','pound (avoirdupois) per second psi'),
('K84','pound per cubic yard'),
('K85','pound-force per square foot'),
('K86','pound-force per square inch degree Fahrenheit'),
('K87','psi cubic inch per second'),
('K88','psi litre per second'),
('K89','psi cubic metre per second'),
('K90','psi cubic yard per second'),
('K91','pound-force second per square foot'),
('K92','pound-force second per square inch'),
('K93','reciprocal psi'),
('K94','quart (UK liquid) per day'),
('K95','quart (UK liquid) per hour'),
('K96','quart (UK liquid) per minute'),
('K97','quart (UK liquid) per second'),
('K98','quart (US liquid) per day'),
('K99','quart (US liquid) per hour'),
('KA','cake'),
('KAT','katal'),
('KB','kilocharacter'),
('KBA','Kilobar'),
('KCC','kilogram of choline chloride'),
('KD','kilogram decimal'),
('KDW','kilogram drained net weight'),
('KEL','Kelvin'),
('KF','kilopacket'),
('KG','keg'),
('KGM','Kilogram'),
('KGS','kilogram per second'),
('KHY','kilogram of hydrogen peroxide'),
('KHZ','kilohertz'),
('KI','kilogram per millimetre width'),
('KIC','kilogram, including container'),
('KIP','kilogram, including inner packaging'),
('KJ','kilosegment'),
('KJO','Kilojoule'),
('KL','kilogram per metre'),
('KLK','lactic dry material percentage'),
('KMA','kilogram of methylamine'),
('KMH','Kilometre per hour'),
('KMK','Square kilometre'),
('KMQ','Kilogram per cubic meter'),
('KMT','Kilometre'),
('KNI','Kilogram of nitrogen'),
('KNS','Kilogram of named substance'),
('KNT','Knot ( 1 n mile oer hour'),
('KO','milliequivalence caustic potash per gram of produc'),
('KPA','kilopascal'),
('KPH','Kilogram of potassium hydroxide (caustic potasn)'),
('KPO','Kilogram of potassium oxide'),
('KPP','Kgm of phosphorus pentoxide(phosphoric anhydride'),
('KR','kiloroentgen'),
('KS','thousand pound per square inch'),
('KSD','Kilogram of substance 90 per cent dry'),
('KSH','Kilogram of sodium hydyoxide  (caustic soda)'),
('KT','kit'),
('KTM','kilometre'),
('KTN','Kilotonne'),
('KUR','Kilogram of uranium'),
('KVA','Kilovolt - ampere'),
('KVR','kilovar'),
('KVT','kilovolt'),
('KW','kilogram per millimetre'),
('KWH','Kilowatt-hour'),
('KWO','kilogram of tungsten trioxide'),
('KWT','Kilowatt'),
('KX','millilitre per kilogram'),
('L10','quart (US liquid) per minute'),
('L11','quart (US liquid) per second'),
('L12','metre per second kelvin'),
('L13','metre per second bar'),
('L14','square metre hour degree Celsius per kilocalorie ('),
('L15','millipascal second per kelvin'),
('L16','millipascal second per bar'),
('L17','milligram per cubic metre kelvin'),
('L18','milligram per cubic metre bar'),
('L19','millilitre per litre'),
('L2','litre per minute'),
('L20','reciprocal cubic millimetre'),
('L21','cubic millimetre per cubic metre'),
('L23','mole per hour'),
('L24','mole per kilogram kelvin'),
('L25','mole per kilogram bar'),
('L26','mole per litre kelvin'),
('L27','mole per litre bar'),
('L28','mole per cubic metre kelvin'),
('L29','mole per cubic metre bar'),
('L30','mole per minute'),
('L31','milliroentgen aequivalent men'),
('L32','nanogram per kilogram'),
('L33','ounce (avoirdupois) per day'),
('L34','ounce (avoirdupois) per hour'),
('L35','ounce (avoirdupois) per minute'),
('L36','ounce (avoirdupois) per second'),
('L37','ounce (avoirdupois) per gallon (UK)'),
('L38','ounce (avoirdupois) per gallon (US)'),
('L39','ounce (avoirdupois) per cubic inch'),
('L40','ounce (avoirdupois)-force'),
('L41','ounce (avoirdupois)-force inch'),
('L42','pikosiemens per metre'),
('L43','peck (UK)'),
('L44','peck (UK) per day'),
('L45','peck (UK) per hour'),
('L46','peck (UK) per minute'),
('L47','peck (UK) per second'),
('L48','peck (US dry) per day'),
('L49','peck (US dry) per hour'),
('L50','peck (US dry) per minute'),
('L51','peck (US dry) per second'),
('L52','psi per psi'),
('L53','pint (UK) per day'),
('L54','pint (UK) per hour'),
('L55','pint (UK) per minute'),
('L56','pint (UK) per second'),
('L57','pint (US liquid) per day'),
('L58','pint (US liquid) per hour'),
('L59','pint (US liquid) per minute'),
('L60','pint (US liquid) per second'),
('L61','pint (US dry)'),
('L62','quart (US dry)'),
('L63','slug per day'),
('L64','slug per foot second'),
('L65','slug per cubic foot'),
('L66','slug per hour'),
('L67','slug per minute'),
('L68','slug per second'),
('L69','tonne per kelvin'),
('L70','tonne per bar'),
('L71','tonne per day'),
('L72','tonne per day kelvin'),
('L73','tonne per day bar'),
('L74','tonne per hour kelvin'),
('L75','tonne per hour bar'),
('L76','tonne per cubic metre kelvin'),
('L77','tonne per cubic metre bar'),
('L78','tonne per minute'),
('L79','tonne per minute kelvin'),
('L80','tonne per minute bar'),
('L81','tonne per second'),
('L82','tonne per second kelvin'),
('L83','tonne per second bar'),
('L84','ton (UK shipping)'),
('L85','ton long per day'),
('L86','ton (US shipping)'),
('L87','ton short per degree Fahrenheit'),
('L88','ton short per day'),
('L89','ton short per hour degree Fahrenheit'),
('L90','ton short per hour psi'),
('L91','ton short per psi'),
('L92','ton (UK long) per cubic yard'),
('L93','ton (US short) per cubic yard'),
('L94','ton-force (US short)'),
('L95','common year'),
('L96','sidereal year'),
('L98','yard per degree Fahrenheit'),
('L99','yard per psi'),
('LA','pound per cubic inch'),
('LAC','lactose excess percentage'),
('LBR','Pound GB,US (0,45359237 kg)'),
('LBT','Troy pound, US 9373,242 g)'),
('LC','linear centimetre'),
('LD','litre per day'),
('LE','lite'),
('LEF','leaf'),
('LF','linear foot'),
('LH','labour hour'),
('LI','linear inch'),
('LJ','large spray'),
('LK','link'),
('LM','linear metre'),
('LN','length'),
('LNT','Long ton GB, US 2/ (1,0160469 t)'),
('LO','lot  [unit of procurement]'),
('LP','liquid pound'),
('LPA','Litre of pure alcohol'),
('LR','layer'),
('LS','lump sum'),
('LTN','ton (UK) or long ton (US)'),
('LTR','Litre ( 1 dm3 )'),
('LUB','metric ton, lubricating oil'),
('LUM','Lumen'),
('LUX','lux'),
('LX','linear yard per pound'),
('LY','linear yard'),
('M0','magnetic tape'),
('M1','milligram per litre'),
('M10','reciprocal cubic yard'),
('M11','cubic yard per degree Fahrenheit'),
('M12','cubic yard per day'),
('M13','cubic yard per hour'),
('M14','cubic yard per psi'),
('M15','cubic yard per minute'),
('M16','cubic yard per second'),
('M17','kilohertz metre'),
('M18','gigahertz metre'),
('M19','Beaufort'),
('M20','reciprocal megakelvin or megakelvin to the power m'),
('M21','reciprocal kilovolt - ampere hour'),
('M22','millilitre per square centimetre minute'),
('M23','newton per centimetre'),
('M24','ohm kilometre'),
('M25','percent per degree Celsius'),
('M26','gigaohm per metre'),
('M27','megahertz metre'),
('M29','kilogram per kilogram'),
('M30','reciprocal volt - ampere second'),
('M31','kilogram per kilometre'),
('M32','pascal second per litre'),
('M33','millimole per litre'),
('M34','newton metre per square metre'),
('M35','millivolt - ampere'),
('M36','30-day month'),
('M37','actual/360'),
('M4','monetary value'),
('M5','microcurie'),
('M7','micro-inch'),
('M9','million Btu per 1000 cubic foot'),
('MA','machine per unit'),
('MAH','megavolt ampere reactive hour'),
('MAL','Megalitre'),
('MAM','Megametre'),
('MAR','megavolt ampere reactive'),
('MAW','Megawatt'),
('MBE','thousand standard brick equivalent'),
('MBF','thousand board foot'),
('MBR','millibar'),
('MC','microgram'),
('MCU','millicurie'),
('MD','air dry metric ton'),
('MF','milligram per square foot per side'),
('MGM','Milligram'),
('MHZ','megahertz'),
('MID','Thousand'),
('MIK','Square mile'),
('MIL','thousand'),
('MIN','Minute'),
('MIO','Million'),
('MIU','Million international units'),
('MK','milligram per square inch'),
('MLD','Billion US'),
('MLT','Millilitre'),
('MMK','Square millimetre'),
('MMQ','Cubic millimetre'),
('MMT','Millimetre'),
('MND','kilogram, dry weight'),
('MON','Month'),
('MPA','megapascal'),
('MQ','thousand metre'),
('MQH','cubic metre per hour'),
('MQS','cubic metre per second'),
('MSK','Metre per second squared'),
('MT','mat'),
('MTK','Square metre'),
('MTQ','Cubic metre'),
('MTR','Metre'),
('MTS','metre per second'),
('MV','number of mults'),
('MVA','Megavolt -  ampere (1000 KVA)'),
('MWH','Megawatt-hour (1000 KW/h)'),
('N1','pen calorie'),
('N2','number of lines'),
('N3','print point'),
('NA','milligram per kilogram'),
('NAR','Number of articles'),
('NB','barge'),
('NBB','Number bobbins'),
('NC','car'),
('NCL','number of cells'),
('ND','net barrel'),
('NE','net litre'),
('NEW','Newton'),
('NF','message'),
('NG','net gallon (us)'),
('NH','message hour'),
('NI','net imperial gallon'),
('NIL','nil'),
('NIU','Number of international units'),
('NJ','number of screens'),
('NL','load'),
('NMB','Number'),
('NMI','Nautical mile (1852 m)'),
('NMP','Number of packs'),
('NN','train'),
('NPL','Number of parcels'),
('NPR','number of pairs'),
('NPT','Number of parts'),
('NQ','mho'),
('NR','micromho'),
('NRL','Number of rolls'),
('NT','net ton'),
('NTT','Net (regirter) ton'),
('NU','newton metre'),
('NV','vehicle'),
('NX','part per thousand'),
('NY','pound per air dry metric ton'),
('OA','panel'),
('ODE','ozone depletion equivalent'),
('OHM','Ohm'),
('ON','ounce per square yard'),
('ONZ','Ounce GB,US (28,349523 g)'),
('OP','two pack'),
('OT','overtime hour'),
('OZ','ounce av'),
('OZA','Fluid ounce (29,5735 cm3)'),
('OZI','Fluid ounce (29,5735 cm3)'),
('P0','page - electronic'),
('P1','percent'),
('P2','pound per foot'),
('P3','three pack'),
('P4','four pack'),
('P5','five pack'),
('P6','six pack'),
('P7','seven pack'),
('P8','eight pack'),
('P9','nine pack'),
('PA','packet'),
('PAL','Pascal'),
('PB','pair inch'),
('PCE','Piece'),
('PD','pad'),
('PE','pound equivalent'),
('PF','pallet (lift)'),
('PFL','proof litre'),
('PG','plate'),
('PGL','Proof gallon'),
('PI','pitch'),
('PK','pack'),
('PL','pail'),
('PLA','degree Plato'),
('PM','pound percentage'),
('PN','pound net'),
('PO','pound per inch of length'),
('PQ','page per inch'),
('PR','pair'),
('PS','pound-force per square inch'),
('PT','pint (US)'),
('PTD','Dry pint (0.55061 dm3)'),
('PTI','Pint (0,568262 dm3)'),
('PTL','Liquid Pint (0,473176 dm3)'),
('PU','tray / tray pack'),
('PV','half pint (US)'),
('PW','pound per inch of width'),
('PY','peck dry (US)'),
('PZ','peck dry (UK)'),
('Q3','meal'),
('QA','page - facsimile'),
('QAN','Quarter (of a year)'),
('QB','page - hardcopy'),
('QD','quarter dozen'),
('QH','quarter hour'),
('QK','quarter kilogram'),
('QR','quire'),
('QT','quart (US)'),
('QTD','Dry quart (1,101221 dm3)'),
('QTI','Quart (1,136523 dm3)'),
('QTL','Liquid quart (0,946353 dm3)'),
('QTR','Quarter GB (12,700586 kg)'),
('R1','pica'),
('R4','calorie'),
('R9','thousand cubic metre'),
('RA','rack'),
('RD','rod'),
('RG','ring'),
('RH','running or operating hour'),
('RK','roll metric measure'),
('RL','reel'),
('RM','ream'),
('RN','ream metric measure'),
('RO','roll'),
('RP','pound per ream'),
('RPM','Revolution per minute'),
('RPS','Revolution per second'),
('RS','reset'),
('RT','revenue ton mile'),
('RU','run'),
('S3','square foot per second'),
('S4','square metre per second'),
('S5','sixty fourths of an inch'),
('S6','session'),
('S7','storage unit'),
('S8','standard advertising unit'),
('SA','sack'),
('SAN','Half year (six Months)'),
('SCO','Score'),
('SCR','Scruple GP,US (1,295982 g)'),
('SD','solid pound'),
('SE','section'),
('SEC','Second'),
('SET','Set'),
('SG','segment'),
('SHT','Shipping ton'),
('SIE','Siemens'),
('SK','split tank truck'),
('SL','slipsheet'),
('SMI','Statute mile (1609.344 m)'),
('SN','square rod'),
('SO','spool'),
('SP','shelf package'),
('SQ','square'),
('SQR','square, roofing'),
('SR','Strip'),
('SS','sheet metric measure'),
('SST','Short standard  (7200 matches )'),
('ST','sheet'),
('STI','Stone GB (6,350293 kg)'),
('STK','stick, cigarette'),
('STL','standard litre'),
('STN','Short ton GB, US 2/ (0,90718474 t)'),
('SV','skid'),
('SW','skein'),
('SX','shipment'),
('T0','telecommunication line in service'),
('T1','thousand pound gross'),
('T3','thousand piece'),
('T4','thousand bag'),
('T5','thousand casing'),
('T6','thousand gallon (US)'),
('T7','thousand impression'),
('T8','thousand linear inch'),
('TA','tenth cubic foot'),
('TAH','Thousand ampere-hour'),
('TC','truckload'),
('TD','therm'),
('TE','tote'),
('TF','ten square yard'),
('TI','thousand square inch'),
('TIC','metric ton, including container'),
('TIP','metric ton, including inner packaging'),
('TJ','thousand square centimetre'),
('TK','tank, rectangular'),
('TL','thousand foot (linear)'),
('TMS','kilogram of imported meat, less offal'),
('TN','tin'),
('TNE','Metric ton (1000 kg)'),
('TP','ten pack'),
('TPR','Ten pairs'),
('TQ','thousand foot'),
('TQD','thousand cubic metres per day'),
('TR','ten square foot'),
('TRL','Trillion Eur'),
('TS','thousand square foot'),
('TSD','Tonne of subtance 90 per cent dry'),
('TSH','Ton of steam per hour'),
('TT','thousand linear metre'),
('TU','tube'),
('TV','thousand kilogram'),
('TW','thousand sheet'),
('TY','tank, cylindrical'),
('U1','treatment'),
('U2','Tablet'),
('UA','torr'),
('UB','telecommunication line in service average'),
('UC','telecommunication port'),
('UD','tenth minute'),
('UE','tenth hour'),
('UF','usage per telecommunication line average'),
('UH','ten thousand yard'),
('UM','million unit'),
('VA','volt - ampere per kilogram'),
('VI','vial'),
('VLT','Volt'),
('VP','percent volume'),
('VQ','bulk'),
('VS','visit'),
('W2','wet kilo'),
('W4','two week'),
('WA','watt per kilogram'),
('WB','wet pound'),
('WCD','Cord (3,63 m3)'),
('WE','wet ton'),
('WEB','Weber'),
('WEE','Week'),
('WG','wine gallon'),
('WH','wheel'),
('WHR','Watt-hour'),
('WI','weight per square inch'),
('WM','working month'),
('WR','wrap'),
('WSD','Standard'),
('WTT','Watt'),
('WW','millilitre of water'),
('X1','Gunter\'s chain'),
('YDK','Square yard'),
('YDQ','Cubic yard'),
('YL','hundred linear yard'),
('YRD','Yard (0.9144 m)'),
('YT','ten yard'),
('Z1','lift van'),
('Z2','chest'),
('Z3','cask'),
('Z4','hogshead'),
('Z5','lug'),
('Z6','conference point'),
('Z8','newspage agate line'),
('ZP','page'),
('ZZ','mutually defined');

/*Table structure for table `reff_supplier` */

DROP TABLE IF EXISTS `reff_supplier`;

CREATE TABLE `reff_supplier` (
  `KD_SUPPLIER` varchar(20) NOT NULL,
  `NM_SUPPLIER` varchar(255) DEFAULT NULL,
  `ALMT_SUPPLIER` varchar(255) DEFAULT NULL,
  `KD_NEGARA` char(2) DEFAULT NULL,
  `NPWP_SUPPLIER` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`KD_SUPPLIER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `reff_supplier` */

insert  into `reff_supplier`(`KD_SUPPLIER`,`NM_SUPPLIER`,`ALMT_SUPPLIER`,`KD_NEGARA`,`NPWP_SUPPLIER`) values 
('CE-0001','TWIN TAILS SEAFOOD CORPORATION',NULL,'US',NULL),
('CE-0002','VOGUE SEAFOOD SUPPLIES LIMITED',NULL,'HK',NULL),
('CE-0004','AQUA STAR ( USA ) CORP.',NULL,'US',NULL),
('CE-0005','RED CHAMBER COMPANY PTY LTD',NULL,'AU',NULL),
('CE-0006','WINDA FOOD',NULL,'SG',NULL),
('CE-0007','SEAFOOD HOLDINGS',NULL,'GB',NULL),
('CE-0008','SHORE MARINER LTD',NULL,'NZ',NULL),
('CE-0009','MIDA FOOD',NULL,'PH',NULL),
('CE-0010','COOLMAN SEAFOOD CO.,LTD.',NULL,'KR',NULL),
('CE-0011','JAE WOO INTERNATIONAL CORP',NULL,'KR',NULL),
('CE-0012','YUMI SEAFOOD',NULL,'KR',NULL),
('CE-0013','YUSUNG',NULL,'KR',NULL),
('CE-0014','LANDAUER',NULL,'BE',NULL),
('CE-0015','CHANYOUNG\'S SEAFOOD',NULL,'KR',NULL),
('CE-0016','AQUA STAR CANADA CORP',NULL,'CA',NULL),
('CE-0017','THAI SPRING FISH CO., LTD.',NULL,'TH',NULL),
('CE-0018','SEAFOOD CONNECTION B.V',NULL,'BE',NULL),
('CE-0019','ARGOSY SEAFOODS CORPORATION',NULL,'TI',NULL),
('CE-0020','COOPERATIVA ITALIANA CATERING',NULL,'BE',NULL),
('CE-0021','PACIFIC WEST FOODS AUSTRALIA PTY LTD',NULL,'AU',NULL),
('CE-0022','NAUTILUS FOODS SA',NULL,'FR',NULL),
('CE-0023','BIDFRESH LIMITED',NULL,'GB',NULL),
('CE-0024','PAKFOOD PUBLIC COMPANY LIMITED',NULL,'TH',NULL),
('CE-0025','TRI-UNION',NULL,'US',NULL),
('CE-0026','WAI FUNG HOLDINGS LTD',NULL,'HK',NULL),
('CE-0027','BYRD INTERNATIONAL',NULL,'US',NULL),
('CE-0028','SEAFARERS INC',NULL,'US',NULL),
('CE-0029','KUMBO PRODUCE',NULL,'KR',NULL),
('CL-0001','EKA BOGAINTI, PT',NULL,'ID',NULL),
('SPL-001','TERAJANA','SINGAPORE','SG',NULL),
('VF-0001','ASIN',NULL,'ID',NULL),
('VF-0002','JUM',NULL,'ID',NULL),
('VF-0003','JAHAR',NULL,'ID',NULL),
('VF-0004','ENCEK',NULL,'ID',NULL),
('VF-0005','AHMAD',NULL,'ID',NULL),
('VF-0006','HUZ-TG.BALAI',NULL,'ID',NULL),
('VF-0007','SILAM',NULL,'ID',NULL),
('VF-0008','ARIADI',NULL,'ID',NULL),
('VF-0009','RAHMAD',NULL,'ID',NULL),
('VF-0010','EMA',NULL,'ID',NULL),
('VF-0011','TASMUR',NULL,'ID',NULL),
('VF-0012','JEKI',NULL,'ID',NULL),
('VF-0013','RUDI',NULL,'ID',NULL),
('VF-0014','LEMAN',NULL,'ID',NULL),
('VF-0015','JOPRIZAL',NULL,'ID',NULL),
('VF-0016','M. YANTO',NULL,'ID',NULL),
('VF-0017','CEKMAT-ACEH',NULL,'ID',NULL),
('VF-0018','YUDI',NULL,'ID',NULL),
('VF-0019','BALI',NULL,'ID',NULL),
('VF-0020','ABI',NULL,'ID',NULL),
('VF-0021','ALI',NULL,'ID',NULL),
('VF-0022','IDING',NULL,'ID',NULL),
('VF-0023','AMIN',NULL,'ID',NULL),
('VF-0024','LILIK',NULL,'ID',NULL),
('VF-0025','ANDERSON',NULL,'ID',NULL),
('VF-0026','AMRI-BENGKULU',NULL,'ID',NULL),
('VF-0027','ILHAM',NULL,'ID',NULL),
('VF-0028','ULI',NULL,'ID',NULL),
('VF-0029','AKYAR',NULL,'ID',NULL),
('VF-0030','MAN',NULL,'ID',NULL),
('VF-0031','SAMAN',NULL,'ID',NULL),
('VF-0032','DAVID',NULL,'ID',NULL),
('VF-0033','BADRI',NULL,'ID',NULL),
('VF-0034','ARYA',NULL,'ID',NULL),
('VF-0035','UCOK',NULL,'ID',NULL),
('VF-0036','ANDI',NULL,'ID',NULL),
('VF-0037','AMRI-KAYUPUTIH',NULL,'ID',NULL),
('VF-0038','IWAN',NULL,'ID',NULL),
('VF-0039','IBNU-SINGKIL',NULL,'ID',NULL),
('VF-0040','DIRZA',NULL,'ID',NULL),
('VF-0041','HUZ-B.ASAHAN',NULL,'ID',NULL),
('VF-0042','WAKMAN',NULL,'ID',NULL),
('VF-0043','JONI',NULL,'ID',NULL),
('VF-0044','SMT',NULL,'ID',NULL),
('VF-0045','JUMIATIK',NULL,'ID',NULL),
('VF-0046','WAHYU',NULL,'ID',NULL),
('VF-0047','JUL',NULL,'ID',NULL),
('VF-0048','NACENT',NULL,'ID',NULL),
('VF-0049','IBNU-ACEH',NULL,'ID',NULL),
('VF-0050','CEKMAT-B.ASAHAN',NULL,'ID',NULL),
('VF-0051','ARWIN',NULL,'ID',NULL),
('VF-0052','BOBY',NULL,'ID',NULL),
('VF-0053','IFAN-SS',NULL,'ID',NULL),
('VF-0054','CANDRA-KIP',NULL,'ID',NULL),
('VF-0055','HERI-KIP',NULL,'ID',NULL),
('VF-0056','ASNAWI-KIP',NULL,'ID',NULL),
('VF-0057','RAHMAT-KIP',NULL,'ID',NULL),
('VF-0058','ZH-KIP',NULL,'ID',NULL),
('VF-0059','AGUS LEDONG-KIP',NULL,'ID',NULL),
('VF-0060','AMIN-UK',NULL,'ID',NULL),
('VF-0061','UDINZK-UK',NULL,'ID',NULL),
('VF-0062','H. BOTOH-IKBW',NULL,'ID',NULL),
('VF-0063','SAEFUL-KRG',NULL,'ID',NULL),
('VF-0064','T.NAMA-BELITUNG',NULL,'ID',NULL),
('VF-0065','ATAK',NULL,'ID',NULL),
('VF-0066','ELI SRG',NULL,'ID',NULL),
('VF-0067','ASRI',NULL,'ID',NULL),
('VF-0068','DPS TANPA NAMA',NULL,'ID',NULL),
('VF-0069','SUHASLIMAN',NULL,'ID',NULL),
('VF-0070','SOMAT',NULL,'ID',NULL),
('VF-0071','T.NAMA-BANGKA',NULL,'ID',NULL),
('VI-0001','KING PLASTICS',NULL,'ID',NULL),
('VI-0002','GILPIN',NULL,'ID',NULL),
('VK-0001','H. ANDAN',NULL,'ID',NULL),
('VK-0002','BUDIMAN (LANGSA)',NULL,'ID',NULL),
('VK-0003','UNTUNG (K. BESAR)',NULL,'ID',NULL),
('VK-0004','ENCEK (BELAWAN)',NULL,'ID',NULL),
('VK-0005','CEKMAT (ACEH)',NULL,'ID',NULL),
('VK-0006','RUDI (SIBOLGA)',NULL,'ID',NULL),
('VK-0007','IWAN (SORKAM)',NULL,'ID',NULL),
('VK-0008','IWAN (GOSTEL)',NULL,'ID',NULL),
('VK-0009','IWAN (UCOK)',NULL,'ID',NULL),
('VK-0010','IWAN (S.WAY)',NULL,'ID',NULL),
('VK-0011','CHRIS (ACEH)',NULL,'ID',NULL),
('VK-0012','IPIN/EDO (ACEH)',NULL,'ID',NULL),
('VK-0013','UNER (B. BARA)',NULL,'ID',NULL),
('VK-0014','JONNY (BATAM)',NULL,'ID',NULL),
('VK-0015','BUDI (B. SIAPI-API)',NULL,'ID',NULL),
('VK-0016','SAMAD (B. BARA)',NULL,'ID',NULL),
('VK-0017','AMRI',NULL,'ID',NULL),
('VK-0018','UMAR LEDONG',NULL,'ID',NULL),
('VK-0019','AGUS BELAWAN',NULL,'ID',NULL),
('VK-0020','ARIF (L. BATU)',NULL,'ID',NULL),
('VK-0021','IWAN FERI',NULL,'ID',NULL),
('VK-0022','BUDIMAN 2',NULL,'ID',NULL),
('VK-0023','ENCEK 2 B',NULL,'ID',NULL),
('VK-0024','IWAN FERI (SORKAM)',NULL,'ID',NULL),
('VK-0025','SYAHRIL',NULL,'ID',NULL),
('VK-0026','SANIK',NULL,'ID',NULL),
('VK-0027','SAMSUL',NULL,'ID',NULL),
('VK-0028','NASIB',NULL,'ID',NULL),
('VK-0029','MAJU',NULL,'ID',NULL),
('VK-0030','UNTUNG',NULL,'ID',NULL),
('VK-0031','H. ANDAN',NULL,'ID',NULL),
('VK-0032','BUDIMAN A',NULL,'ID',NULL),
('VK-0033','ENCEK B',NULL,'ID',NULL),
('VL-0001','ABA PLASTIK',NULL,'ID',NULL),
('VL-0002','ANEKA CHEMICALS',NULL,'ID',NULL),
('VL-0003','ANEKA GAS INDUSTRI, PT',NULL,'ID',NULL),
('VL-0004','ANUGRAH MAS PERKASA, PD',NULL,'ID',NULL),
('VL-0005','APOTIK AA',NULL,'ID',NULL),
('VL-0006','AZU MALINDO',NULL,'ID',NULL),
('VL-0007','ALBRIGHT & WILSON',NULL,'ID',NULL),
('VL-0008','BINTANG ABADI',NULL,'ID',NULL),
('VL-0009','BJ FIBER GLASS',NULL,'ID',NULL),
('VL-0010','BENGKEL MERBABU',NULL,'ID',NULL),
('VL-0011','BINTANG BESI',NULL,'ID',NULL),
('VL-0012','BINTANG MAS',NULL,'ID',NULL),
('VL-0013','COMETA CAN',NULL,'ID',NULL),
('VL-0014','CV BERKAT SAINTIFINDO',NULL,'ID',NULL),
('VL-0015','ERIADY',NULL,'ID',NULL),
('VL-0016','GEMILANG JAYA ABADI',NULL,'ID',NULL),
('VL-0017','GEMILANG JAYA PLASTINDO',NULL,'ID',NULL),
('VL-0018','GLOBAL QUALITY SOLUSINDO',NULL,'ID',NULL),
('VL-0019','GUNUNG MAS',NULL,'ID',NULL),
('VL-0020','GRAMEDIA',NULL,'ID',NULL),
('VL-0021','GAYA HARAPAN',NULL,'ID',NULL),
('VL-0022','IPI',NULL,'ID',NULL),
('VL-0023','INDO HANSEL',NULL,'ID',NULL),
('VL-0024','INDOMAS',NULL,'ID',NULL),
('VL-0025','INDO TEKNIK',NULL,'ID',NULL),
('VL-0026','KSP',NULL,'ID',NULL),
('VL-0027','KAHAR DUTA SARANA',NULL,'ID',NULL),
('VL-0028','SAUDARA SUKSES BERSAMA',NULL,'ID',NULL),
('VL-0029','KAWAN LAMA SEJAHTERA, PT',NULL,'ID',NULL),
('VL-0030','LIBRAMAS',NULL,'ID',NULL),
('VL-0031','MEKRINDO',NULL,'ID',NULL),
('VL-0032','PUTRA MAKMUR / MITRA MAKMUR ABADI',NULL,'ID',NULL),
('VL-0033','MARI MAMPIR',NULL,'ID',NULL),
('VL-0034','MITRA MAKMUR JAKARTA',NULL,'ID',NULL),
('VL-0035','SINAR HIDUP, PT',NULL,'ID',NULL),
('VL-0036','MITRA INTERMEDIA',NULL,'ID',NULL),
('VL-0037','MAJU BERSAMA',NULL,'ID',NULL),
('VL-0038','MULTI MEDIKA LABORATORY, PT',NULL,'ID',NULL),
('VL-0039','DOUBLE BOUND CHEMINDO',NULL,'ID',NULL),
('VL-0040','ALCANINDO JAYA MANDIRI',NULL,'ID',NULL),
('VL-0041','INDOTERAS SUMATERA',NULL,'ID',NULL),
('VL-0042','INDONESIA MULTI COLOR PRINTING',NULL,'ID',NULL),
('VL-0043','SINAR CEMERLANG',NULL,'ID',NULL),
('VL-0044','SUN KADO',NULL,'ID',NULL),
('VL-0045','SUMATERA HAKARINDO, PT',NULL,'ID',NULL),
('VL-0046','SINAR CIPTA KREASI',NULL,'ID',NULL),
('VL-0047','SUMBER ANEKA KARYA ABADI',NULL,'ID',NULL),
('VL-0048','SINAR JAYA',NULL,'ID',NULL),
('VL-0049','SINAR ELEKTRIK',NULL,'ID',NULL),
('VL-0050','STEMPEL GM JAYA',NULL,'ID',NULL),
('VL-0051','SAUDARA TEKNIK',NULL,'ID',NULL),
('VL-0052','SRI JAYA SENTOSA',NULL,'ID',NULL),
('VL-0053','SETIA, TOKO',NULL,'ID',NULL),
('VL-0054','TRI JAYA',NULL,'ID',NULL),
('VL-0055','TITAN',NULL,'ID',NULL),
('VL-0056','KING, TOKO',NULL,'ID',NULL),
('VL-0057','CAHAYA, UD',NULL,'ID',NULL),
('VL-0058','UNITED CAN, PT',NULL,'ID',NULL),
('VL-0059','WARNA AGUNG',NULL,'ID',NULL),
('VL-0060','WINDA KARYA TAMI',NULL,'ID',NULL),
('VL-0061','BINTANG TERANG',NULL,'ID',NULL),
('VL-0062','SWAHUSADA GUNA INSTRUMENTASI, PT',NULL,'ID',NULL),
('VL-0063','HASLY JAYA',NULL,'ID',NULL),
('VL-0064','METRUN ALKESTON',NULL,'ID',NULL),
('VL-0065','EVERCOOL',NULL,'ID',NULL),
('VL-0066','HAR AGRITECH, CV',NULL,'ID',NULL),
('VL-0067','DUTA REKANAN EXSA, PT',NULL,'ID',NULL),
('VL-0068','ROYAL KITCHEN',NULL,'ID',NULL),
('VL-0069','DIPA PUSPA LABSAINS, PT',NULL,'ID',NULL),
('VL-0070','MANDIRI JAYA TEKNIK',NULL,'ID',NULL),
('VL-0071','STA',NULL,'ID',NULL),
('VL-0072','TRODEX CENTER',NULL,'ID',NULL),
('VL-0073','MATAHARI',NULL,'ID',NULL),
('VL-0074','KINGLAB INDONESIA, PT',NULL,'ID',NULL),
('VL-0075','MITRA LAJU INTEROCEAN, PT',NULL,'ID',NULL),
('VL-0076','MAHKOTA GANDATAMA PERKASA, PT',NULL,'ID',NULL),
('VL-0077','GUNAWAN SALIM',NULL,'ID',NULL),
('VL-0078','MITRA TRANS FORWADING, PT',NULL,'ID',NULL),
('VL-0079','MILANO MULTI TRADING',NULL,'ID',NULL),
('VL-0080','TEQUISA INDONESIA, PT',NULL,'ID',NULL),
('VL-0081','ANGKASA RAYA INTERNATIONAL CARGO, PT',NULL,'ID',NULL),
('VL-0082','AJU MALINDO, UD',NULL,'ID',NULL),
('VL-0083','TRANSPORINDO AGUNG SEJAHTERA, PT',NULL,'ID',NULL),
('VL-0084','HASIL JAYA ABADI, PT',NULL,'ID',NULL),
('VL-0085','DIPA PUSPA LABSAINS, PT',NULL,'ID',NULL),
('VL-0086','MITRA INTERTRANS FORWARDING, PT',NULL,'ID',NULL),
('VL-0087','CONTROLWISE, CV',NULL,'ID',NULL),
('VL-0088','INDODACIN PRESISIUTAMA, PT',NULL,'ID',NULL),
('VL-0089','WINSON PRIMA SEJAHTERA, PT',NULL,'ID',NULL),
('VL-0090','EKADHARMA INTERNATIONAL TBK, PT',NULL,'ID',NULL),
('VL-0091','SAMAFITRO, PT',NULL,'ID',NULL),
('VL-0092','CIPTA PRIMA',NULL,'ID',NULL),
('VL-0093','SMS, PT',NULL,'ID',NULL),
('VL-0094','MAYEKAWA INDONESIA',NULL,'ID',NULL),
('VL-0095','PUTRI EKA MAJU, PT',NULL,'ID',NULL),
('VL-0096','GUNA TEKNIK',NULL,'ID',NULL),
('VL-0097','JASA SUMBER KARUNIA, PT',NULL,'ID',NULL),
('VL-0098','INTERTEK UTAMA SERVICES, PT',NULL,'ID',NULL),
('VL-0099','TNT SKYPAK INTERNATIONAL,PT',NULL,'ID',NULL),
('VL-0100','ANTAREJA PRIMA ANTARAN,PT',NULL,'ID',NULL),
('VL-0101','MANGGALA KIAT ANANDA,PT',NULL,'ID',NULL),
('VL-0102','SATRIA RAJAWALI,PT',NULL,'ID',NULL),
('VL-0103','TIGA SEKAWAN SUKSES EKSPRES, PT',NULL,'ID',NULL),
('VL-0104','PRIMA SOLUSI INDONESIA, FA',NULL,'ID',NULL),
('VL-0105','ZAINUL BAHRI',NULL,'ID',NULL),
('VL-0106','RENTOKIL, PT',NULL,'ID',NULL),
('VL-0107','IWAINDO INTERNATIONAL, PT',NULL,'ID',NULL),
('VL-0108','JAYA BERSAMA, CV',NULL,'ID',NULL),
('VL-0109','LINTAS DIRGA NUSANTARA, PT',NULL,'ID',NULL),
('VL-0110','SUCOFINDO, PT',NULL,'ID',NULL),
('VL-0111','CANNONEX INDONESIA, PT',NULL,'ID',NULL),
('VL-0112','BUREAU VERITAS INDONESIA, PT',NULL,'ID',NULL),
('VL-0113','MITRACO, PT',NULL,'ID',NULL),
('VL-0114','YAKARI',NULL,'ID',NULL),
('VL-0115','DJAFA MANDIRI PERKASA, PT',NULL,'ID',NULL),
('VL-0116','ELEKTRIKA MEDAN OTOMATIK ABADI, PT',NULL,'ID',NULL),
('VL-0117','WIJAYA INDO NIAGA, PT',NULL,'ID',NULL),
('VL-0118','MULTI SUKSES ENGINEERING, PT',NULL,'ID',NULL),
('VL-0119','ELZA PRATAMA, PT',NULL,'ID',NULL),
('VL-0120','CHEMCO PRIMA MANDIRI, PT',NULL,'ID',NULL),
('VL-0121','Cash',NULL,'ID',NULL),
('VL-0122','ALTRAMAN, PT',NULL,'ID',NULL),
('VL-0123','PRIMA KARYA NUSA, PT',NULL,'ID',NULL),
('VL-0124','TELEKOMUNIKASI INDONESIA, PT',NULL,'ID',NULL),
('VL-0125','IRIADI',NULL,'ID',NULL),
('VL-0126','REPEX PERDANA INTERNATIONAL, PT',NULL,'ID',NULL),
('VL-0127','BRATACO, PT',NULL,'ID',NULL),
('VL-0128','KOGELAHAR INDONUSA, PT',NULL,'ID',NULL),
('VL-0129','ARYATEKNIK MAKMURSENTOSA, PT',NULL,'ID',NULL),
('VL-0130','BECKJORINDO PARYAWEKSANA, PT',NULL,'ID',NULL),
('VL-0131','TRANSLINDO OCEAN PACIFIC, PT',NULL,'ID',NULL),
('VL-0132','ERA SUKSES',NULL,'ID',NULL),
('VL-0133','JAVA ANUGERAH LOGISTICS, PT',NULL,'ID',NULL),
('VL-0134','SATYA CAKRA KENCANA, PT',NULL,'ID',NULL),
('VL-0135','MARKAINDO SELARAS, PT',NULL,'ID',NULL),
('VL-0136','UNIVERSAL TRIJAYA INTIPERKASA, PT',NULL,'ID',NULL),
('VL-0137','BIROTIKA SEMESTA, PT',NULL,'ID',NULL),
('VL-0138','MEDY JAYA PRATAMA, PT',NULL,'ID',NULL),
('VL-0139','EKA MEGA ADIKA, PT',NULL,'ID',NULL),
('VL-0140','MECHATAMA SINAR MULIA, PT',NULL,'ID',NULL),
('VL-0141','GEMILANG SUKSESTAMA MANDIRI, PT',NULL,'ID',NULL),
('VL-0142','TOTAL AUTO CLINIC, CV',NULL,'ID',NULL),
('VL-0143','INTERNATIONAL CARGO SURVEYOR, PT',NULL,'ID',NULL),
('VL-0144','HOWARD LIVING',NULL,'ID',NULL),
('VL-0145','BUMI ALAM LESTARI PERKASA, PT',NULL,'ID',NULL),
('VL-0146','SEVEN MOUNTAIN INTERNATIONAL, PT',NULL,'ID',NULL),
('VL-0147','INDRA GUNAWAN, NOTARIS',NULL,'ID',NULL),
('VL-0148','IRSANI MANDIRI, PT',NULL,'ID',NULL),
('VL-0149','PUJI LESTARI PURNAMA, PT',NULL,'ID',NULL),
('VL-0150','CAIRNHILL SERVIECH INTI, PT',NULL,'ID',NULL),
('VL-0151','TOP ENGINEERING',NULL,'ID',NULL),
('VL-0152','DISTRIPLUS',NULL,'ID',NULL),
('VL-0153','ANDALAN MUTU ENERGI, PT',NULL,'ID',NULL),
('VL-0154','MEDIA ANTAR NUSA, PT',NULL,'ID',NULL),
('VL-0155','SASANDO MULTI INTEGRASI, PT',NULL,'ID',NULL),
('VL-0156','VIRIYA PERSADA NETINDO, PT',NULL,'ID',NULL),
('VL-0157','AMBONA SEMESTA, PT',NULL,'ID',NULL),
('VL-0158','KAWASAN INDUSTRI MEDAN',NULL,'ID',NULL),
('VL-0159','MIDA TRADE VENTURES, INT\'L. INC.',NULL,'ID',NULL),
('VL-9999','One Time Vendor Lokal PPH 23 2%',NULL,'ID',NULL),
('VR-0001','NANDA',NULL,'ID',NULL),
('VR-0002','DIDIK',NULL,'ID',NULL),
('VR-0003','HRY',NULL,'ID',NULL),
('VR-0004','PGT/KRN',NULL,'ID',NULL),
('VR-0005','AYU',NULL,'ID',NULL),
('VR-0006','SAID',NULL,'ID',NULL),
('VR-0007','CGK',NULL,'ID',NULL),
('VR-0008','DHR',NULL,'ID',NULL),
('VR-0009','AD',NULL,'ID',NULL),
('VR-0010','SRP',NULL,'ID',NULL),
('VR-0011','SDG',NULL,'ID',NULL),
('VR-0012','JRG',NULL,'ID',NULL),
('VR-0013','SDK',NULL,'ID',NULL),
('VR-0014','AN',NULL,'ID',NULL),
('VR-0015','HSN',NULL,'ID',NULL),
('VR-0016','T.NAMA-BANJARMASIN',NULL,'ID',NULL),
('VR-0017','AMIR',NULL,'ID',NULL),
('VR-0018','SUAR',NULL,'ID',NULL),
('VR-0019','AJIZAH',NULL,'ID',NULL),
('VR-0020','EFRA',NULL,'ID',NULL),
('VR-0021','JOKO',NULL,'ID',NULL),
('VR-0022','RIZAL MANDIRI',NULL,'ID',NULL),
('VR-0023','SAFARI',NULL,'ID',NULL),
('VR-0024','ERWIN',NULL,'ID',NULL),
('VR-0025','TONO 2',NULL,'ID',NULL),
('VR-0026','IKOH',NULL,'ID',NULL),
('VR-0027','ANJANI',NULL,'ID',NULL),
('VR-0028','RAFI',NULL,'ID',NULL),
('VR-0029','JONI',NULL,'ID',NULL),
('VR-0030','NOR',NULL,'ID',NULL),
('VR-0031','TGR DOL',NULL,'ID',NULL),
('VR-0032','FIRA',NULL,'ID',NULL),
('VR-0033','ANTO',NULL,'ID',NULL),
('VR-0034','SAMASAR/SAMSAR',NULL,'ID',NULL),
('VR-0035','GALUNG',NULL,'ID',NULL),
('VR-0036','ARI',NULL,'ID',NULL),
('VR-0037','ARIVIA',NULL,'ID',NULL),
('VR-0038','SONANG',NULL,'ID',NULL),
('VR-0039','HAS',NULL,'ID',NULL),
('VR-0040','JAROH',NULL,'ID',NULL),
('VR-0041','HAFA',NULL,'ID',NULL),
('VR-0042','SEREJE',NULL,'ID',NULL),
('VR-0043','JIHAN BAIM',NULL,'ID',NULL),
('VR-0044','WAWAN-BANGKA',NULL,'ID',NULL),
('VR-0045','NOVEL',NULL,'ID',NULL),
('VR-0046','ALWI',NULL,'ID',NULL),
('VR-0047','SELI1',NULL,'ID',NULL),
('VR-0048','SELI (SELI 2)',NULL,'ID',NULL),
('VR-0049','SUKRI',NULL,'ID',NULL),
('VR-0050','T.NAMA-BANGKA',NULL,'ID',NULL),
('VR-0051','IIN',NULL,'ID',NULL),
('VR-0052','SETIAWAN',NULL,'ID',NULL),
('VR-0053','RIFAI',NULL,'ID',NULL),
('VR-0054','GHEPI',NULL,'ID',NULL),
('VR-0055','HUSNA',NULL,'ID',NULL),
('VR-0056','DAUS',NULL,'ID',NULL),
('VR-0057','WIRAN',NULL,'ID',NULL),
('VR-0058','MUTIARA',NULL,'ID',NULL),
('VR-0059','FAIZAL',NULL,'ID',NULL),
('VR-0060','SEBANEH',NULL,'ID',NULL),
('VR-0061','BUANG',NULL,'ID',NULL),
('VR-0062','MISAR 2',NULL,'ID',NULL),
('VR-0063','SAEFUL BAHRI',NULL,'ID',NULL),
('VR-0064','SAEFUL BAHRI 2',NULL,'ID',NULL),
('VR-0065','ARYA L. KUNING',NULL,'ID',NULL),
('VR-0066','ARYA PUTIH',NULL,'ID',NULL),
('VR-0067','ALINURDIN',NULL,'ID',NULL),
('VR-0068','ALINURDIN 2',NULL,'ID',NULL),
('VR-0069','ROBI',NULL,'ID',NULL),
('VR-0070','ETHA',NULL,'ID',NULL),
('VR-0071','MLA',NULL,'ID',NULL),
('VR-0072','MAN',NULL,'ID',NULL),
('VR-0073','NINING',NULL,'ID',NULL),
('VR-0074','MURSID',NULL,'ID',NULL),
('VR-0075','MUDASIN',NULL,'ID',NULL),
('VR-0076','BINSAR',NULL,'ID',NULL),
('VR-0077','PRAPTO',NULL,'ID',NULL),
('VR-0078','KHOLIK',NULL,'ID',NULL),
('VR-0079','MALONA',NULL,'ID',NULL),
('VR-0080','SAMSUL',NULL,'ID',NULL),
('VR-0081','NASIB',NULL,'ID',NULL),
('VR-0082','MAJU',NULL,'ID',NULL),
('VR-0083','ASIP',NULL,'ID',NULL),
('VR-0084','IBRAHIM',NULL,'ID',NULL),
('VR-0085','HASBI',NULL,'ID',NULL),
('VR-0086','SYAHRIL',NULL,'ID',NULL),
('VR-0087','SANIK',NULL,'ID',NULL),
('VR-0088','UDIN',NULL,'ID',NULL),
('VR-0089','ANDI',NULL,'ID',NULL),
('VR-0090','AMIN',NULL,'ID',NULL),
('VR-0091','H. UDIN ZAKA',NULL,'ID',NULL),
('VR-0092','UNER',NULL,'ID',NULL),
('VR-0093','ASIN',NULL,'ID',NULL),
('VR-0094','ASENG JP',NULL,'ID',NULL),
('VR-0095','BAMBANG',NULL,'ID',NULL),
('VR-0096','BAMBANG K. INDAH',NULL,'ID',NULL),
('VR-0097','MARTIZON',NULL,'ID',NULL),
('VR-0098','SAMAN',NULL,'ID',NULL),
('VR-0099','SAMAN SUPER',NULL,'ID',NULL),
('VR-0100','CHRIS KELAPA',NULL,'ID',NULL),
('VR-0101','SIJUL NACEN',NULL,'ID',NULL),
('VR-0102','SIJUL NACEN A',NULL,'ID',NULL),
('VR-0103','ITON KELAPA',NULL,'ID',NULL),
('VR-0104','MUHAMMAD',NULL,'ID',NULL),
('VR-0105','IRFAN',NULL,'ID',NULL),
('VR-0106','58 KELAPA',NULL,'ID',NULL),
('VR-0107','RUDI',NULL,'ID',NULL),
('VR-0108','RUDI GUNAWAN',NULL,'ID',NULL),
('VR-0109','HARIS',NULL,'ID',NULL),
('VR-0110','H. AGUS',NULL,'ID',NULL),
('VR-0111','ASENG',NULL,'ID',NULL),
('VR-0112','ULI',NULL,'ID',NULL),
('VR-0113','UJANG',NULL,'ID',NULL),
('VR-0114','BAHAR',NULL,'ID',NULL),
('VR-0115','INDRA KELAPA',NULL,'ID',NULL),
('VR-0116','SALEH KELAPA',NULL,'ID',NULL),
('VR-0117','BAMBANG KI KELAPA',NULL,'ID',NULL),
('VR-0118','IWAN KELAPA',NULL,'ID',NULL),
('VR-0119','UNER (KKS)',NULL,'ID',NULL),
('VR-0120','TONO',NULL,'ID',NULL),
('VR-0121','BA JP / HUZ (MATI)',NULL,'ID',NULL),
('VR-0122','BA JH / HUZ (MATI)',NULL,'ID',NULL),
('VR-0123','BA SLB / HUZ (MATI)',NULL,'ID',NULL),
('VR-0124','MISAR',NULL,'ID',NULL),
('VR-0125','MLA / W',NULL,'ID',NULL),
('VR-0126','RIJAL K. KELAPA',NULL,'ID',NULL),
('VR-0127','BUDIMAN 2 / W',NULL,'ID',NULL),
('VR-0128','ENCEK / UNER',NULL,'ID',NULL),
('VR-0129','ENCEK / HUZ (MATI)',NULL,'ID',NULL),
('VR-0130','DANU',NULL,'ID',NULL),
('VR-0131','MANSUR',NULL,'ID',NULL),
('VR-0132','AGAL',NULL,'ID',NULL),
('VR-0133','PLONCO',NULL,'ID',NULL),
('VR-0134','EDI BAGAN DELI',NULL,'ID',NULL),
('VR-0135','FERY SIBOLGA',NULL,'ID',NULL),
('VR-0136','FARID',NULL,'ID',NULL),
('VR-0137','ADAM',NULL,'ID',NULL),
('VR-0138','MARTIZON',NULL,'ID',NULL),
('VR-0139','PIAN',NULL,'ID',NULL),
('VR-0140','PONIMAN',NULL,'ID',NULL),
('VR-0141','SAHANG HIU KS',NULL,'ID',NULL),
('VR-0142','ACONG PERCUT',NULL,'ID',NULL),
('VR-0143','WAHYU',NULL,'ID',NULL),
('VR-0144','IBRA',NULL,'ID',NULL),
('VR-0145','DERMAN',NULL,'ID',NULL),
('VR-0146','TEGUH',NULL,'ID',NULL),
('VR-0147','ASIN KELAPA',NULL,'ID',NULL),
('VR-0148','DAYANG',NULL,'ID',NULL),
('VR-0149','DEKA/NASUTION',NULL,'ID',NULL),
('VR-0150','UDINKURUK',NULL,'ID',NULL),
('VR-0151','BEBING KS',NULL,'ID',NULL),
('VR-0152','SAUSAN',NULL,'ID',NULL),
('VR-0153','IMRON',NULL,'ID',NULL),
('VR-0154','FIYAN',NULL,'ID',NULL),
('VR-0155','LIANA',NULL,'ID',NULL),
('VR-0156','HASAN FADEL',NULL,'ID',NULL),
('VR-0157','KENON KELAPA',NULL,'ID',NULL),
('VR-0158','ENCEK',NULL,'ID',NULL),
('VR-0159','DPS TANPA NAMA',NULL,'ID',NULL),
('VR-0160','IQBAL (P. BRANDAN)',NULL,'ID',NULL),
('VR-0161','ETA',NULL,'ID',NULL),
('VR-0162','AGUS BANGKA',NULL,'ID',NULL),
('VR-0163','JOPRIZAL',NULL,'ID',NULL),
('VR-0164','AZKA',NULL,'ID',NULL),
('VR-0165','RASMIN',NULL,'ID',NULL),
('VR-0166','FIRDAUS',NULL,'ID',NULL),
('VR-0167','VIAN JAYA',NULL,'ID',NULL),
('VR-0168','ENCEK 2 BELAWAN',NULL,'ID',NULL),
('VR-0169','KENON KELAPA',NULL,'ID',NULL),
('VR-0170','YUYUN KELAPA',NULL,'ID',NULL),
('VR-0171','JOPRIZAL 2',NULL,'ID',NULL),
('VR-0172','UNER 3',NULL,'ID',NULL),
('VR-0173','KENON PERLIS',NULL,'ID',NULL),
('VR-0174','BIMO',NULL,'ID',NULL),
('VR-0175','BIMO KELAPA',NULL,'ID',NULL),
('VR-0176','PIPIN KELAPA',NULL,'ID',NULL),
('VR-0177','MATTONO',NULL,'ID',NULL),
('VR-0178','MUHTADI',NULL,'ID',NULL),
('VR-0179','BA JP A',NULL,'ID',NULL),
('VR-0180','AMRI',NULL,'ID',NULL),
('VR-0181','AMRI A',NULL,'ID',NULL),
('VR-0182','IPAN KELAPA',NULL,'ID',NULL),
('VR-0183','YUSWAR',NULL,'ID',NULL),
('VR-0184','ANUGERAH',NULL,'ID',NULL),
('VR-0185','AYU AN',NULL,'ID',NULL),
('VR-0186','AYU KR',NULL,'ID',NULL),
('VR-0187','AYU DR',NULL,'ID',NULL),
('VR-0188','AYU NK',NULL,'ID',NULL),
('VR-0189','AYU BB',NULL,'ID',NULL),
('VR-0190','AYU SB',NULL,'ID',NULL),
('VR-0191','AYU DYA',NULL,'ID',NULL),
('VR-0192','AYU KY',NULL,'ID',NULL),
('VR-0193','AYU M',NULL,'ID',NULL),
('VR-0194','AYU 2',NULL,'ID',NULL),
('VR-0195','NUEL',NULL,'ID',NULL),
('VR-0196','VIAN JAYA',NULL,'ID',NULL),
('VR-0197','HARDA',NULL,'ID',NULL),
('VR-0198','VINA',NULL,'ID',NULL),
('VR-0199','NUEL 1',NULL,'ID',NULL),
('VR-0200','NUEL 2',NULL,'ID',NULL),
('VR-0201','NUEL 3',NULL,'ID',NULL),
('VR-0202','NUEL 4',NULL,'ID',NULL),
('VR-0203','NUEL 5',NULL,'ID',NULL),
('VR-0204','ARYA',NULL,'ID',NULL),
('VR-0205','IQBAL',NULL,'ID',NULL),
('VR-0206','ARIADI',NULL,'ID',NULL),
('VR-0207','ALINURDIN 3',NULL,'ID',NULL),
('VR-0208','SAIFUL BAHRI 3',NULL,'ID',NULL),
('VR-0209','SAIFUL BAHRI 4',NULL,'ID',NULL),
('VR-0210','SAIFUL BAHRI 5',NULL,'ID',NULL),
('VR-0211','ARI',NULL,'ID',NULL),
('VR-0212','SONANG 2',NULL,'ID',NULL),
('VR-0213','BURHAN 1',NULL,'ID',NULL),
('VR-0214','BURHAN 2',NULL,'ID',NULL),
('VR-0215','UDIN 1',NULL,'ID',NULL),
('VR-0216','UDIN 2',NULL,'ID',NULL),
('VR-0217','UDIN 3',NULL,'ID',NULL),
('VR-0218','UDIN 4',NULL,'ID',NULL),
('VR-0219','UDIN 5',NULL,'ID',NULL),
('VR-0220','UDIN 6',NULL,'ID',NULL),
('VR-0221','UDIN 7',NULL,'ID',NULL),
('VR-0222','UDIN 8',NULL,'ID',NULL),
('VR-0223','KENZO',NULL,'ID',NULL),
('VR-0224','HARIS 1',NULL,'ID',NULL),
('VR-0225','HARIS 2',NULL,'ID',NULL),
('VR-0226','HARIS 3',NULL,'ID',NULL),
('VR-0227','HARIS 4',NULL,'ID',NULL),
('VR-0228','HARIS 5',NULL,'ID',NULL),
('VR-0229','ROCHMAD',NULL,'ID',NULL),
('VR-0230','BURHAN SUPER',NULL,'ID',NULL),
('VR-0231','NUEL 3 A',NULL,'ID',NULL),
('VR-0232','SANJAYA',NULL,'ID',NULL),
('VR-0233','NACEN KELAPA',NULL,'ID',NULL),
('VR-0234','VIAN JAYA 2',NULL,'ID',NULL),
('VR-0235','NIA',NULL,'ID',NULL),
('VR-0236','BUQORI',NULL,'ID',NULL),
('VR-0237','T.NAMA BATAM',NULL,'ID',NULL),
('VR-0238','RAHMAD KELAPA',NULL,'ID',NULL),
('VR-0239','BA. SLB/HUZ',NULL,'ID',NULL),
('VR-0240','PONIMAN KELAPA',NULL,'ID',NULL),
('VR-0241','NUEL 5 A',NULL,'ID',NULL),
('VR-0242','BURHAN',NULL,'ID',NULL),
('VR-0243','ANJANI 1',NULL,'ID',NULL),
('VR-0244','ANUGERAH 2',NULL,'ID',NULL),
('VR-0245','HUZ/KELAPA',NULL,'ID',NULL),
('VR-0246','AMRI KELAPA',NULL,'ID',NULL),
('VR-0247','AMIR/ANTO',NULL,'ID',NULL),
('VR-0248','ZAINAL',NULL,'ID',NULL),
('VR-0249','AGUS KS',NULL,'ID',NULL),
('VR-0250','AGUS K. CONG',NULL,'ID',NULL),
('VR-0251','BUDIMAN',NULL,'ID',NULL),
('VR-0252','ANISA',NULL,'ID',NULL),
('VR-0253','ASENG JH',NULL,'ID',NULL),
('VR-0254','NACEN',NULL,'ID',NULL),
('VR-0255','MARSIDIT',NULL,'ID',NULL),
('VR-0256','FATIMAH',NULL,'ID',NULL),
('VR-0257','AGUNG',NULL,'ID',NULL),
('VR-0258','FADIL',NULL,'ID',NULL),
('VR-0259','BIO',NULL,'ID',NULL),
('VR-0260','SAMAD',NULL,'ID',NULL),
('VR-0261','NIZAM',NULL,'ID',NULL),
('VR-0262','UMAR',NULL,'ID',NULL),
('VR-0263','RUDI LEDONG',NULL,'ID',NULL),
('VR-0264','HAMDANI',NULL,'ID',NULL),
('VR-0265','NACEN SUPER',NULL,'ID',NULL),
('VR-0266','BAMBANG SUPER',NULL,'ID',NULL),
('VR-0267','BAMBANG COLOSSAL',NULL,'ID',NULL),
('VR-0268','AYU HP',NULL,'ID',NULL),
('VR-0269','H. ANDAN PABRIK',NULL,'ID',NULL),
('VR-0270','T.NAMA SURABAYA',NULL,'ID',NULL),
('VR-0271','T.NAMA SLB SURABAYA',NULL,'ID',NULL),
('VR-0272','T.NAMA SLB KARANG SURABAYA',NULL,'ID',NULL),
('VR-0273','BAGAN JP',NULL,'ID',NULL),
('VR-0274','BA JH',NULL,'ID',NULL),
('VR-0275','BA 2',NULL,'ID',NULL),
('VR-0276','BA 3',NULL,'ID',NULL),
('VR-0277','BA SLB',NULL,'ID',NULL),
('VR-0278','BA 2 SLB',NULL,'ID',NULL),
('VR-0279','BA 3 SLB',NULL,'ID',NULL),
('VR-0280','BA 2 SB',NULL,'ID',NULL),
('VR-0281','BA 3 SB',NULL,'ID',NULL),
('VR-0282','BA SLB SB',NULL,'ID',NULL),
('VR-0283','BA JP SB',NULL,'ID',NULL),
('VR-0284','BA JH SB',NULL,'ID',NULL),
('VR-0285','AYU KK',NULL,'ID',NULL),
('VR-0286','VIAN JAYA 2 KELAPA',NULL,'ID',NULL),
('VR-0287','ANTO SUPER',NULL,'ID',NULL),
('VR-0288','ANTO 2',NULL,'ID',NULL),
('VR-0289','RANO',NULL,'ID',NULL),
('VR-0290','UNER/HUZ',NULL,'ID',NULL),
('VR-0291','T.NAMA JAKARTA',NULL,'ID',NULL),
('VR-0292','BAMBANG 2',NULL,'ID',NULL),
('VR-0293','BA JH /HUZ',NULL,'ID',NULL),
('VR-0294','BA JP /HUZ',NULL,'ID',NULL),
('VR-0295','HAMMID',NULL,'ID',NULL),
('VR-0296','OZAH',NULL,'ID',NULL),
('VR-0297','UNER 2',NULL,'ID',NULL),
('VR-0298','SAMAD BANJAR',NULL,'ID',NULL),
('VR-0299','SP',NULL,'ID',NULL),
('VR-0300','AMIN KELAPA',NULL,'ID',NULL),
('VR-0301','ALVINO',NULL,'ID',NULL),
('VR-0302','ALVINO 1',NULL,'ID',NULL),
('VR-0303','ALVINO 2',NULL,'ID',NULL),
('VR-0304','TONI',NULL,'ID',NULL),
('VR-0305','ROBBI 1',NULL,'ID',NULL),
('VR-0306','ROBBI 2',NULL,'ID',NULL),
('VR-0307','ROBBI',NULL,'ID',NULL),
('VR-0308','HUZ 2',NULL,'ID',NULL),
('VR-0309','ENCEK A BELAWAN',NULL,'ID',NULL),
('VR-0310','NOR SUPER',NULL,'ID',NULL),
('VR-0311','BIO SUPER',NULL,'ID',NULL),
('VR-0312','FIRA 2',NULL,'ID',NULL),
('VR-0313','BA JH A',NULL,'ID',NULL),
('VR-0314','ENCEK/B.ASAHAN',NULL,'ID',NULL),
('VR-0315','UNER/B.ASAHAN',NULL,'ID',NULL),
('VR-0316','VIAN JAYA UUL',NULL,'ID',NULL),
('VR-0317','ENCEK 3/B.ASAHAN',NULL,'ID',NULL),
('VR-0318','ATAN',NULL,'ID',NULL),
('VR-0319','AYU B',NULL,'ID',NULL),
('VR-0320','AYU SM',NULL,'ID',NULL),
('VR-0321','VIAN JAYA BESUKI',NULL,'ID',NULL),
('VR-0322','SAFA',NULL,'ID',NULL),
('VR-0323','ENCEK/HUZ',NULL,'ID',NULL),
('VR-0324','UNER 4',NULL,'ID',NULL),
('VR-0325','ENCEK 2 B/W',NULL,'ID',NULL),
('VR-0326','ASIAT',NULL,'ID',NULL),
('VR-0327','HUSIN',NULL,'ID',NULL),
('VR-0328','BOC',NULL,'ID',NULL),
('VR-0329','CATE',NULL,'ID',NULL),
('VR-0330','ANTO DIAN',NULL,'ID',NULL),
('VR-0331','ANTO ADIT',NULL,'ID',NULL),
('VR-0332','ANTO TAMA',NULL,'ID',NULL),
('VR-0333','SIJUL NACEN (MALAM)',NULL,'ID',NULL),
('VR-0334','KENON KELAPA (SORE)',NULL,'ID',NULL),
('VR-0335','KENON PERLIS (SORE)',NULL,'ID',NULL),
('VR-0336','DEWI BAHARI 1',NULL,'ID',NULL),
('VR-0337','DEWI BAHARI 2',NULL,'ID',NULL),
('VR-0338','BA / HERMAN',NULL,'ID',NULL),
('VR-0339','BA A / HERMAN',NULL,'ID',NULL),
('VR-0340','NOR 1',NULL,'ID',NULL),
('VR-0341','BA JH (KO)',NULL,'ID',NULL),
('VR-0342','WAHYUDI KELAPA',NULL,'ID',NULL),
('VR-0343','UDIN KELAPA',NULL,'ID',NULL),
('VR-0344','BA JP / UNER',NULL,'ID',NULL),
('VR-0345','ENCEK / BAMBANG',NULL,'ID',NULL),
('VR-0346','ENCEK / JOPRIZAL',NULL,'ID',NULL),
('VR-0347','IWAN SORKAM A / W',NULL,'ID',NULL),
('VR-0348','IWAN SORKAM / W',NULL,'ID',NULL),
('VR-0349','YUSRI',NULL,'ID',NULL),
('VR-0350','SANDI',NULL,'ID',NULL),
('VR-0351','RUDI (SAFARI)',NULL,'ID',NULL),
('VR-0352','RUDI /BB',NULL,'ID',NULL),
('VR-0353','KAHAR',NULL,'ID',NULL),
('VR-0354','MIAT',NULL,'ID',NULL),
('VR-0355','SARWANTO',NULL,'ID',NULL),
('VR-0356','SIJUL NACEN A (MALAM)',NULL,'ID',NULL),
('VR-0372','BA JH (KO) / HUZ',NULL,'ID',NULL),
('VR-0373','INDRA KELAPA 201902',NULL,'ID',NULL),
('VR-0374','BEBING',NULL,'ID',NULL);

/*Table structure for table `reff_table` */

DROP TABLE IF EXISTS `reff_table`;

CREATE TABLE `reff_table` (
  `REFF_TYPE` varchar(255) NOT NULL,
  `REFF_CODE` varchar(255) NOT NULL,
  `REFF_DESCRIPTION` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`REFF_TYPE`,`REFF_CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `reff_table` */

insert  into `reff_table`(`REFF_TYPE`,`REFF_CODE`,`REFF_DESCRIPTION`) values 
('DOK_PABEAN','23','BC 2.3'),
('DOK_PABEAN','25','BC 2.5'),
('DOK_PABEAN','261','BC 2.6.1'),
('DOK_PABEAN','262','BC 2.6.2'),
('DOK_PABEAN','27','BC 2.7'),
('DOK_PABEAN','30','BC 3.0'),
('DOK_PABEAN','40','BC 4.0'),
('DOK_PABEAN','41','BC 4.1'),
('USER_STATUS','0','NON ACTIVE'),
('USER_STATUS','1','ACTIVE');

/*Table structure for table `t_session` */

DROP TABLE IF EXISTS `t_session`;

CREATE TABLE `t_session` (
  `ID` varchar(40) COLLATE latin1_general_ci NOT NULL,
  `IP_ADDRESS` varchar(45) COLLATE latin1_general_ci NOT NULL,
  `TIMESTAMP` int(10) unsigned NOT NULL DEFAULT '0',
  `DATA` blob NOT NULL,
  KEY `ci_sessions_timestamp` (`TIMESTAMP`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

/*Data for the table `t_session` */

insert  into `t_session`(`ID`,`IP_ADDRESS`,`TIMESTAMP`,`DATA`) values 
('qf6cecfqr97gor3i0r6d1csvh39vou4a','::1',1553564063,'__ci_last_regenerate|i:1553564063;'),
('qnela2rpl0cmprnf8p18b032otf99r9q','::1',1553564075,'__ci_last_regenerate|i:1553564063;'),
('3cc1macv2fvfb1v1p0u77o5mog6cg9b6','::1',1553689352,'__ci_last_regenerate|i:1553689352;LOGGED|b:1;IP|s:3:\"::1\";ID|s:1:\"1\";USERNAME|s:13:\"administrator\";NAMA|s:22:\"Administrator Aplikasi\";ALAMAT|s:7:\"Jakarta\";TELEPON|s:12:\"087756789009\";EMAIL|s:23:\"administrator@gmail.com\";STATUS|s:1:\"1\";USER_ROLE|s:1:\"2\";URAIAN_ROLE|s:5:\"Admin\";PASSWORD|s:3:\"123\";'),
('a4vuqohgfke4b5qs8ea55ar8cmln78ul','::1',1553690006,'__ci_last_regenerate|i:1553690006;LOGGED|b:1;IP|s:3:\"::1\";ID|s:1:\"1\";USERNAME|s:13:\"administrator\";NAMA|s:22:\"Administrator Aplikasi\";ALAMAT|s:7:\"Jakarta\";TELEPON|s:12:\"087756789009\";EMAIL|s:23:\"administrator@gmail.com\";STATUS|s:1:\"1\";USER_ROLE|s:1:\"2\";URAIAN_ROLE|s:5:\"Admin\";PASSWORD|s:3:\"123\";'),
('ju33hrra6r8gfjj50ivn0hf2002mq1aj','::1',1553690353,'__ci_last_regenerate|i:1553690353;LOGGED|b:1;IP|s:3:\"::1\";ID|s:1:\"1\";USERNAME|s:13:\"administrator\";NAMA|s:22:\"Administrator Aplikasi\";ALAMAT|s:7:\"Jakarta\";TELEPON|s:12:\"087756789009\";EMAIL|s:23:\"administrator@gmail.com\";STATUS|s:1:\"1\";USER_ROLE|s:1:\"2\";URAIAN_ROLE|s:5:\"Admin\";PASSWORD|s:3:\"123\";'),
('83r51a93o8janrk4s2en82q7442g7ct6','::1',1553690699,'__ci_last_regenerate|i:1553690699;LOGGED|b:1;IP|s:3:\"::1\";ID|s:1:\"1\";USERNAME|s:13:\"administrator\";NAMA|s:22:\"Administrator Aplikasi\";ALAMAT|s:7:\"Jakarta\";TELEPON|s:12:\"087756789009\";EMAIL|s:23:\"administrator@gmail.com\";STATUS|s:1:\"1\";USER_ROLE|s:1:\"2\";URAIAN_ROLE|s:5:\"Admin\";PASSWORD|s:3:\"123\";'),
('hi12kncfk5n5bcjrp8v6k9b5ellle76i','::1',1553691471,'__ci_last_regenerate|i:1553691471;LOGGED|b:1;IP|s:3:\"::1\";ID|s:1:\"1\";USERNAME|s:13:\"administrator\";NAMA|s:22:\"Administrator Aplikasi\";ALAMAT|s:7:\"Jakarta\";TELEPON|s:12:\"087756789009\";EMAIL|s:23:\"administrator@gmail.com\";STATUS|s:1:\"1\";USER_ROLE|s:1:\"2\";URAIAN_ROLE|s:5:\"Admin\";PASSWORD|s:3:\"123\";'),
('k11emve9depcgr8nke6m4c34k26eauog','::1',1553691948,'__ci_last_regenerate|i:1553691948;LOGGED|b:1;IP|s:3:\"::1\";ID|s:1:\"1\";USERNAME|s:13:\"administrator\";NAMA|s:22:\"Administrator Aplikasi\";ALAMAT|s:7:\"Jakarta\";TELEPON|s:12:\"087756789009\";EMAIL|s:23:\"administrator@gmail.com\";STATUS|s:1:\"1\";USER_ROLE|s:1:\"2\";URAIAN_ROLE|s:5:\"Admin\";PASSWORD|s:3:\"123\";'),
('k2qqbgum3qdajmsggjonecjhe16p1fg2','::1',1553693328,'__ci_last_regenerate|i:1553693328;LOGGED|b:1;IP|s:3:\"::1\";ID|s:1:\"1\";USERNAME|s:13:\"administrator\";NAMA|s:22:\"Administrator Aplikasi\";ALAMAT|s:7:\"Jakarta\";TELEPON|s:12:\"087756789009\";EMAIL|s:23:\"administrator@gmail.com\";STATUS|s:1:\"1\";USER_ROLE|s:1:\"2\";URAIAN_ROLE|s:5:\"Admin\";PASSWORD|s:3:\"123\";'),
('kr9lbtbi4b9ac1t6p3ugqe5pi5vtvkq2','::1',1553694544,'__ci_last_regenerate|i:1553694544;LOGGED|b:1;IP|s:3:\"::1\";ID|s:1:\"1\";USERNAME|s:13:\"administrator\";NAMA|s:22:\"Administrator Aplikasi\";ALAMAT|s:7:\"Jakarta\";TELEPON|s:12:\"087756789009\";EMAIL|s:23:\"administrator@gmail.com\";STATUS|s:1:\"1\";USER_ROLE|s:1:\"2\";URAIAN_ROLE|s:5:\"Admin\";PASSWORD|s:3:\"123\";'),
('0c8njs586n81bckkjljhinnjmd5dgd8g','::1',1553695809,'__ci_last_regenerate|i:1553695809;LOGGED|b:1;IP|s:3:\"::1\";ID|s:1:\"1\";USERNAME|s:13:\"administrator\";NAMA|s:22:\"Administrator Aplikasi\";ALAMAT|s:7:\"Jakarta\";TELEPON|s:12:\"087756789009\";EMAIL|s:23:\"administrator@gmail.com\";STATUS|s:1:\"1\";USER_ROLE|s:1:\"2\";URAIAN_ROLE|s:5:\"Admin\";PASSWORD|s:3:\"123\";'),
('q51lt3moe45rgtnanqvejf34ujg9fdqd','::1',1553695809,'__ci_last_regenerate|i:1553695809;LOGGED|b:1;IP|s:3:\"::1\";ID|s:1:\"1\";USERNAME|s:13:\"administrator\";NAMA|s:22:\"Administrator Aplikasi\";ALAMAT|s:7:\"Jakarta\";TELEPON|s:12:\"087756789009\";EMAIL|s:23:\"administrator@gmail.com\";STATUS|s:1:\"1\";USER_ROLE|s:1:\"2\";URAIAN_ROLE|s:5:\"Admin\";PASSWORD|s:3:\"123\";'),
('5p3dpniooiq0jesrf2fb8og66ja5giig','::1',1553826777,'__ci_last_regenerate|i:1553826777;LOGGED|b:1;IP|s:3:\"::1\";ID|s:1:\"1\";USERNAME|s:13:\"administrator\";NAMA|s:22:\"Administrator Aplikasi\";ALAMAT|s:7:\"Jakarta\";TELEPON|s:12:\"087756789009\";EMAIL|s:23:\"administrator@gmail.com\";STATUS|s:1:\"1\";USER_ROLE|s:1:\"2\";URAIAN_ROLE|s:5:\"Admin\";PASSWORD|s:3:\"123\";'),
('cpqgl3k4ldgn3m1gcqaute0po6cbknhr','::1',1553826777,'__ci_last_regenerate|i:1553826777;LOGGED|b:1;IP|s:3:\"::1\";ID|s:1:\"1\";USERNAME|s:13:\"administrator\";NAMA|s:22:\"Administrator Aplikasi\";ALAMAT|s:7:\"Jakarta\";TELEPON|s:12:\"087756789009\";EMAIL|s:23:\"administrator@gmail.com\";STATUS|s:1:\"1\";USER_ROLE|s:1:\"2\";URAIAN_ROLE|s:5:\"Admin\";PASSWORD|s:3:\"123\";'),
('8ot8uf2nh0r8gouvv09av76ss3596vb4','::1',1553842254,'__ci_last_regenerate|i:1553842254;'),
('lektg1bmf2d4rovvc0mvp4m334na1fet','::1',1554532936,'__ci_last_regenerate|i:1554532721;LOGGED|b:1;IP|s:3:\"::1\";ID|s:1:\"1\";USERNAME|s:13:\"administrator\";NAMA|s:22:\"Administrator Aplikasi\";ALAMAT|s:7:\"Jakarta\";TELEPON|s:12:\"087756789009\";EMAIL|s:23:\"administrator@gmail.com\";STATUS|s:1:\"1\";USER_ROLE|s:1:\"2\";URAIAN_ROLE|s:5:\"Admin\";PASSWORD|s:3:\"123\";');

/*Table structure for table `tm_adjustment` */

DROP TABLE IF EXISTS `tm_adjustment`;

CREATE TABLE `tm_adjustment` (
  `ID` bigint(19) NOT NULL AUTO_INCREMENT,
  `TGL_ADJUSTMENT` datetime DEFAULT NULL,
  `KD_BRG` varchar(255) DEFAULT NULL,
  `JNS_BRG` char(2) DEFAULT NULL,
  `JML_ADJUSTMENT` decimal(38,4) DEFAULT NULL,
  `CREATED_TIME` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`),
  KEY `reff_jns_brg_4` (`JNS_BRG`),
  CONSTRAINT `reff_jns_brg_4` FOREIGN KEY (`JNS_BRG`) REFERENCES `reff_jns_barang` (`KD_JNS`)
) ENGINE=InnoDB AUTO_INCREMENT=336 DEFAULT CHARSET=utf8;

/*Data for the table `tm_adjustment` */

/*Table structure for table `tm_barang` */

DROP TABLE IF EXISTS `tm_barang`;

CREATE TABLE `tm_barang` (
  `ID` bigint(19) NOT NULL AUTO_INCREMENT,
  `KD_BRG` varchar(255) DEFAULT NULL,
  `JNS_BRG` char(2) DEFAULT NULL,
  `NM_BRG` varchar(255) DEFAULT NULL,
  `KD_SATUAN` char(3) DEFAULT NULL,
  `KD_HS` char(10) DEFAULT NULL,
  `STOCK_AKHIR` decimal(38,4) DEFAULT NULL,
  `CREATED_TIME` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`),
  KEY `reff_jns_brng_2` (`JNS_BRG`),
  KEY `reff_satuan_1` (`KD_SATUAN`),
  CONSTRAINT `reff_jns_brng_2` FOREIGN KEY (`JNS_BRG`) REFERENCES `reff_jns_barang` (`KD_JNS`),
  CONSTRAINT `reff_satuan_1` FOREIGN KEY (`KD_SATUAN`) REFERENCES `reff_satuan` (`KD_SATUAN`)
) ENGINE=InnoDB AUTO_INCREMENT=1236 DEFAULT CHARSET=utf8;

/*Data for the table `tm_barang` */

insert  into `tm_barang`(`ID`,`KD_BRG`,`JNS_BRG`,`NM_BRG`,`KD_SATUAN`,`KD_HS`,`STOCK_AKHIR`,`CREATED_TIME`) values 
(25,'BFD-0000-01','1','KUKUS BACKFIN FRESH','Kg','',NULL,'2019-02-28 18:13:56'),
(26,'BFD-0000-02','1','KUKUS BACKFIN REJECT','Kg','',NULL,'2019-02-28 18:13:56'),
(27,'CMD-0000-01','1','KUKUS CLAW MEAT FRESH','Kg','',NULL,'2019-02-28 18:13:56'),
(28,'CMD-0000-02','1','KUKUS CLAW MEAT REJECT','Kg','',NULL,'2019-02-28 18:13:56'),
(29,'COD-0000-01','1','KUKUS COLOSSAL FRESH','Kg','',NULL,'2019-02-28 18:13:56'),
(30,'COD-0000-02','1','KUKUS COLOSSAL REJECT','Kg','',NULL,'2019-02-28 18:13:56'),
(31,'FLD-0000-01','1','KUKUS FLOWER FRESH','Kg','',NULL,'2019-02-28 18:13:56'),
(32,'FLD-0000-02','1','KUKUS FLOWER REJECT','Kg','',NULL,'2019-02-28 18:13:56'),
(33,'JBD-0000-01','1','KUKUS JUMBO LUMP FRESH','Kg','',NULL,'2019-02-28 18:13:56'),
(34,'JBD-0000-02','1','KUKUS JUMBO LUMP REJECT','Kg','',NULL,'2019-02-28 18:13:56'),
(35,'JUD-0000-01','1','KUKUS JUMBO UNDER FRESH','Kg','',NULL,'2019-02-28 18:13:57'),
(36,'JUD-0000-02','1','KUKUS JUMBO UNDER REJECT','Kg','',NULL,'2019-02-28 18:13:57'),
(37,'LMD-0000-01','1','KUKUS LEG MEAT FRESH','Kg','',NULL,'2019-02-28 18:13:57'),
(38,'LMD-0000-02','1','KUKUS LEG MEAT REJECT','Kg','',NULL,'2019-02-28 18:13:57'),
(39,'SPD-0000-01','1','KUKUS SPECIAL FRESH','Kg','',NULL,'2019-02-28 18:13:57'),
(40,'SPD-0000-02','1','KUKUS SPECIAL REJECT','Kg','',NULL,'2019-02-28 18:13:57'),
(41,'ENG-00001','12','SOLAR','LTR','2710.12.92',NULL,'2019-02-28 18:13:57'),
(42,'ENG-00002','9','BESTchem - 8001','LTR','',NULL,'2019-02-28 18:13:57'),
(43,'ENG-00003','9','BESTchem - 8101','LTR','',NULL,'2019-02-28 18:13:57'),
(44,'ENG-00004','9','BESTchem - 8201','LTR','',NULL,'2019-02-28 18:13:57'),
(45,'ENG-00005','9','BESTchem - 8303','LTR','',NULL,'2019-02-28 18:13:57'),
(49,'ENG-00010','9','BESTchem - 8400','Kg','',NULL,'2019-02-28 18:13:57'),
(54,'ENG-00015','9','BESTchem-8800','Kg','',NULL,'2019-02-28 18:13:57'),
(61,'BPE-00001','2','SAPP','Kg','',NULL,'2019-02-28 18:13:58'),
(110,'ENG-00009','9','BESTchem - 8400','LTR','',NULL,'2019-02-28 18:14:01'),
(152,'KIM-00001','9','MINYAK GREASE','LTR','',NULL,'2019-02-28 18:14:03'),
(153,'KIM-00002','9','CHLORINE','LTR','',NULL,'2019-02-28 18:14:03'),
(154,'KIM-00003','9','ECOLAB MURNI','LTR','',NULL,'2019-02-28 18:14:03'),
(155,'KIM-00004','9','KAPORIT BUBUK','Kg','',NULL,'2019-02-28 18:14:03'),
(156,'KIM-00005','2','T40 LIQUID','LTR','',NULL,'2019-02-28 18:14:03'),
(157,'KIM-00006','2','PH7-SPAIN','LTR','',NULL,'2019-02-28 18:14:03'),
(158,'KIM-00007','2','CU','Kg','',NULL,'2019-02-28 18:14:03'),
(159,'KIM-00008','2','CP','Kg','',NULL,'2019-02-28 18:14:03'),
(546,'MCN-00100','8','MC NO. 109','MC','4819.10',NULL,'2019-02-28 18:14:19'),
(547,'MCN-00101','8','MC NO. 110','MC','4819.10',NULL,'2019-02-28 18:14:19'),
(548,'MCN-00102','8','MC NO. 77A','MC','4819.10',NULL,'2019-02-28 18:14:19'),
(549,'MCN-00103','8','MC NO. 78A','MC','4819.10',NULL,'2019-02-28 18:14:19'),
(550,'MCN-00104','8','MC NO. 79A','MC','4819.10',NULL,'2019-02-28 18:14:19'),
(600,'MCU-00026','8','MC CUP 16 OZ NAUTILUS NEW LUMP410','MC','4819.10',NULL,'2019-02-28 18:14:22'),
(609,'PLS-00001','8','PLASTIK 100X120 ( PLASTIK 25 KG utk Polifoam Bahan )','Kg','3923.21.91',NULL,'2019-02-28 18:14:22'),
(610,'PLS-00002','8','PLASTIK 120 X 006 /P. MEJA/TANGKI','Kg','3923.21.91',NULL,'2019-02-28 18:14:23'),
(611,'PLS-00003','8','PLASTIK 12X17 ( PLASTIK SOFT SHELL 60/90)','Kg','3923.21.91',NULL,'2019-02-28 18:14:23'),
(612,'PLS-00004','8','PLASTIK 13X21 ( PLASTIK SOFT SHELL 90/120)','Kg','3923.21.91',NULL,'2019-02-28 18:14:23'),
(613,'PLS-00005','8','PLASTIK 15 X 13 .5','Kg','3923.21.91',NULL,'2019-02-28 18:14:23'),
(614,'PLS-00006','8','PLASTIK 15 X 27 NEW  (BIRU)','Kg','3923.21.91',NULL,'2019-02-28 18:14:23'),
(615,'PLS-00007','8','PLASTIK 15 X 42 NEW ( BIRU )','Kg','3923.21.91',NULL,'2019-02-28 18:14:23'),
(616,'PLS-00008','8','PLASTIK 15X21 ( PLASTIK SOFT SHELL 120/150 / 150 UP','Kg','3923.21.91',NULL,'2019-02-28 18:14:23'),
(617,'PLS-00009','8','PLASTIK 15X27 ( PLASTIK UDANG KIPAS 1 KG ) PUTIH','Kg','3923.21.91',NULL,'2019-02-28 18:14:23'),
(618,'PLS-00010','8','PLASTIK PE 17.5 x 35 POI ( PLASTIK KIPANG 80, 54 )','Kg','3923.21.91',NULL,'2019-02-28 18:14:23'),
(619,'PLS-00011','8','PLASTIK PE 17.5 x 34 POI','Kg','3923.21.91',NULL,'2019-02-28 18:14:23'),
(620,'PLS-00012','8','PLASTIK 17x25 POI ( PLASTIK FLOWER / SOKART )','Kg','3923.21.91',NULL,'2019-02-28 18:14:23'),
(621,'PLS-00013','8','PLASTIK 20 X 30 X 0,12','Kg','3923.21.91',NULL,'2019-02-28 18:14:23'),
(622,'PLS-00014','8','PLASTIK 22 X 20','Kg','3923.21.91',NULL,'2019-02-28 18:14:23'),
(623,'PLS-00015','8','PLASTIK 22X35 ( PLASTIK 2 KG)','Kg','3923.21.91',NULL,'2019-02-28 18:14:23'),
(624,'PLS-00016','8','PLASTIK 25 X 45 ( PLASTIK CUMI BLOK 2 KG )','Kg','3923.21.91',NULL,'2019-02-28 18:14:23'),
(625,'PLS-00017','8','PLASTIK 25 X 55  ( PLASTIK CUMI KALENG 5 KG )','Kg','3923.21.91',NULL,'2019-02-28 18:14:23'),
(626,'PLS-00018','8','PLASTIK 25X40 ( PLASTIK 3 KG )','Kg','3923.21.91',NULL,'2019-02-28 18:14:23'),
(627,'PLS-00019','8','PLASTIK 30X45 ( PLASTIK 4 KG )','Kg','3923.21.91',NULL,'2019-02-28 18:14:23'),
(628,'PLS-00020','8','PLASTIK 35X55','Kg','3923.21.91',NULL,'2019-02-28 18:14:23'),
(629,'PLS-00021','8','PLASTIK 48/78 X 60 X 0,6 ( PLASTIK 10 KG   )','Kg','3923.21.91',NULL,'2019-02-28 18:14:23'),
(630,'PLS-00022','8','PLASTIK FROZEN SQUID 6 W ( 375mm x 270mm)','Kg','3923.21.91',NULL,'2019-02-28 18:14:23'),
(631,'PLS-00023','8','PLASTIK HITAM PE 80 x 100 x 07','Kg','3923.21.91',NULL,'2019-02-28 18:14:23'),
(632,'PLS-00024','8','PLASTIK KLIP 10 x 7','Kg','3923.21.91',NULL,'2019-02-28 18:14:23'),
(633,'PLS-00025','8','PLASTIK KODE 7X7','Kg','3923.21.91',NULL,'2019-02-28 18:14:23'),
(634,'PLS-00026','8','PLASTIK PE 41 x 60 ( PLASTIK PEMBUNGKUS LUAR KARTON )','Kg','3923.21.91',NULL,'2019-02-28 18:14:23'),
(635,'PLS-00027','8','PLASTIK PE 41 X 62 ( PLASTIK PEMBUNGKUS LUAR KARTON )','Kg','3923.21.91',NULL,'2019-02-28 18:14:23'),
(636,'PLS-00028','8','PLASTIK PE APRON 120X0,15','Kg','3923.21.91',NULL,'2019-02-28 18:14:23'),
(637,'PLS-00029','8','PLASTIK SAMPEL BIRU FIBER','Kg','3923.21.91',NULL,'2019-02-28 18:14:24'),
(638,'PLS-00030','8','PLASTIK FIBER PUTIH','Kg','3923.21.91',NULL,'2019-02-28 18:14:24'),
(639,'PLS-00031','8','PLASTIK SAPP 7X13','Kg','3923.21.91',NULL,'2019-02-28 18:14:24'),
(640,'PLS-00032','8','PLASTIK 20X0,35X35','Kg','3923.21.91',NULL,'2019-02-28 18:14:24'),
(641,'PLS-00033','8','PLASTIK 40X60','Kg','3923.21.91',NULL,'2019-02-28 18:14:24'),
(642,'PLS-00034','8','PLASTIK 7X13','Kg','3923.21.91',NULL,'2019-02-28 18:14:24'),
(643,'PLS-00035','8','PLASTIK CAMPUR2 REJECT','Kg','3923.21.91',NULL,'2019-02-28 18:14:24'),
(644,'PLS-00036','8','PLASTIK STUFFED CRAB','Kg','3923.21.91',NULL,'2019-02-28 18:14:24'),
(645,'PLS-00037','8','PLASTIK STUFFED CRAB REJECT','Kg','3923.21.91',NULL,'2019-02-28 18:14:24'),
(646,'PLS-00038','8','PLASTIK POI 18 x 28','Kg','3923.21.91',NULL,'2019-02-28 18:14:24'),
(647,'PLV-00001','8','PLASTIK VACUM 2 KG ( UK : 23,5 CM X 32 CM )','Kg','3923.21.91',NULL,'2019-02-28 18:14:24'),
(648,'PLV-00002','8','PLASTIK VACUM HOKBAN ( 1 KG ) ( 520 mm x 190 mm H2 )','Kg','3923.21.91',NULL,'2019-02-28 18:14:24'),
(649,'PLV-00003','8','PLASTIK VACUM PASSION FOR FISH 16 OZ ( 1/2 KG) ( 17 cm  X 22 cm V3 )','Kg','3923.21.91',NULL,'2019-02-28 18:14:24'),
(660,'BFF-0101-01','6','FINISHED GOODS BACKFIN CAN 16 OZ BOSS USA','MC','0306.33.00',NULL,'2019-02-28 18:14:24'),
(661,'BFF-0101-02','6','FINISHED GOODS BACKFIN CAN 16 OZ BOSS HONGKONG','MC','0306.33.00',NULL,'2019-02-28 18:14:24'),
(662,'BFF-0101-03','6','FINISHED GOODS BACKFIN CAN 16 OZ AQUA STAR USA','MC','0306.33.00',NULL,'2019-02-28 18:14:25'),
(663,'BFF-0101-04','6','FINISHED GOODS BACKFIN CAN 16 OZ AQUA STAR CANADA','MC','0306.33.00',NULL,'2019-02-28 18:14:25'),
(664,'BFF-0101-05','6','FINISHED GOODS BACKFIN CAN 16 OZ HIDDEN BAY','MC','0306.33.00',NULL,'2019-02-28 18:14:25'),
(665,'BFF-0101-06','6','FINISHED GOODS BACKFIN CAN 16 OZ PIERPORT','MC','0306.33.00',NULL,'2019-02-28 18:14:25'),
(666,'BFF-0101-07','6','FINISHED GOODS BACKFIN CAN 16 OZ CHICKEN OF THE SEA','MC','0306.33.00',NULL,'2019-02-28 18:14:25'),
(667,'BFF-0101-08','6','FINISHED GOODS BACKFIN CAN 16 OZ WINDA FOOD','MC','0306.33.00',NULL,'2019-02-28 18:14:25'),
(668,'BFF-0101-15','6','FINISHED GOODS BACKFIN CAN 16 OZ BLUE CREST','MC','0306.33.00',NULL,'2019-02-28 18:14:25'),
(669,'BFF-0202-01','6','FINISHED GOODS BACKFIN CUP 8 OZ BOSS USA','MC','0306.33.00',NULL,'2019-02-28 18:14:25'),
(670,'BFF-0202-03','6','FINISHED GOODS BACKFIN CUP 8 OZ AQUA STAR USA','MC','0306.33.00',NULL,'2019-02-28 18:14:25'),
(671,'BFF-0202-04','6','FINISHED GOODS BACKFIN CUP 8 OZ AQUA STAR CANADA','MC','0306.33.00',NULL,'2019-02-28 18:14:25'),
(672,'BFF-0301-10','6','FINISHED GOODS BACKFIN POUCH 16 OZ PASSION FOR FISH','MC','0306.33.00',NULL,'2019-02-28 18:14:25'),
(673,'BFF-0304-07','6','FINISHED GOODS BACKFIN POUCH 2 KG CHICKEN OF THE SEA','MC','0306.33.00',NULL,'2019-02-28 18:14:25'),
(674,'CLF-0101-01','6','FINISHED GOODS CLAW CAN 16 OZ BOSS USA','MC','0306.33.00',NULL,'2019-02-28 18:14:25'),
(675,'CLF-0101-02','6','FINISHED GOODS CLAW CAN 16 OZ BOSS HONGKONG','MC','0306.33.00',NULL,'2019-02-28 18:14:25'),
(676,'CLF-0101-03','6','FINISHED GOODS CLAW CAN 16 OZ AQUA STAR USA','MC','0306.33.00',NULL,'2019-02-28 18:14:25'),
(677,'CLF-0101-04','6','FINISHED GOODS CLAW CAN 16 OZ AQUA STAR CANADA','MC','0306.33.00',NULL,'2019-02-28 18:14:25'),
(678,'CLF-0101-05','6','FINISHED GOODS CLAW CAN 16 OZ HIDDEN BAY','MC','0306.33.00',NULL,'2019-02-28 18:14:25'),
(679,'CLF-0101-06','6','FINISHED GOODS CLAW CAN 16 OZ PIERPORT','MC','0306.33.00',NULL,'2019-02-28 18:14:25'),
(680,'CLF-0101-07','6','FINISHED GOODS CLAW CAN 16 OZ CHICKEN OF THE SEA','MC','0306.33.00',NULL,'2019-02-28 18:14:25'),
(681,'CLF-0101-08','6','FINISHED GOODS CLAW CAN 16 OZ WINDA FOOD','MC','0306.33.00',NULL,'2019-02-28 18:14:25'),
(682,'CLF-0101-09','6','FINISHED GOODS CLAW CAN 16 OZ NAUTILUS','MC','0306.33.00',NULL,'2019-02-28 18:14:25'),
(683,'CLF-0101-13','6','FINISHED GOODS CLAW CAN 16 OZ BYRD','MC','0306.33.00',NULL,'2019-02-28 18:14:25'),
(684,'CLF-0101-14','6','FINISHED GOODS CLAW CAN 16 OZ ROYAL BANQUET','MC','0306.33.00',NULL,'2019-02-28 18:14:25'),
(685,'CLF-0101-15','6','FINISHED GOODS CLAW CAN 16 OZ BLUE CREST','MC','0306.33.00',NULL,'2019-02-28 18:14:25'),
(686,'CLF-0201-09','6','FINISHED GOODS CLAW CUP 16 OZ NAUTILUS','MC','0306.33.00',NULL,'2019-02-28 18:14:25'),
(687,'CLF-0202-01','6','FINISHED GOODS CLAW CUP 8 OZ BOSS USA','MC','0306.33.00',NULL,'2019-02-28 18:14:26'),
(688,'CLF-0202-03','6','FINISHED GOODS CLAW CUP 8 OZ AQUA STAR USA','MC','0306.33.00',NULL,'2019-02-28 18:14:26'),
(689,'CLF-0202-04','6','FINISHED GOODS CLAW CUP 8 OZ AQUA STAR CANADA','MC','0306.33.00',NULL,'2019-02-28 18:14:26'),
(690,'CLF-0202-16','6','FINISHED GOODS CLAW CUP 8 OZ PACIFIC WEST','MC','0306.33.00',NULL,'2019-02-28 18:14:26'),
(691,'CLF-0301-10','6','FINISHED GOODS CLAW POUCH 16 OZ PASSION FOR FISH','MC','0306.33.00',NULL,'2019-02-28 18:14:26'),
(692,'CLF-0303-12','6','FINISHED GOODS CLAW POUCH 1 KG HOKBEN','MC','0306.33.00',NULL,'2019-02-28 18:14:26'),
(693,'CLF-0304-07','6','FINISHED GOODS CLAW POUCH 2 KG CHICKEN OF THE SEA','MC','0306.33.00',NULL,'2019-02-28 18:14:26'),
(694,'CLF-0305-11','6','FINISHED GOODS CLAW POUCH 500 GR UNITED FISHERIES','MC','0306.33.00',NULL,'2019-02-28 18:14:26'),
(695,'COF-0101-01','6','FINISHED GOODS COLOSSAL CAN 16 OZ BOSS USA','MC','0306.33.00',NULL,'2019-02-28 18:14:26'),
(696,'COF-0101-02','6','FINISHED GOODS COLOSSAL CAN 16 OZ BOSS HONGKONG','MC','0306.33.00',NULL,'2019-02-28 18:14:26'),
(697,'COF-0101-03','6','FINISHED GOODS COLOSSAL CAN 16 OZ AQUA STAR USA','MC','0306.33.00',NULL,'2019-02-28 18:14:26'),
(698,'COF-0101-04','6','FINISHED GOODS COLOSSAL CAN 16 OZ AQUA STAR CANADA','MC','0306.33.00',NULL,'2019-02-28 18:14:26'),
(699,'COF-0101-05','6','FINISHED GOODS COLOSSAL CAN 16 OZ HIDDEN BAY','MC','0306.33.00',NULL,'2019-02-28 18:14:26'),
(700,'COF-0101-06','6','FINISHED GOODS COLOSSAL CAN 16 OZ PIERPORT','MC','0306.33.00',NULL,'2019-02-28 18:14:26'),
(701,'COF-0101-07','6','FINISHED GOODS COLOSSAL CAN 16 OZ CHICKEN OF THE SEA','MC','0306.33.00',NULL,'2019-02-28 18:14:26'),
(702,'COF-0101-08','6','FINISHED GOODS COLOSSAL CAN 16 OZ WINDA FOOD','MC','0306.33.00',NULL,'2019-02-28 18:14:26'),
(703,'COF-0101-09','6','FINISHED GOODS COLOSSAL CAN 16 OZ NAUTILUS','MC','0306.33.00',NULL,'2019-02-28 18:14:26'),
(704,'COF-0101-13','6','FINISHED GOODS COLOSSAL CAN 16 OZ BYRD','MC','0306.33.00',NULL,'2019-02-28 18:14:26'),
(705,'COF-0101-15','6','FINISHED GOODS COLOSSAL CAN 16 OZ BLUE CREST','MC','0306.33.00',NULL,'2019-02-28 18:14:26'),
(706,'COF-0202-01','6','FINISHED GOODS COLOSSAL CUP 8 OZ BOSS USA','MC','0306.33.00',NULL,'2019-02-28 18:14:27'),
(707,'COF-0202-03','6','FINISHED GOODS COLOSSAL CUP 8 OZ AQUA STAR USA','MC','0306.33.00',NULL,'2019-02-28 18:14:27'),
(708,'COF-0202-04','6','FINISHED GOODS COLOSSAL CUP 8 OZ AQUA STAR CANADA','MC','0306.33.00',NULL,'2019-02-28 18:14:27'),
(709,'COF-0304-07','6','FINISHED GOODS COLOSSAL POUCH 2 KG CHICKEN OF THE SEA','MC','0306.33.00',NULL,'2019-02-28 18:14:27'),
(710,'EXF-0201-09','6','FINISHED GOODS EXTRA + CUP 16 OZ NAUTILUS','MC','1605.10.10',NULL,'2019-02-28 18:14:27'),
(711,'JBF-0101-01','6','FINISHED GOODS JUMBO LUMP CAN 16 OZ BOSS USA','MC','0306.33.00',NULL,'2019-02-28 18:14:27'),
(712,'JBF-0101-02','6','FINISHED GOODS JUMBO LUMP CAN 16 OZ BOSS HONGKONG','MC','0306.33.00',NULL,'2019-02-28 18:14:27'),
(713,'JBF-0101-03','6','FINISHED GOODS JUMBO LUMP CAN 16 OZ AQUA STAR USA','MC','0306.33.00',NULL,'2019-02-28 18:14:27'),
(714,'JBF-0101-04','6','FINISHED GOODS JUMBO LUMP CAN 16 OZ AQUA STAR CANADA','MC','0306.33.00',NULL,'2019-02-28 18:14:27'),
(715,'JBF-0101-05','6','FINISHED GOODS JUMBO LUMP CAN 16 OZ HIDDEN BAY','MC','0306.33.00',NULL,'2019-02-28 18:14:27'),
(716,'JBF-0101-06','6','FINISHED GOODS JUMBO LUMP CAN 16 OZ PIERPORT','MC','0306.33.00',NULL,'2019-02-28 18:14:27'),
(717,'JBF-0101-07','6','FINISHED GOODS JUMBO LUMP CAN 16 OZ CHICKEN OF THE SEA','MC','0306.33.00',NULL,'2019-02-28 18:14:27'),
(718,'JBF-0101-08','6','FINISHED GOODS JUMBO LUMP CAN 16 OZ WINDA FOOD','MC','0306.33.00',NULL,'2019-02-28 18:14:27'),
(719,'JBF-0101-09','6','FINISHED GOODS JUMBO LUMP CAN 16 OZ NAUTILUS','MC','1605.10.10',NULL,'2019-02-28 18:14:27'),
(720,'JBF-0101-13','6','FINISHED GOODS JUMBO LUMP CAN 16 OZ BYRD','MC','0306.33.00',NULL,'2019-02-28 18:14:27'),
(721,'JBF-0101-15','6','FINISHED GOODS JUMBO LUMP CAN 16 OZ BLUE CREST','MC','0306.33.00',NULL,'2019-02-28 18:14:27'),
(722,'JBF-0201-09','6','FINISHED GOODS JUMBO LUMP CUP 16 OZ NAUTILUS','MC','1605.10.10',NULL,'2019-02-28 18:14:27'),
(723,'JBF-0201-10','6','FINISHED GOODS JUMBO LUMP 16 OZ PASSION FOR FISH','MC','0306.33.00',NULL,'2019-02-28 18:14:27'),
(724,'JBF-0202-01','6','FINISHED GOODS JUMBO LUMP CUP 8 OZ BOSS USA','MC','0306.33.00',NULL,'2019-02-28 18:14:27'),
(725,'JBF-0202-03','6','FINISHED GOODS JUMBO LUMP CUP 8 OZ AQUA STAR USA','MC','0306.33.00',NULL,'2019-02-28 18:14:27'),
(726,'JBF-0202-04','6','FINISHED GOODS JUMBO LUMP CUP 8 OZ AQUA STAR CANADA','MC','0306.33.00',NULL,'2019-02-28 18:14:27'),
(727,'JBF-0202-16','6','FINISHED GOODS JUMBO LUMP CUP 8 OZ PACIFIC WEST','MC','0306.33.00',NULL,'2019-02-28 18:14:27'),
(728,'JBF-0304-07','6','FINISHED GOODS JUMBO LUMP POUCH 2 KG CHICKEN OF THE SEA','MC','0306.33.00',NULL,'2019-02-28 18:14:27'),
(729,'JPF-0101-02','6','FINISHED GOODS JUMBO PETITE CAN 16 OZ BOSS HONGKONG','MC','0306.33.00',NULL,'2019-02-28 18:14:27'),
(730,'LPF-0101-01','6','FINISHED GOODS LUMP CAN 16 OZ BOSS USA','MC','0306.33.00',NULL,'2019-02-28 18:14:27'),
(731,'LPF-0101-02','6','FINISHED GOODS LUMP CAN 16 OZ BOSS HONGKONG','MC','0306.33.00',NULL,'2019-02-28 18:14:27'),
(732,'LPF-0101-03','6','FINISHED GOODS LUMP CAN 16 OZ AQUA STAR USA','MC','0306.33.00',NULL,'2019-02-28 18:14:27'),
(733,'LPF-0101-04','6','FINISHED GOODS LUMP CAN 16 OZ AQUA STAR CANADA','MC','0306.33.00',NULL,'2019-02-28 18:14:27'),
(734,'LPF-0101-05','6','FINISHED GOODS LUMP CAN 16 OZ HIDDEN BAY','MC','0306.33.00',NULL,'2019-02-28 18:14:27'),
(735,'LPF-0101-06','6','FINISHED GOODS LUMP CAN 16 OZ PIERPORT','MC','0306.33.00',NULL,'2019-02-28 18:14:28'),
(736,'LPF-0101-07','6','FINISHED GOODS LUMP CAN 16 OZ CHICKEN OF THE SEA','MC','0306.33.00',NULL,'2019-02-28 18:14:28'),
(737,'LPF-0101-08','6','FINISHED GOODS LUMP CAN 16 OZ WINDA FOOD','MC','0306.33.00',NULL,'2019-02-28 18:14:28'),
(738,'LPF-0101-15','6','FINISHED GOODS LUMP CAN 16 OZ BLUE CREST','MC','0306.33.00',NULL,'2019-02-28 18:14:28'),
(739,'LPF-0201-09','6','FINISHED GOODS LUMP410 CUP 16 OZ NAUTILUS','MC','1605.10.10',NULL,'2019-02-28 18:14:28'),
(740,'LPF-0202-01','6','FINISHED GOODS LUMP CUP 8 OZ BOSS USA','MC','0306.33.00',NULL,'2019-02-28 18:14:28'),
(741,'LPF-0202-03','6','FINISHED GOODS LUMP CUP 8 OZ AQUA STAR USA','MC','0306.33.00',NULL,'2019-02-28 18:14:28'),
(742,'LPF-0202-04','6','FINISHED GOODS LUMP CUP 8 OZ AQUA STAR CANADA','MC','0306.33.00',NULL,'2019-02-28 18:14:28'),
(743,'LPF-0304-07','6','FINISHED GOODS LUMP POUCH 2 KG CHICKEN OF THE SEA','MC','0306.33.00',NULL,'2019-02-28 18:14:28'),
(744,'SLF-0101-01','6','FINISHED GOODS SUPER LUMP CAN 16 OZ BOSS USA','MC','0306.33.00',NULL,'2019-02-28 18:14:28'),
(745,'SLF-0101-02','6','FINISHED GOODS SUPER LUMP CAN 16 OZ BOSS HONGKONG','MC','0306.33.00',NULL,'2019-02-28 18:14:28'),
(746,'SLF-0101-03','6','FINISHED GOODS SUPER LUMP CAN 16 OZ AQUA STAR USA','MC','0306.33.00',NULL,'2019-02-28 18:14:28'),
(747,'SLF-0101-04','6','FINISHED GOODS SUPER LUMP CAN 16 OZ AQUA STAR CANADA','MC','0306.33.00',NULL,'2019-02-28 18:14:28'),
(748,'SLF-0101-05','6','FINISHED GOODS SUPER LUMP CAN 16 OZ HIDDEN BAY','MC','0306.33.00',NULL,'2019-02-28 18:14:28'),
(749,'SLF-0101-06','6','FINISHED GOODS SUPER LUMP CAN 16 OZ PIERPORT','MC','0306.33.00',NULL,'2019-02-28 18:14:28'),
(750,'SLF-0101-07','6','FINISHED GOODS SUPER LUMP CAN 16 OZ CHICKEN OF THE SEA','MC','0306.33.00',NULL,'2019-02-28 18:14:28'),
(751,'SLF-0101-08','6','FINISHED GOODS SUPER LUMP CAN 16 OZ WINDA FOOD','MC','0306.33.00',NULL,'2019-02-28 18:14:28'),
(752,'SLF-0101-09','6','FINISHED GOODS SUPER LUMP CAN 16 OZ NAUTILUS','MC','0306.33.00',NULL,'2019-02-28 18:14:28'),
(753,'SLF-0101-13','6','FINISHED GOODS SUPER LUMP CAN 16 OZ BYRD','MC','0306.33.00',NULL,'2019-02-28 18:14:28'),
(754,'SLF-0101-15','6','FINISHED GOODS SUPER LUMP CAN 16 OZ BLUE CREST','MC','0306.33.00',NULL,'2019-02-28 18:14:28'),
(755,'SLF-0202-01','6','FINISHED GOODS SUPER LUMP CUP 8 OZ BOSS USA','MC','0306.33.00',NULL,'2019-02-28 18:14:28'),
(756,'SLF-0202-03','6','FINISHED GOODS SUPER LUMP CUP 8 OZ AQUA STAR USA','MC','0306.33.00',NULL,'2019-02-28 18:14:28'),
(757,'SLF-0202-04','6','FINISHED GOODS SUPER LUMP CUP 8 OZ AQUA STAR CANADA','MC','0306.33.00',NULL,'2019-02-28 18:14:28'),
(758,'SLF-0304-07','6','FINISHED GOODS SUPER LUMP POUCH 2 KG CHICKEN OF THE SEA','MC','0306.33.00',NULL,'2019-02-28 18:14:28'),
(759,'SPF-0101-01','6','FINISHED GOODS SPECIAL CAN 16 OZ BOSS USA','MC','0306.33.00',NULL,'2019-02-28 18:14:28'),
(760,'SPF-0101-02','6','FINISHED GOODS SPECIAL CAN 16 OZ BOSS HONGKONG','MC','0306.33.00',NULL,'2019-02-28 18:14:28'),
(761,'SPF-0101-03','6','FINISHED GOODS SPECIAL CAN 16 OZ AQUA STAR USA','MC','0306.33.00',NULL,'2019-02-28 18:14:29'),
(762,'SPF-0101-04','6','FINISHED GOODS SPECIAL CAN 16 OZ AQUA STAR CANADA','MC','0306.33.00',NULL,'2019-02-28 18:14:29'),
(763,'SPF-0101-05','6','FINISHED GOODS SPECIAL CAN 16 OZ HIDDEN BAY','MC','0306.33.00',NULL,'2019-02-28 18:14:29'),
(764,'SPF-0101-06','6','FINISHED GOODS SPECIAL CAN 16 OZ PIERPORT','MC','0306.33.00',NULL,'2019-02-28 18:14:29'),
(765,'SPF-0101-07','6','FINISHED GOODS SPECIAL CAN 16 OZ CHICKEN OF THE SEA','MC','0306.33.00',NULL,'2019-02-28 18:14:29'),
(766,'SPF-0101-08','6','FINISHED GOODS SPECIAL CAN 16 OZ WINDA FOOD','MC','0306.33.00',NULL,'2019-02-28 18:14:29'),
(767,'SPF-0101-09','6','FINISHED GOODS SPECIAL CAN 16 OZ NAUTILUS','MC','1605.10.10',NULL,'2019-02-28 18:14:29'),
(768,'SPF-0101-13','6','FINISHED GOODS SPECIAL CAN 16 OZ BYRD','MC','0306.33.00',NULL,'2019-02-28 18:14:29'),
(769,'SPF-0101-15','6','FINISHED GOODS SPECIAL CAN 16 OZ BLUE CREST','MC','0306.33.00',NULL,'2019-02-28 18:14:29'),
(770,'SPF-0201-09','6','FINISHED GOODS SPECIAL CUP 16 OZ NAUTILUS','MC','1605.10.10',NULL,'2019-02-28 18:14:29'),
(771,'SPF-0202-01','6','FINISHED GOODS SPECIAL CUP 8 OZ BOSS USA','MC','0306.33.00',NULL,'2019-02-28 18:14:29'),
(772,'SPF-0202-03','6','FINISHED GOODS SPECIAL CUP 8 OZ AQUA STAR USA','MC','0306.33.00',NULL,'2019-02-28 18:14:29'),
(773,'SPF-0202-04','6','FINISHED GOODS SPECIAL CUP 8 OZ AQUA STAR CANADA','MC','0306.33.00',NULL,'2019-02-28 18:14:29'),
(774,'SPF-0202-16','6','FINISHED GOODS SPECIAL CUP 8 OZ PACIFIC WEST','MC','0306.33.00',NULL,'2019-02-28 18:14:29'),
(775,'SPF-0304-07','6','FINISHED GOODS SPECIAL POUCH 2 KG CHICKEN OF THE SEA','MC','0306.33.00',NULL,'2019-02-28 18:14:29'),
(776,'BFB-0000-01','1','BAHAN BACKFIN FRESH','Kg','0306.33.00',NULL,'2019-02-28 18:14:29'),
(777,'CMB-0000-01','1','BAHAN CLAW MEAT FRESH','Kg','0306.33.00',NULL,'2019-02-28 18:14:29'),
(778,'COB-0000-01','1','BAHAN COLOSSAL FRESH','Kg','0306.33.00',NULL,'2019-02-28 18:14:29'),
(779,'FLB-0000-01','1','BAHAN FLOWER FRESH','Kg','0306.33.00',NULL,'2019-02-28 18:14:29'),
(780,'JBB-0000-01','1','BAHAN JUMBO LUMP FRESH','Kg','0306.33.00',NULL,'2019-02-28 18:14:29'),
(781,'JPB-0000-01','1','BAHAN JUMBO PETITE FRESH','Kg','0306.33.00',NULL,'2019-02-28 18:14:30'),
(782,'LMB-0000-01','1','BAHAN LEG MEAT FRESH','Kg','0306.33.00',NULL,'2019-02-28 18:14:30'),
(783,'SPB-0000-01','1','BAHAN SPECIAL FRESH','Kg','0306.33.00',NULL,'2019-02-28 18:14:30'),
(784,'BFB-0000-02','1','BAHAN BACKFIN REJECT','Kg','0306.33.00',NULL,'2019-02-28 18:14:30'),
(785,'CMB-0000-02','1','BAHAN CLAW MEAT REJECT','Kg','0306.33.00',NULL,'2019-02-28 18:14:30'),
(786,'COB-0000-02','1','BAHAN COLOSSAL REJECT','Kg','0306.33.00',NULL,'2019-02-28 18:14:30'),
(787,'FLB-0000-02','1','BAHAN FLOWER REJECT','Kg','0306.33.00',NULL,'2019-02-28 18:14:31'),
(788,'JBB-0000-02','1','BAHAN JUMBO LUMP REJECT','Kg','0306.33.00',NULL,'2019-02-28 18:14:31'),
(789,'JPB-0000-02','1','BAHAN JUMBO PETITE REJECT','Kg','0306.33.00',NULL,'2019-02-28 18:14:31'),
(790,'LMB-0000-02','1','BAHAN LEG MEAT REJECT','Kg','0306.33.00',NULL,'2019-02-28 18:14:31'),
(791,'SPB-0000-02','1','BAHAN SPECIAL REJECT','Kg','0306.33.00',NULL,'2019-02-28 18:14:31'),
(1167,'STP-00002','8','STIKER POUCH PASSION FOR FISH CLAW DEPAN','Lbr','4821.10',NULL,'2019-02-28 18:14:48'),
(1168,'STP-00003','8','STIKER POUCH PASSION FOR FISH CLAW BELAKANG','Lbr','4821.10',NULL,'2019-02-28 18:14:48'),
(1231,'CUK-00001','8','CUP KING 8 OZ','PCE','3923.90',NULL,'2019-02-28 19:56:09'),
(1232,'TCU-00001','8','TUTUP CUP KING 8 OZ ALLUMINIUM','PCE','8309.90',NULL,'2019-02-28 19:57:45'),
(1233,'TCU-00003','8','TUTUP CUP GILPIN 8 OZ POLOS PLASTIK','PCE','3923.50',NULL,'2019-02-28 19:59:27'),
(1234,'MCA-00001','8','MC CAN 16 OZ AQUASTAR - CLAW FINGER','PCE','4819.10',NULL,'2019-02-28 20:00:50'),
(1235,'STB-00002','8','STIKER BODY CLAW FINGER','PCE','4821.10',NULL,'2019-02-28 20:01:25');

/*Table structure for table `tm_menu` */

DROP TABLE IF EXISTS `tm_menu`;

CREATE TABLE `tm_menu` (
  `MENU_ID` int(11) NOT NULL AUTO_INCREMENT,
  `MENU_PARENT_ID` int(11) NOT NULL DEFAULT '0',
  `MENU_TITTLE` varchar(50) NOT NULL,
  `MENU_URL` varchar(255) NOT NULL,
  `MENU_ORDER` int(11) NOT NULL DEFAULT '0',
  `MENU_TYPE` enum('F','A') NOT NULL DEFAULT 'F',
  `MENU_ICON` varchar(50) DEFAULT NULL,
  `MENU_ACTIVE` varchar(25) DEFAULT NULL,
  `MENU_HAVE_CHILD` enum('Y','N') DEFAULT 'N',
  `MENU_URL_TIPE` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`MENU_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;

/*Data for the table `tm_menu` */

insert  into `tm_menu`(`MENU_ID`,`MENU_PARENT_ID`,`MENU_TITTLE`,`MENU_URL`,`MENU_ORDER`,`MENU_TYPE`,`MENU_ICON`,`MENU_ACTIVE`,`MENU_HAVE_CHILD`,`MENU_URL_TIPE`) values 
(1,0,'Dashboard','welcome/dashboard',0,'A','home','welcome','N',NULL),
(2,0,'Referensi','referensi',1,'A','gear','referensi','Y',NULL),
(3,0,'Users','users',2,'A','users','users','Y',NULL),
(4,0,'Inventory','inventory',3,'A','suitcase','inventory','Y',NULL),
(5,0,'Laporan','report',4,'A','laptop','report','Y',NULL),
(6,2,'Supplier','referensi/supplier',5,'A',NULL,'supplier','N',NULL),
(7,2,'Satuan','referensi/satuan',6,'A',NULL,'satuan','N',NULL),
(8,2,'Negara','referensi/negara',7,'A',NULL,'negara','N',NULL),
(9,3,'User','users/user',8,'A',NULL,'user','N',NULL),
(10,3,'Role','users/role',9,'A',NULL,'role','N',NULL),
(11,4,'Barang','inventory/barang',10,'A',NULL,'barang','N',NULL),
(12,4,'Stockopname','inventory/stockopname',11,'A',NULL,'stockopname','N',NULL),
(13,5,'Pemasukan','report/pemasukan',12,'A',NULL,'pemasukan','N',NULL),
(14,5,'Pengeluaran','report/pengeluaran',13,'A',NULL,'pengeluaran','N',NULL),
(15,5,'WIP','report/wip',14,'A',NULL,'wip','N',NULL),
(16,5,'Mutasi Bahan Baku','report/mutasi_bb',15,'A',NULL,'mutasi_bb','N',NULL),
(17,5,'Mutasi Bahan Penolong','report/mutasi_bp',16,'A',NULL,'mutasi_bp','N',NULL),
(18,5,'Mutasi Hasil Produksi','report/mutasi_hp',17,'A',NULL,'mutasi_hp','N',NULL),
(19,5,'Mutasi Barang Modal','report/mutasi_bm',18,'A',NULL,'mutasi_bm','N',NULL),
(20,5,'Mutasi Peralatan Kantor','report/mutasi_pk',19,'A',NULL,'mutasi_pk','N',NULL),
(21,5,'Mutasi Sisa & Scrap','report/mutasi_bs',20,'A',NULL,'mutasi_bs','N',NULL),
(22,0,'Pemusnahan','pemusnahan/daftar',21,'A','trash-o','pemusnahan','N',NULL);

/*Table structure for table `tm_role` */

DROP TABLE IF EXISTS `tm_role`;

CREATE TABLE `tm_role` (
  `KODE_ROLE` int(11) NOT NULL AUTO_INCREMENT,
  `URAIAN` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`KODE_ROLE`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

/*Data for the table `tm_role` */

insert  into `tm_role`(`KODE_ROLE`,`URAIAN`) values 
(2,'Admin'),
(3,'Beacukai');

/*Table structure for table `tm_role_menu` */

DROP TABLE IF EXISTS `tm_role_menu`;

CREATE TABLE `tm_role_menu` (
  `MENU_ID` int(11) NOT NULL,
  `GRANT_TYPE` char(1) NOT NULL,
  `ROLE_ID` int(11) NOT NULL,
  PRIMARY KEY (`MENU_ID`,`GRANT_TYPE`,`ROLE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `tm_role_menu` */

insert  into `tm_role_menu`(`MENU_ID`,`GRANT_TYPE`,`ROLE_ID`) values 
(1,'W',2),
(1,'W',3),
(2,'R',2),
(3,'R',2),
(4,'R',2),
(5,'R',2),
(5,'R',3),
(6,'W',2),
(7,'W',2),
(8,'W',2),
(9,'W',2),
(10,'W',2),
(11,'W',2),
(12,'W',2),
(13,'W',2),
(13,'W',3),
(14,'W',2),
(14,'W',3),
(15,'W',2),
(15,'W',3),
(16,'W',2),
(16,'W',3),
(17,'W',2),
(17,'W',3),
(18,'W',2),
(18,'W',3),
(19,'W',2),
(19,'W',3),
(20,'W',2),
(20,'W',3),
(21,'W',2),
(21,'W',3),
(22,'W',2);

/*Table structure for table `tm_stockopname` */

DROP TABLE IF EXISTS `tm_stockopname`;

CREATE TABLE `tm_stockopname` (
  `ID` bigint(19) NOT NULL AUTO_INCREMENT,
  `TGL_STOCK` datetime DEFAULT NULL,
  `KD_BRG` varchar(255) DEFAULT NULL,
  `JNS_BRG` char(2) DEFAULT NULL,
  `JML_STOCKOPNAME` decimal(38,4) DEFAULT NULL,
  `CREATED_TIME` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`),
  KEY `reff_jns_brg_3` (`JNS_BRG`),
  CONSTRAINT `reff_jns_brg_3` FOREIGN KEY (`JNS_BRG`) REFERENCES `reff_jns_barang` (`KD_JNS`)
) ENGINE=InnoDB AUTO_INCREMENT=336 DEFAULT CHARSET=utf8;

/*Data for the table `tm_stockopname` */

insert  into `tm_stockopname`(`ID`,`TGL_STOCK`,`KD_BRG`,`JNS_BRG`,`JML_STOCKOPNAME`,`CREATED_TIME`) values 
(4,'2019-01-01 18:43:08','CAB-00001','2',43.8050,'2019-02-28 18:42:05'),
(5,'2019-01-01 18:43:08','CAB-00002','2',28.3140,'2019-02-28 18:42:05'),
(6,'2019-01-01 18:43:08','CAB-00003','2',12.2180,'2019-02-28 18:42:05'),
(7,'2019-01-01 18:43:08','CAB-00004','2',9.9540,'2019-02-28 18:42:05'),
(8,'2019-01-01 18:43:08','CAB-00006','2',42.2150,'2019-02-28 18:42:05'),
(9,'2019-01-01 18:43:08','CAB-00007','2',3.7140,'2019-02-28 18:42:05'),
(10,'2019-01-01 18:43:08','CAB-00017','2',2.2290,'2019-02-28 18:42:05'),
(11,'2019-01-01 18:43:08','CAB-00018','2',55.2290,'2019-02-28 18:42:06'),
(12,'2019-01-01 18:43:08','CAB-00019','2',21.4780,'2019-02-28 18:42:06'),
(13,'2019-01-01 18:43:08','CAB-00020','2',1.4480,'2019-02-28 18:42:06'),
(14,'2019-01-01 18:43:08','CAB-00021','2',28.0720,'2019-02-28 18:42:06'),
(15,'2019-01-01 18:43:08','MCA-00001','2',336.0000,'2019-02-28 18:42:06'),
(16,'2019-01-01 18:43:08','MCA-00003','2',1.7590,'2019-02-28 18:42:06'),
(17,'2019-01-01 18:43:08','MCA-00004','2',79.0000,'2019-02-28 18:42:06'),
(18,'2019-01-01 18:43:08','MCA-00005','2',500.0000,'2019-02-28 18:42:06'),
(19,'2019-01-01 18:43:08','MCA-00006','2',581.0000,'2019-02-28 18:42:06'),
(20,'2019-01-01 18:43:08','MCA-00007','2',270.0000,'2019-02-28 18:42:06'),
(21,'2019-01-01 18:43:08','MCA-00008','2',68.0000,'2019-02-28 18:42:06'),
(22,'2019-01-01 18:43:08','MCA-00009','2',1.3480,'2019-02-28 18:42:06'),
(23,'2019-01-01 18:43:08','MCA-00010','2',1.5700,'2019-02-28 18:42:06'),
(24,'2019-01-01 18:43:08','MCA-00011','2',1.2720,'2019-02-28 18:42:06'),
(25,'2019-01-01 18:43:08','MCA-00012','2',2.8140,'2019-02-28 18:42:06'),
(26,'2019-01-01 18:43:08','MCA-00013','2',861.0000,'2019-02-28 18:42:06'),
(27,'2019-01-01 18:43:08','MCA-00014','2',1.6300,'2019-02-28 18:42:07'),
(28,'2019-01-01 18:43:08','MCA-00015','2',1.9300,'2019-02-28 18:42:07'),
(29,'2019-01-01 18:43:08','MCA-00016','2',2.3800,'2019-02-28 18:42:07'),
(30,'2019-01-01 18:43:08','MCA-00017','2',639.0000,'2019-02-28 18:42:07'),
(31,'2019-01-01 18:43:08','MCA-00018','2',2.2960,'2019-02-28 18:42:07'),
(32,'2019-01-01 18:43:08','MCA-00019','2',1.6230,'2019-02-28 18:42:07'),
(33,'2019-01-01 18:43:08','MCA-00020','2',1.1810,'2019-02-28 18:42:07'),
(34,'2019-01-01 18:43:08','MCA-00021','2',2.7820,'2019-02-28 18:42:07'),
(35,'2019-01-01 18:43:08','MCA-00022','2',1.5880,'2019-02-28 18:42:07'),
(36,'2019-01-01 18:43:08','MCA-00023','2',3.1340,'2019-02-28 18:42:07'),
(37,'2019-01-01 18:43:08','MCA-00024','2',621.0000,'2019-02-28 18:42:07'),
(38,'2019-01-01 18:43:08','MCA-00025','2',453.0000,'2019-02-28 18:42:07'),
(39,'2019-01-01 18:43:08','MCA-00026','2',3.1680,'2019-02-28 18:42:07'),
(40,'2019-01-01 18:43:08','MCA-00027','2',1.6010,'2019-02-28 18:42:07'),
(41,'2019-01-01 18:43:08','MCA-00028','2',2.0100,'2019-02-28 18:42:07'),
(42,'2019-01-01 18:43:08','MCA-00029','2',1.9060,'2019-02-28 18:42:07'),
(43,'2019-01-01 18:43:08','MCA-00030','2',2.4070,'2019-02-28 18:42:07'),
(44,'2019-01-01 18:43:08','MCA-00031','2',4.8540,'2019-02-28 18:42:07'),
(45,'2019-01-01 18:43:08','MCA-00033','2',634.0000,'2019-02-28 18:42:08'),
(46,'2019-01-01 18:43:08','MCA-00034','2',4.5170,'2019-02-28 18:42:08'),
(47,'2019-01-01 18:43:08','MCA-00036','2',5.0000,'2019-02-28 18:42:08'),
(48,'2019-01-01 18:43:08','MCA-00037','2',305.0000,'2019-02-28 18:42:08'),
(49,'2019-01-01 18:43:08','MCA-00038','2',2.0000,'2019-02-28 18:42:08'),
(50,'2019-01-01 18:43:08','MCA-00039','2',128.0000,'2019-02-28 18:42:08'),
(51,'2019-01-01 18:43:08','MCA-00041','2',361.0000,'2019-02-28 18:42:08'),
(52,'2019-01-01 18:43:08','MCA-00042','2',970.0000,'2019-02-28 18:42:08'),
(53,'2019-01-01 18:43:08','MCA-00043','2',784.0000,'2019-02-28 18:42:08'),
(54,'2019-01-01 18:43:08','MCA-00044','2',1.2690,'2019-02-28 18:42:08'),
(55,'2019-01-01 18:43:08','MCA-00045','2',2.9600,'2019-02-28 18:42:08'),
(56,'2019-01-01 18:43:08','MCA-00046','2',702.0000,'2019-02-28 18:42:08'),
(57,'2019-01-01 18:43:08','MCA-00047','2',1.0250,'2019-02-28 18:42:08'),
(58,'2019-01-01 18:43:08','MCA-00048','2',503.0000,'2019-02-28 18:42:08'),
(59,'2019-01-01 18:43:08','MCA-00049','2',1.5800,'2019-02-28 18:42:08'),
(60,'2019-01-01 18:43:08','MCA-00050','2',1.9990,'2019-02-28 18:42:08'),
(61,'2019-01-01 18:43:08','MCA-00051','2',1.6960,'2019-02-28 18:42:08'),
(62,'2019-01-01 18:43:08','MCA-00052','2',1.9140,'2019-02-28 18:42:08'),
(63,'2019-01-01 18:43:08','MCA-00053','2',2.6500,'2019-02-28 18:42:08'),
(64,'2019-01-01 18:43:08','MCA-00054','2',3.9500,'2019-02-28 18:42:08'),
(65,'2019-01-01 18:43:08','MCL-00001','2',130.0000,'2019-02-28 18:42:08'),
(66,'2019-01-01 18:43:08','MCL-00002','2',585.0000,'2019-02-28 18:42:08'),
(67,'2019-01-01 18:43:08','MCL-00003','2',71.0000,'2019-02-28 18:42:08'),
(68,'2019-01-01 18:43:08','MCL-00004','2',60.0000,'2019-02-28 18:42:08'),
(69,'2019-01-01 18:43:08','MCL-00005','2',1.0000,'2019-02-28 18:42:09'),
(70,'2019-01-01 18:43:08','MCL-00006','2',23.0000,'2019-02-28 18:42:09'),
(71,'2019-01-01 18:43:08','MCN-00001','2',279.0000,'2019-02-28 18:42:09'),
(72,'2019-01-01 18:43:08','MCN-00002','2',970.0000,'2019-02-28 18:42:09'),
(73,'2019-01-01 18:43:08','MCN-00003','2',213.0000,'2019-02-28 18:42:09'),
(74,'2019-01-01 18:43:08','MCN-00004','2',625.0000,'2019-02-28 18:42:09'),
(75,'2019-01-01 18:43:08','MCN-00006','2',764.0000,'2019-02-28 18:42:09'),
(76,'2019-01-01 18:43:08','MCN-00007','2',1.2750,'2019-02-28 18:42:09'),
(77,'2019-01-01 18:43:08','MCN-00008','2',63.0000,'2019-02-28 18:42:09'),
(78,'2019-01-01 18:43:08','MCN-00010','2',633.0000,'2019-02-28 18:42:09'),
(79,'2019-01-01 18:43:08','MCN-00011','2',156.0000,'2019-02-28 18:42:09'),
(80,'2019-01-01 18:43:08','MCN-00012','2',408.0000,'2019-02-28 18:42:09'),
(81,'2019-01-01 18:43:08','MCN-00013','2',3.2530,'2019-02-28 18:42:09'),
(82,'2019-01-01 18:43:08','MCN-00014','2',15.0000,'2019-02-28 18:42:09'),
(83,'2019-01-01 18:43:08','MCN-00015','2',392.0000,'2019-02-28 18:42:09'),
(84,'2019-01-01 18:43:08','MCN-00016','2',738.0000,'2019-02-28 18:42:09'),
(85,'2019-01-01 18:43:08','MCN-00018','2',271.0000,'2019-02-28 18:42:10'),
(86,'2019-01-01 18:43:08','MCN-00019','2',509.0000,'2019-02-28 18:42:10'),
(87,'2019-01-01 18:43:08','MCN-00021','2',88.0000,'2019-02-28 18:42:10'),
(88,'2019-01-01 18:43:08','MCN-00023','2',524.0000,'2019-02-28 18:42:10'),
(89,'2019-01-01 18:43:08','MCN-00024','2',36.0000,'2019-02-28 18:42:10'),
(90,'2019-01-01 18:43:08','MCN-00025','2',714.0000,'2019-02-28 18:42:10'),
(91,'2019-01-01 18:43:08','MCN-00026','2',880.0000,'2019-02-28 18:42:10'),
(92,'2019-01-01 18:43:08','MCN-00027','2',515.0000,'2019-02-28 18:42:10'),
(93,'2019-01-01 18:43:08','MCN-00029','2',450.0000,'2019-02-28 18:42:10'),
(94,'2019-01-01 18:43:08','MCN-00030','2',1.0750,'2019-02-28 18:42:10'),
(95,'2019-01-01 18:43:08','MCN-00033','2',240.0000,'2019-02-28 18:42:10'),
(96,'2019-01-01 18:43:08','MCN-00035','2',1.7570,'2019-02-28 18:42:10'),
(97,'2019-01-01 18:43:08','MCN-00036','2',97.0000,'2019-02-28 18:42:11'),
(98,'2019-01-01 18:43:08','MCN-00037','2',594.0000,'2019-02-28 18:42:11'),
(99,'2019-01-01 18:43:08','MCN-00039','2',350.0000,'2019-02-28 18:42:11'),
(100,'2019-01-01 18:43:08','MCN-00040','2',340.0000,'2019-02-28 18:42:11'),
(101,'2019-01-01 18:43:08','MCN-00041','2',120.0000,'2019-02-28 18:42:11'),
(102,'2019-01-01 18:43:08','MCN-00042','2',150.0000,'2019-02-28 18:42:11'),
(103,'2019-01-01 18:43:08','MCN-00043','2',140.0000,'2019-02-28 18:42:11'),
(104,'2019-01-01 18:43:08','MCN-00044','2',916.0000,'2019-02-28 18:42:11'),
(105,'2019-01-01 18:43:08','MCN-00045','2',32.0000,'2019-02-28 18:42:11'),
(106,'2019-01-01 18:43:08','MCN-00046','2',750.0000,'2019-02-28 18:42:11'),
(107,'2019-01-01 18:43:08','MCN-00047','2',142.0000,'2019-02-28 18:42:11'),
(108,'2019-01-01 18:43:08','MCN-00048','2',1.9090,'2019-02-28 18:42:11'),
(109,'2019-01-01 18:43:08','MCN-00049','2',719.0000,'2019-02-28 18:42:11'),
(110,'2019-01-01 18:43:08','MCN-00050','2',450.0000,'2019-02-28 18:42:11'),
(111,'2019-01-01 18:43:08','MCN-00051','2',1.4560,'2019-02-28 18:42:11'),
(112,'2019-01-01 18:43:08','MCN-00052','2',37.0000,'2019-02-28 18:42:11'),
(113,'2019-01-01 18:43:08','MCN-00055','2',421.0000,'2019-02-28 18:42:11'),
(114,'2019-01-01 18:43:08','MCN-00056','2',51.0000,'2019-02-28 18:42:11'),
(115,'2019-01-01 18:43:08','MCN-00057','2',560.0000,'2019-02-28 18:42:11'),
(116,'2019-01-01 18:43:08','MCN-00058','2',919.0000,'2019-02-28 18:42:11'),
(117,'2019-01-01 18:43:08','MCN-00059','2',250.0000,'2019-02-28 18:42:12'),
(118,'2019-01-01 18:43:08','MCN-00060','2',6.0000,'2019-02-28 18:42:12'),
(119,'2019-01-01 18:43:08','MCN-00061','2',1.0000,'2019-02-28 18:42:12'),
(120,'2019-01-01 18:43:08','MCN-00063','2',207.0000,'2019-02-28 18:42:12'),
(121,'2019-01-01 18:43:08','MCN-00067','2',1.0000,'2019-02-28 18:42:12'),
(122,'2019-01-01 18:43:08','MCN-00069','2',13.0000,'2019-02-28 18:42:12'),
(123,'2019-01-01 18:43:08','MCN-00070','2',25.0000,'2019-02-28 18:42:12'),
(124,'2019-01-01 18:43:08','MCN-00071','2',15.0000,'2019-02-28 18:42:12'),
(125,'2019-01-01 18:43:08','MCN-00072','2',124.0000,'2019-02-28 18:42:12'),
(126,'2019-01-01 18:43:08','MCN-00077','2',1.4340,'2019-02-28 18:42:12'),
(127,'2019-01-01 18:43:08','MCN-00078','2',302.0000,'2019-02-28 18:42:12'),
(128,'2019-01-01 18:43:08','MCN-00079','2',75.0000,'2019-02-28 18:42:12'),
(129,'2019-01-01 18:43:08','MCN-00081','2',1.0000,'2019-02-28 18:42:13'),
(130,'2019-01-01 18:43:08','MCN-00085','2',329.0000,'2019-02-28 18:42:13'),
(131,'2019-01-01 18:43:08','MCN-00086','2',366.0000,'2019-02-28 18:42:13'),
(132,'2019-01-01 18:43:08','MCN-00087','2',65.0000,'2019-02-28 18:42:13'),
(133,'2019-01-01 18:43:08','MCN-00088','2',2.6150,'2019-02-28 18:42:13'),
(134,'2019-01-01 18:43:08','MCN-00089','2',107.0000,'2019-02-28 18:42:13'),
(135,'2019-01-01 18:43:08','MCN-00090','2',150.0000,'2019-02-28 18:42:13'),
(136,'2019-01-01 18:43:08','MCN-00091','2',9.0000,'2019-02-28 18:42:13'),
(137,'2019-01-01 18:43:08','MCN-00093','2',338.0000,'2019-02-28 18:42:13'),
(138,'2019-01-01 18:43:08','MCN-00094','2',150.0000,'2019-02-28 18:42:13'),
(139,'2019-01-01 18:43:08','MCN-00095','2',23.0000,'2019-02-28 18:42:13'),
(140,'2019-01-01 18:43:08','MCN-00096','2',664.0000,'2019-02-28 18:42:13'),
(141,'2019-01-01 18:43:08','MCN-00099','2',1.0000,'2019-02-28 18:42:13'),
(142,'2019-01-01 18:43:08','MCN-00100','2',459.0000,'2019-02-28 18:42:13'),
(143,'2019-01-01 18:43:08','MCN-00101','2',364.0000,'2019-02-28 18:42:13'),
(144,'2019-01-01 18:43:08','MCN-00102','2',484.0000,'2019-02-28 18:42:13'),
(145,'2019-01-01 18:43:08','MCN-00103','2',419.0000,'2019-02-28 18:42:13'),
(146,'2019-01-01 18:43:08','MCN-00104','2',139.0000,'2019-02-28 18:42:13'),
(147,'2019-01-01 18:43:08','MCN-00105','2',1.3100,'2019-02-28 18:42:13'),
(148,'2019-01-01 18:43:08','MCN-00111','2',230.0000,'2019-02-28 18:42:13'),
(149,'2019-01-01 18:43:08','MCN-00112','2',387.0000,'2019-02-28 18:42:13'),
(150,'2019-01-01 18:43:08','MCN-00113','2',820.0000,'2019-02-28 18:42:13'),
(151,'2019-01-01 18:43:08','MCN-00117','2',150.0000,'2019-02-28 18:42:13'),
(152,'2019-01-01 18:43:08','MCN-00118','2',337.0000,'2019-02-28 18:42:13'),
(153,'2019-01-01 18:43:08','MCN-00119','2',6.8870,'2019-02-28 18:42:14'),
(154,'2019-01-01 18:43:08','MCN-00120','2',3.7060,'2019-02-28 18:42:14'),
(155,'2019-01-01 18:43:08','MCN-00121','2',3.7400,'2019-02-28 18:42:14'),
(156,'2019-01-01 18:43:08','MCN-00122','2',3.4510,'2019-02-28 18:42:14'),
(157,'2019-01-01 18:43:08','MCN-00123','2',175.0000,'2019-02-28 18:42:14'),
(158,'2019-01-01 18:43:08','MCP-00001','2',323.0000,'2019-02-28 18:42:14'),
(159,'2019-01-01 18:43:08','MCP-00002','2',181.0000,'2019-02-28 18:42:14'),
(160,'2019-01-01 18:43:08','MCP-00003','2',1.0980,'2019-02-28 18:42:14'),
(161,'2019-01-01 18:43:08','MCP-00004','2',628.0000,'2019-02-28 18:42:14'),
(162,'2019-01-01 18:43:08','MCP-00005','2',555.0000,'2019-02-28 18:42:14'),
(163,'2019-01-01 18:43:08','MCP-00006','2',1.0500,'2019-02-28 18:42:14'),
(164,'2019-01-01 18:43:08','MCP-00007','2',1.2890,'2019-02-28 18:42:14'),
(165,'2019-01-01 18:43:08','MCP-00008','2',46.0000,'2019-02-28 18:42:14'),
(166,'2019-01-01 18:43:08','MCP-00009','2',1.1220,'2019-02-28 18:42:14'),
(167,'2019-01-01 18:43:08','MCP-00010','2',10.0000,'2019-02-28 18:42:14'),
(168,'2019-01-01 18:43:08','MCU-00001','2',5.1330,'2019-02-28 18:42:14'),
(169,'2019-01-01 18:43:08','MCU-00002','2',928.0000,'2019-02-28 18:42:14'),
(170,'2019-01-01 18:43:08','MCU-00003','2',938.0000,'2019-02-28 18:42:14'),
(171,'2019-01-01 18:43:08','MCU-00004','2',148.0000,'2019-02-28 18:42:14'),
(172,'2019-01-01 18:43:08','MCU-00005','2',640.0000,'2019-02-28 18:42:14'),
(173,'2019-01-01 18:43:08','MCU-00006','2',203.0000,'2019-02-28 18:42:14'),
(174,'2019-01-01 18:43:08','MCU-00007','2',3.5160,'2019-02-28 18:42:14'),
(175,'2019-01-01 18:43:08','MCU-00008','2',482.0000,'2019-02-28 18:42:14'),
(176,'2019-01-01 18:43:08','MCU-00010','2',104.0000,'2019-02-28 18:42:14'),
(177,'2019-01-01 18:43:08','MCU-00011','2',149.0000,'2019-02-28 18:42:14'),
(178,'2019-01-01 18:43:08','MCU-00013','2',5.2300,'2019-02-28 18:42:14'),
(179,'2019-01-01 18:43:08','MCU-00014','2',1.1400,'2019-02-28 18:42:14'),
(180,'2019-01-01 18:43:08','MCU-00016','2',1.0820,'2019-02-28 18:42:15'),
(181,'2019-01-01 18:43:08','MCU-00022','2',112.0000,'2019-02-28 18:42:15'),
(182,'2019-01-01 18:43:08','MCU-00023','2',5.0000,'2019-02-28 18:42:15'),
(183,'2019-01-01 18:43:08','MCU-00024','2',118.0000,'2019-02-28 18:42:15'),
(184,'2019-01-01 18:43:08','MCU-00025','2',269.0000,'2019-02-28 18:42:15'),
(185,'2019-01-01 18:43:08','MCU-00026','2',470.0000,'2019-02-28 18:42:15'),
(186,'2019-01-01 18:43:08','MCU-00027','2',2.9670,'2019-02-28 18:42:15'),
(187,'2019-01-01 18:43:08','TCA-00001','2',30.7510,'2019-02-28 18:42:15'),
(188,'2019-01-01 18:43:08','TCA-00002','2',32.8770,'2019-02-28 18:42:15'),
(189,'2019-01-01 18:43:08','TCA-00003','2',23.0020,'2019-02-28 18:42:15'),
(190,'2019-01-01 18:43:08','TCA-00004','2',19.0060,'2019-02-28 18:42:15'),
(191,'2019-01-01 18:43:08','TCA-00005','2',7.2000,'2019-02-28 18:42:15'),
(192,'2019-01-01 18:43:08','TCA-00006','2',48.4790,'2019-02-28 18:42:15'),
(193,'2019-01-01 18:43:08','TCA-00007','2',7.9450,'2019-02-28 18:42:15'),
(194,'2019-01-01 18:43:08','TCA-00008','2',1.5970,'2019-02-28 18:42:15'),
(195,'2019-01-01 18:43:08','TCA-00009','2',13.1380,'2019-02-28 18:42:15'),
(196,'2019-01-01 18:43:08','TCA-00010','2',27.1050,'2019-02-28 18:42:15'),
(197,'2019-01-01 18:43:08','TCA-00011','2',62.5000,'2019-02-28 18:42:15'),
(198,'2019-01-01 18:43:08','TCA-00012','2',30.1310,'2019-02-28 18:42:15'),
(199,'2019-01-01 18:43:08','TCA-00014','2',30.3840,'2019-02-28 18:42:15'),
(200,'2019-01-01 18:43:08','TCA-00015','2',36.0690,'2019-02-28 18:42:15'),
(201,'2019-01-01 18:43:08','TCA-00016','2',5.7600,'2019-02-28 18:42:15'),
(202,'2019-01-01 18:43:08','TCA-00017','2',10.1260,'2019-02-28 18:42:15'),
(203,'2019-01-01 18:43:08','TCA-00018','2',8.9880,'2019-02-28 18:42:15'),
(204,'2019-01-01 18:43:08','TCA-00019','2',13.0020,'2019-02-28 18:42:16'),
(205,'2019-01-01 18:43:08','TCA-00020','2',24.7890,'2019-02-28 18:42:16'),
(206,'2019-01-01 18:43:08','TCA-00021','2',30.7860,'2019-02-28 18:42:16'),
(207,'2019-01-01 18:43:08','TCA-00022','2',529.0000,'2019-02-28 18:42:16'),
(208,'2019-01-01 18:43:08','TCA-00024','2',1.3010,'2019-02-28 18:42:16'),
(209,'2019-01-01 18:43:08','TCA-00025','2',2.7590,'2019-02-28 18:42:16'),
(210,'2019-01-01 18:43:08','TCA-00026','2',3.6580,'2019-02-28 18:42:16'),
(211,'2019-01-01 18:43:08','TCA-00027','2',24.5620,'2019-02-28 18:42:16'),
(212,'2019-01-01 18:43:08','TCA-00028','2',3.3690,'2019-02-28 18:42:16'),
(213,'2019-01-01 18:43:08','TCA-00030','2',25.8430,'2019-02-28 18:42:16'),
(214,'2019-01-01 18:43:08','TCA-00032','2',12.5350,'2019-02-28 18:42:16'),
(215,'2019-01-01 18:43:08','TCA-00033','2',12.1150,'2019-02-28 18:42:16'),
(216,'2019-01-01 18:43:08','TCA-00034','2',9.0460,'2019-02-28 18:42:16'),
(217,'2019-01-01 18:43:08','TCA-00035','2',4.3200,'2019-02-28 18:42:16'),
(218,'2019-01-01 18:43:08','TCA-00036','2',23.0100,'2019-02-28 18:42:16'),
(219,'2019-01-01 18:43:08','TCA-00037','2',20.1570,'2019-02-28 18:42:16'),
(220,'2019-01-01 18:43:08','TCA-00039','2',1.3800,'2019-02-28 18:42:16'),
(221,'2019-01-01 18:43:08','TCA-00040','2',6.4400,'2019-02-28 18:42:16'),
(222,'2019-01-01 18:43:08','TCA-00041','2',920.0000,'2019-02-28 18:42:16'),
(223,'2019-01-01 18:43:08','TCA-00042','2',824.0000,'2019-02-28 18:42:16'),
(224,'2019-01-01 18:43:08','TCA-00047','2',1.1950,'2019-02-28 18:42:16'),
(225,'2019-01-01 18:43:08','TCA-00048','2',887.0000,'2019-02-28 18:42:16'),
(226,'2019-01-01 18:43:08','TCA-00049','2',2.2580,'2019-02-28 18:42:16'),
(227,'2019-01-01 18:43:08','TCA-00050','2',17.2340,'2019-02-28 18:42:16'),
(228,'2019-01-01 18:43:08','TCA-00051','2',1.7310,'2019-02-28 18:42:16'),
(229,'2019-01-01 18:43:08','TCA-00052','2',7.9680,'2019-02-28 18:42:17'),
(230,'2019-01-01 18:43:08','TCA-00053','2',205.0000,'2019-02-28 18:42:17'),
(231,'2019-01-01 18:43:08','TCA-00054','2',26.6800,'2019-02-28 18:42:17'),
(232,'2019-01-01 18:43:08','TCA-00055','2',1.0410,'2019-02-28 18:42:17'),
(233,'2019-01-01 18:43:08','TCA-00056','2',1.2000,'2019-02-28 18:42:17'),
(234,'2019-01-01 18:43:08','TCA-00057','2',5.7600,'2019-02-28 18:42:17'),
(235,'2019-01-01 18:43:08','TCA-00058','2',12.6000,'2019-02-28 18:42:17'),
(236,'2019-01-01 18:43:08','TCA-00059','2',7.0800,'2019-02-28 18:42:17'),
(237,'2019-01-01 18:43:08','TCA-00060','2',11.1600,'2019-02-28 18:42:17'),
(238,'2019-01-01 18:43:08','TCA-00061','2',15.1200,'2019-02-28 18:42:17'),
(239,'2019-01-01 18:43:08','TCA-00062','2',1.1550,'2019-02-28 18:42:17'),
(240,'2019-01-01 18:43:08','TCA-00063','2',480.0000,'2019-02-28 18:42:17'),
(241,'2019-01-01 18:43:08','TCA-00064','2',601.0000,'2019-02-28 18:42:17'),
(242,'2019-01-01 18:43:08','TCA-00065','2',734.0000,'2019-02-28 18:42:17'),
(243,'2019-01-01 18:43:08','TCA-00066','2',570.0000,'2019-02-28 18:42:17'),
(244,'2019-01-01 18:43:08','TCA-00067','2',1.2740,'2019-02-28 18:42:17'),
(245,'2019-01-01 18:43:08','TCA-00068','2',325.0000,'2019-02-28 18:42:17'),
(246,'2019-01-01 18:43:08','TCA-00069','2',232.0000,'2019-02-28 18:42:17'),
(247,'2019-01-01 18:43:08','TCA-00070','2',693.0000,'2019-02-28 18:42:17'),
(248,'2019-01-01 18:43:08','TCA-00071','2',787.0000,'2019-02-28 18:42:17'),
(249,'2019-01-01 18:43:08','TCA-00072','2',4.0090,'2019-02-28 18:42:17'),
(250,'2019-01-01 18:43:08','TCA-00073','2',24.4200,'2019-02-28 18:42:17'),
(251,'2019-01-01 18:43:08','TCA-00074','2',2.1800,'2019-02-28 18:42:17'),
(252,'2019-01-01 18:43:08','TCA-00075','2',3.4590,'2019-02-28 18:42:17'),
(253,'2019-01-01 18:43:08','TCA-00076','2',23.0080,'2019-02-28 18:42:17'),
(254,'2019-01-01 18:43:08','TCA-00077','2',11.2500,'2019-02-28 18:42:18'),
(255,'2019-01-01 18:43:08','TCA-00078','2',16.5600,'2019-02-28 18:42:18'),
(256,'2019-01-01 18:43:08','TCA-00079','2',9.4190,'2019-02-28 18:42:18'),
(257,'2019-01-01 18:43:08','TCA-00080','2',26.4600,'2019-02-28 18:42:18'),
(258,'2019-01-01 18:43:08','TCA-00081','2',6.3000,'2019-02-28 18:42:18'),
(259,'2019-01-01 18:43:08','TCA-00082','2',46.6200,'2019-02-28 18:42:18'),
(260,'2019-01-01 18:43:08','TCA-00083','2',10.5910,'2019-02-28 18:42:18'),
(261,'2019-01-01 18:43:08','TCA-00084','2',1.3470,'2019-02-28 18:42:18'),
(262,'2019-01-01 18:43:08','TCA-00085','2',6.7180,'2019-02-28 18:42:18'),
(263,'2019-01-01 18:43:08','TCA-00086','2',6.4400,'2019-02-28 18:42:18'),
(264,'2019-01-01 18:43:08','TCA-00087','2',8.5010,'2019-02-28 18:42:18'),
(265,'2019-01-01 18:43:08','TCA-00088','2',924.0000,'2019-02-28 18:42:18'),
(266,'2019-01-01 18:43:08','TCA-00089','2',2.8450,'2019-02-28 18:42:18'),
(267,'2019-01-01 18:43:08','TCA-00090','2',2.1590,'2019-02-28 18:42:18'),
(268,'2019-01-01 18:43:08','TCA-00091','2',920.0000,'2019-02-28 18:42:18'),
(269,'2019-01-01 18:43:08','TCA-00092','2',100.0000,'2019-02-28 18:42:18'),
(270,'2019-01-01 18:43:08','TCA-00093','2',36.0000,'2019-02-28 18:42:18'),
(271,'2019-01-01 18:43:08','TCA-00094','2',43.0000,'2019-02-28 18:42:18'),
(272,'2019-01-01 18:43:08','TCA-00095','2',21.4520,'2019-02-28 18:42:18'),
(273,'2019-01-01 18:43:08','TCA-00098','2',32.5820,'2019-02-28 18:42:18'),
(274,'2019-01-01 18:43:08','TCA-00099','2',23.9600,'2019-02-28 18:42:18'),
(275,'2019-01-01 18:43:08','TCA-00100','2',28.1530,'2019-02-28 18:42:18'),
(276,'2019-01-01 18:43:08','TCA-00101','2',920.0000,'2019-02-28 18:42:19'),
(277,'2019-01-01 18:43:08','TCA-00102','2',690.0000,'2019-02-28 18:42:19'),
(278,'2019-01-01 18:43:08','TCA-00103','2',920.0000,'2019-02-28 18:42:19'),
(279,'2019-01-01 18:43:08','TCA-00104','2',111.0000,'2019-02-28 18:42:19'),
(280,'2019-01-01 18:43:08','TCA-00105','2',9.9600,'2019-02-28 18:42:19'),
(281,'2019-01-01 18:43:08','TCA-00106','2',19.4910,'2019-02-28 18:42:19'),
(282,'2019-01-01 18:43:08','TCA-00107','2',25.7700,'2019-02-28 18:42:19'),
(283,'2019-01-01 18:43:08','TCA-00108','2',164.0000,'2019-02-28 18:42:19'),
(284,'2019-01-01 18:43:08','TCA-00109','2',1.1940,'2019-02-28 18:42:19'),
(285,'2019-01-01 18:43:08','TCA-00110','2',3.1200,'2019-02-28 18:42:19'),
(286,'2019-01-01 18:43:08','TCA-00111','2',9.4520,'2019-02-28 18:42:19'),
(287,'2019-01-01 18:43:08','TCA-00112','2',19.6690,'2019-02-28 18:42:19'),
(288,'2019-01-01 18:43:08','TCA-00113','2',36.6040,'2019-02-28 18:42:19'),
(289,'2019-01-01 18:43:08','TCA-00114','2',35.4780,'2019-02-28 18:42:19'),
(290,'2019-01-01 18:43:08','TCA-00115','2',18.1630,'2019-02-28 18:42:19'),
(291,'2019-01-01 18:43:08','TCA-00116','2',44.9780,'2019-02-28 18:42:19'),
(292,'2019-01-01 18:43:08','TCA-00117','2',41.2170,'2019-02-28 18:42:19'),
(293,'2019-01-01 18:43:08','TCA-00118','2',3.6450,'2019-02-28 18:42:19'),
(294,'2019-01-01 18:43:08','TCA-00119','2',27.9130,'2019-02-28 18:42:19'),
(295,'2019-01-01 18:43:08','TCA-00120','2',39.2650,'2019-02-28 18:42:19'),
(296,'2019-01-01 18:43:08','TCA-00121','2',63.0940,'2019-02-28 18:42:19'),
(297,'2019-01-01 18:43:08','TCA-00122','2',3.0310,'2019-02-28 18:42:19'),
(298,'2019-01-01 18:43:08','TCA-00123','2',42.4700,'2019-02-28 18:42:19'),
(299,'2019-01-01 18:43:08','TCA-00124','2',39.8820,'2019-02-28 18:42:19'),
(300,'2019-01-01 18:43:08','TCA-00125','2',25.8080,'2019-02-28 18:42:19'),
(301,'2019-01-01 18:43:08','TCA-00126','2',10.8950,'2019-02-28 18:42:20'),
(302,'2019-01-01 18:43:08','TCA-00127','2',7.0760,'2019-02-28 18:42:20'),
(303,'2019-01-01 18:43:08','TCA-00128','2',14.4660,'2019-02-28 18:42:20'),
(304,'2019-01-01 18:43:08','TCA-00129','2',32.2660,'2019-02-28 18:42:20'),
(305,'2019-01-01 18:43:08','TCA-00130','2',26.0470,'2019-02-28 18:42:20'),
(306,'2019-01-01 18:43:08','TCA-00131','2',35.0570,'2019-02-28 18:42:20'),
(307,'2019-01-01 18:43:08','TCA-00133','2',12.1970,'2019-02-28 18:42:20'),
(308,'2019-01-01 18:43:08','TCA-00134','2',13.1140,'2019-02-28 18:42:20'),
(309,'2019-01-01 18:43:08','TCA-00135','2',22.7940,'2019-02-28 18:42:20'),
(310,'2019-01-01 18:43:08','TCA-00136','2',18.6690,'2019-02-28 18:42:20'),
(311,'2019-01-01 18:43:08','TCA-00138','2',20.6800,'2019-02-28 18:42:20'),
(312,'2019-01-01 18:43:08','TCA-00139','2',26.8770,'2019-02-28 18:42:20'),
(313,'2019-01-01 18:43:08','TCA-00141','2',17.1200,'2019-02-28 18:42:20'),
(314,'2019-01-01 18:43:08','TCA-00142','2',36.3120,'2019-02-28 18:42:20'),
(315,'2019-01-01 18:43:08','TCA-00144','2',28.8000,'2019-02-28 18:42:20'),
(316,'2019-01-01 18:43:08','TCA-00145','2',14.4720,'2019-02-28 18:42:20'),
(317,'2019-01-01 18:43:08','TCA-00146','2',40.3000,'2019-02-28 18:42:20'),
(318,'2019-01-01 18:43:08','TCU-00001','2',5.7020,'2019-02-28 18:42:20'),
(319,'2019-01-01 18:43:08','TCU-00002','2',55.6000,'2019-02-28 18:42:20'),
(320,'2019-01-01 18:43:08','TCU-00004','2',55.4380,'2019-02-28 18:42:20'),
(321,'2019-01-01 18:43:08','TCU-00005','2',77.5460,'2019-02-28 18:42:20'),
(322,'2019-01-01 18:43:08','TCU-00006','2',10.0110,'2019-02-28 18:42:20'),
(323,'2019-01-01 18:43:08','TCU-00007','2',18.9440,'2019-02-28 18:42:21'),
(324,'2019-01-01 18:43:08','TCU-00008','2',920.0000,'2019-02-28 18:42:21'),
(325,'2019-01-01 18:43:08','TCU-00009','2',14.4000,'2019-02-28 18:42:21'),
(326,'2019-01-01 18:43:08','TCU-00010','2',1.4400,'2019-02-28 18:42:21'),
(327,'2019-01-01 18:43:08','TCU-00011','2',20.1600,'2019-02-28 18:42:21'),
(328,'2019-01-01 18:43:08','TCU-00012','2',4.6000,'2019-02-28 18:42:21'),
(329,'2019-01-01 18:43:08','TCU-00013','2',22.8830,'2019-02-28 18:42:21'),
(330,'2019-01-01 18:43:08','TCU-00014','2',77.0000,'2019-02-28 18:42:21'),
(331,'2019-01-01 18:43:08','TCU-00015','2',12.0000,'2019-02-28 18:42:21'),
(332,'2019-01-01 18:43:08','TCU-00016','2',3.0000,'2019-02-28 18:42:21'),
(333,'2019-01-01 18:43:08','TCU-00017','2',467.0000,'2019-02-28 18:42:21'),
(334,'2019-01-01 18:43:08','TCU-00018','2',272.0000,'2019-02-28 18:42:21'),
(335,'2019-01-01 18:43:08','BFB-0000-01','1',100.0000,'2019-03-01 07:41:48');

/*Table structure for table `tm_user` */

DROP TABLE IF EXISTS `tm_user`;

CREATE TABLE `tm_user` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `USERNAME` varchar(30) DEFAULT NULL,
  `PASSWORD` varchar(255) DEFAULT NULL,
  `NAMA` varchar(50) DEFAULT NULL,
  `AlAMAT` varchar(255) DEFAULT NULL,
  `TELEPON` varchar(15) DEFAULT NULL,
  `EMAIL` varchar(50) DEFAULT NULL,
  `STATUS` enum('0','1') DEFAULT '1',
  `USER_ROLE` int(11) DEFAULT NULL,
  `CREATED_TIME` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`),
  KEY `reff_role` (`USER_ROLE`),
  CONSTRAINT `reff_role` FOREIGN KEY (`USER_ROLE`) REFERENCES `tm_role` (`KODE_ROLE`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

/*Data for the table `tm_user` */

insert  into `tm_user`(`ID`,`USERNAME`,`PASSWORD`,`NAMA`,`AlAMAT`,`TELEPON`,`EMAIL`,`STATUS`,`USER_ROLE`,`CREATED_TIME`) values 
(1,'administrator','$2y$10$kvpTKFQ40Qf2RGFo61ejYOJZcbr1PwzW.j2ejGZMmEhDznYTZhp9S','Administrator Aplikasi','Jakarta','087756789009','administrator@gmail.com','1',2,'2019-02-23 15:55:33'),
(9,'beacukai','$2y$10$1pMLbW5P25k6ACEk1U7beehgORDl4hQtjTNWYGOAbNOt0MNPS6EKq','Beacukai','Jakarta','129090','beacukai@gmail.com','1',3,'2019-03-03 17:18:14');

/*Table structure for table `tr_inout` */

DROP TABLE IF EXISTS `tr_inout`;

CREATE TABLE `tr_inout` (
  `ID` bigint(19) NOT NULL AUTO_INCREMENT,
  `TIPE` varchar(15) DEFAULT NULL,
  `KD_DOK` char(5) DEFAULT NULL,
  `CAR` varchar(26) DEFAULT NULL,
  `NO_DOK` char(8) DEFAULT NULL,
  `TGL_DOK` date DEFAULT NULL,
  `SERI_DOK` bigint(19) DEFAULT NULL,
  `NO_DOK_INTERNAL` varchar(50) DEFAULT NULL,
  `TGL_DOK_INTERNAL` date DEFAULT NULL,
  `KD_BARANG` varchar(255) DEFAULT NULL,
  `JNS_BARANG` char(2) DEFAULT NULL,
  `KD_SATUAN` char(3) DEFAULT NULL,
  `JML_SATUAN` decimal(38,4) DEFAULT NULL,
  `HRG_BARANG` decimal(38,4) DEFAULT NULL,
  `KD_SUPPLIER` varchar(20) DEFAULT NULL,
  `TGL_REALISASI` datetime DEFAULT NULL,
  `LOT_NUMBER` varchar(30) DEFAULT NULL,
  `KD_VALUTA` char(3) DEFAULT NULL,
  `NDPBM` decimal(38,4) DEFAULT NULL,
  `NO_PROSES` varchar(35) DEFAULT NULL,
  `NO_PROSES_MASUK` text,
  `JNS_PROSES` varchar(10) DEFAULT NULL,
  `FLAG_PROSES` enum('0','1') DEFAULT '0',
  `KETERANGAN` varchar(255) DEFAULT NULL,
  `CREATED_TIME` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`),
  KEY `reff_jns_brg` (`JNS_BARANG`),
  KEY `reff_supplier` (`KD_SUPPLIER`),
  KEY `reff_satuan` (`KD_SATUAN`),
  CONSTRAINT `reff_jns_brg` FOREIGN KEY (`JNS_BARANG`) REFERENCES `reff_jns_barang` (`KD_JNS`),
  CONSTRAINT `reff_satuan` FOREIGN KEY (`KD_SATUAN`) REFERENCES `reff_satuan` (`KD_SATUAN`),
  CONSTRAINT `reff_supplier` FOREIGN KEY (`KD_SUPPLIER`) REFERENCES `reff_supplier` (`KD_SUPPLIER`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

/*Data for the table `tr_inout` */

insert  into `tr_inout`(`ID`,`TIPE`,`KD_DOK`,`CAR`,`NO_DOK`,`TGL_DOK`,`SERI_DOK`,`NO_DOK_INTERNAL`,`TGL_DOK_INTERNAL`,`KD_BARANG`,`JNS_BARANG`,`KD_SATUAN`,`JML_SATUAN`,`HRG_BARANG`,`KD_SUPPLIER`,`TGL_REALISASI`,`LOT_NUMBER`,`KD_VALUTA`,`NDPBM`,`NO_PROSES`,`NO_PROSES_MASUK`,`JNS_PROSES`,`FLAG_PROSES`,`KETERANGAN`,`CREATED_TIME`) values 
(1,'GATE-IN','23','0901092019201920000011111','164454','2019-01-01',1,'030628','2019-01-05','TCU-00001','8','PCE',8.0000,514.4500,'VI-0001','2019-01-01 19:48:01',NULL,'USD',9043.0000,NULL,NULL,NULL,'0',NULL,'2019-02-28 19:45:59'),
(2,'GATE-IN','23','0901092019201920000011111','164454','2019-01-05',2,'030628','2019-01-05','CUK-00001','8','PCE',4.0000,78.9900,'VI-0001','2019-01-05 19:48:01',NULL,'USD',9043.0000,NULL,NULL,NULL,'0',NULL,'2019-02-28 19:50:45'),
(3,'GATE-IN','23','0901092019201920000022222','164455','2019-01-05',1,'030629','2019-01-05','CUK-00001','8','PCE',9.0000,514.4500,'VI-0001','2019-01-05 19:48:01',NULL,'USD',9043.0000,NULL,NULL,NULL,'0',NULL,'2019-02-28 20:03:07'),
(4,'GATE-IN','23','0901092019201920000022222','164455','2019-01-05',2,'030629','2019-01-05','TCU-00003','8','PCE',10.0000,78.9900,'VI-0001','2019-01-05 19:48:01',NULL,'USD',9043.0000,NULL,NULL,NULL,'0',NULL,'2019-02-28 20:06:02'),
(5,'GATE-OUT','30','0901092019201920000033333','164457','2019-01-05',1,'030630','2019-01-05','BFF-0202-03','6','MC',3900.0000,56900.0000,'CE-0004','2019-01-05 19:48:01',NULL,'USD',9043.0000,NULL,NULL,NULL,'0',NULL,'2019-02-28 20:07:07'),
(6,'GATE-IN','40','0901092019201920000044444','164726','2019-02-12',1,'1277/FEB/19/SJ/SH','2019-02-12','MCA-00001','8','PCE',5000.0000,15000000.0000,'VL-0045','2019-02-12 20:18:04',NULL,'IDR',1.0000,NULL,NULL,NULL,'0',NULL,'2019-02-28 20:16:06'),
(7,'GATE-IN','40','0901092019201920000044444','164726','2019-02-12',2,'1277/FEB/19/SJ/SH','2019-02-12','STB-00002','8','PCE',30000.0000,2000000.0000,'VL-0045','2019-02-12 20:18:04',NULL,'IDR',1.0000,NULL,NULL,NULL,'0',NULL,'2019-02-28 20:18:19'),
(8,'PROCESS_IN',NULL,NULL,NULL,NULL,1,NULL,NULL,'SPB-0000-01','1','KG',2.6650,NULL,NULL,'2019-02-03 01:41:36',NULL,NULL,NULL,'PD 1900001',NULL,'MASUK','0','Generated By Add On (S1) RAJUNGAN','2019-03-01 01:41:50'),
(9,'PROCESS_IN',NULL,NULL,NULL,NULL,2,NULL,NULL,'LMB-0000-01','1','KG',0.2240,NULL,NULL,'2019-02-03 01:41:36',NULL,NULL,NULL,'PD 1900001',NULL,'MASUK','0','Generated By Add On (S1) RAJUNGAN','2019-03-01 01:42:29'),
(10,'PROCESS_IN',NULL,NULL,NULL,NULL,3,NULL,NULL,'JPB-0000-01','1','KG',0.1040,NULL,NULL,'2019-02-03 01:41:36',NULL,NULL,NULL,'PD 1900001',NULL,'MASUK','0','Generated By Add On (S1) RAJUNGAN','2019-03-01 01:43:28'),
(11,'PROCESS_IN',NULL,NULL,NULL,NULL,4,NULL,NULL,'JBB-0000-02','1','KG',0.2330,NULL,NULL,'2019-02-03 01:41:36',NULL,NULL,NULL,'PD 1900001',NULL,'MASUK','0','Generated By Add On (S1) RAJUNGAN','2019-03-01 01:44:03'),
(12,'PROCESS_IN',NULL,NULL,NULL,NULL,5,NULL,NULL,'JBB-0000-01','1','KG',1.0400,NULL,NULL,'2019-02-03 01:41:36',NULL,NULL,NULL,'PD 1900001',NULL,'MASUK','0','Generated By Add On (S1) RAJUNGAN','2019-03-01 01:44:43'),
(13,'PROCESS_IN',NULL,NULL,NULL,NULL,6,NULL,NULL,'FLB-0000-01','1','KG',0.8200,NULL,NULL,'2019-02-03 01:41:36',NULL,NULL,NULL,'PD 1900001',NULL,'MASUK','0','Generated By Add On (S1) RAJUNGAN','2019-03-01 01:45:20'),
(14,'PROCESS_IN',NULL,NULL,NULL,NULL,7,NULL,NULL,'COB-0000-01','1','KG',0.1330,NULL,NULL,'2019-02-03 01:41:36',NULL,NULL,NULL,'PD 1900001',NULL,'MASUK','0','Generated By Add On (S1) RAJUNGAN','2019-03-01 01:45:52'),
(15,'PROCESS_IN',NULL,NULL,NULL,NULL,8,NULL,NULL,'CMB-0000-01','1','KG',2.5310,NULL,NULL,'2019-02-03 01:41:36',NULL,NULL,NULL,'PD 1900001',NULL,'MASUK','0','Generated By Add On (S1) RAJUNGAN','2019-03-01 01:46:23'),
(16,'PROCESS_IN',NULL,NULL,NULL,NULL,9,NULL,NULL,'BFB-0000-01','1','KG',0.9020,NULL,NULL,'2019-02-03 01:41:36',NULL,NULL,NULL,'PD 1900001',NULL,'MASUK','0','Generated By Add On (S1) RAJUNGAN','2019-03-01 01:46:57');

/*Table structure for table `tr_logbook_in` */

DROP TABLE IF EXISTS `tr_logbook_in`;

CREATE TABLE `tr_logbook_in` (
  `LOT_NUMBER` varchar(30) NOT NULL,
  `JNS_DOK` char(3) DEFAULT NULL,
  `CAR` varchar(26) DEFAULT NULL,
  `NO_DOK` char(8) DEFAULT NULL,
  `TGL_DOK` date DEFAULT NULL,
  `TGL_IN` date DEFAULT NULL,
  `KD_BARANG` varchar(255) DEFAULT NULL,
  `JNS_BARANG` char(2) DEFAULT NULL,
  `SERI_BARANG` int(11) DEFAULT NULL,
  `KD_SATUAN` char(3) DEFAULT NULL,
  `JML_SATUAN` decimal(38,4) DEFAULT NULL,
  `HARGA_BARANG` decimal(38,4) DEFAULT NULL,
  `FLAG_TUTUP` enum('Y','N') DEFAULT 'N',
  `SALDO` decimal(38,4) DEFAULT NULL,
  `KD_VALUTA` char(3) DEFAULT NULL,
  `NILAI_VALUTA` decimal(38,4) DEFAULT NULL,
  `CREATED_TIME` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`LOT_NUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `tr_logbook_in` */

/*Table structure for table `tr_logbook_out` */

DROP TABLE IF EXISTS `tr_logbook_out`;

CREATE TABLE `tr_logbook_out` (
  `LOT_NUMBER` varchar(30) DEFAULT NULL,
  `JNS_DOK` char(3) DEFAULT NULL,
  `CAR` varchar(26) DEFAULT NULL,
  `NO_DOK` char(8) DEFAULT NULL,
  `TGL_DOK` date DEFAULT NULL,
  `TGL_OUT` date DEFAULT NULL,
  `KD_BARANG` varchar(255) DEFAULT NULL,
  `JNS_BARANG` char(2) DEFAULT NULL,
  `SERI_BARANG` int(11) DEFAULT NULL,
  `KD_SATUAN` char(3) DEFAULT NULL,
  `JML_SATUAN` decimal(38,4) DEFAULT NULL,
  `HARGA_BARANG` decimal(38,4) DEFAULT NULL,
  `KD_VALUTA` char(3) DEFAULT NULL,
  `NILAI_VALUTA` decimal(38,4) DEFAULT NULL,
  `CREATED_TIME` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `LOT_NUMBER_IN` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `tr_logbook_out` */

/*Table structure for table `tr_pemusnahan_dtl` */

DROP TABLE IF EXISTS `tr_pemusnahan_dtl`;

CREATE TABLE `tr_pemusnahan_dtl` (
  `HDR_ID` int(11) NOT NULL,
  `DTL_ID` int(11) NOT NULL,
  `KD_BARANG` varchar(255) DEFAULT NULL,
  `JNS_BARANG` char(2) DEFAULT NULL,
  `KD_SATUAN` char(3) DEFAULT NULL,
  `KONDISI` char(1) DEFAULT NULL,
  `JML_SATUAN` decimal(38,4) DEFAULT NULL,
  PRIMARY KEY (`HDR_ID`,`DTL_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `tr_pemusnahan_dtl` */

/*Table structure for table `tr_pemusnahan_hdr` */

DROP TABLE IF EXISTS `tr_pemusnahan_hdr`;

CREATE TABLE `tr_pemusnahan_hdr` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `NO_SURAT` varchar(50) DEFAULT NULL,
  `TGL_SURAT` date DEFAULT NULL,
  `PERIHAL` varchar(255) DEFAULT NULL,
  `KD_KANTOR_TUJUAN` char(6) DEFAULT NULL,
  `NM_PEMOHON` varchar(50) DEFAULT NULL,
  `ID_PEMOHON` varchar(20) DEFAULT NULL,
  `NO_SURAT_TUGAS` varchar(20) DEFAULT NULL,
  `TELEPON` varchar(15) DEFAULT NULL,
  `EMAIL` varchar(25) DEFAULT NULL,
  `CREATED_BY` int(11) DEFAULT NULL,
  `CREATED_TIME` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  KEY `ID` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `tr_pemusnahan_hdr` */

/* Trigger structure for table `tr_inout` */

DELIMITER $$

/*!50003 DROP TRIGGER*//*!50032 IF EXISTS */ /*!50003 `tr_inout_ai` */$$

/*!50003 CREATE */ /*!50017 DEFINER = 'root'@'localhost' */ /*!50003 TRIGGER `tr_inout_ai` AFTER INSERT ON `tr_inout` FOR EACH ROW BEGIN
	IF NEW.TIPE = 'GATE-IN' THEN
		UPDATE tm_barang SET STOCK_AKHIR = STOCK_AKHIR + NEW.JML_SATUAN WHERE KD_BRG = NEW.KD_BARANG AND JNS_BRG = NEW.JNS_BARANG;
	elseif NEW.TIPE = 'GATE-OUT' THEN
		UPDATE tm_barang SET STOCK_AKHIR = STOCK_AKHIR - NEW.JML_SATUAN WHERE KD_BRG = NEW.KD_BARANG AND JNS_BRG = NEW.JNS_BARANG;
	END IF;
 END */$$


DELIMITER ;

/* Function  structure for function  `func_active` */

/*!50003 DROP FUNCTION IF EXISTS `func_active` */;
DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` FUNCTION `func_active`(`GET_ID` INT) RETURNS varchar(255) CHARSET latin1
BEGIN
    DECLARE RV VARCHAR(255);
    DECLARE CM CHAR(1);
    DECLARE CH INT;
    SET RV = '';
    SET CM = '';
    SET CH = GET_ID;
    WHILE CH > 0 DO
        SELECT IFNULL(MENU_PARENT_ID,-1) INTO CH FROM
        (SELECT MENU_PARENT_ID FROM tm_menu WHERE MENU_ID = CH) A;
        IF CH > 0 THEN
            SET RV = CONCAT(RV,CM,CH);
            SET CM = ',';
        END IF;
    END WHILE;
    RETURN RV;
END */$$
DELIMITER ;

/* Function  structure for function  `f_menuchecked` */

/*!50003 DROP FUNCTION IF EXISTS `f_menuchecked` */;
DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` FUNCTION `f_menuchecked`(MENUID INT(3), MENUGROUPID INT(11)) RETURNS varchar(10) CHARSET latin1
BEGIN
    DECLARE f_uraian VARCHAR(10);
	SELECT IF(COUNT(MENU_ID)=0,'','checked') INTO f_uraian FROM tm_role_menu
	WHERE MENU_ID = MENUID AND ROLE_ID = MENUGROUPID;
	RETURN f_uraian;
    END */$$
DELIMITER ;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
