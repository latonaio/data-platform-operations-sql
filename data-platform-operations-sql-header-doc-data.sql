CREATE TABLE `data_platform_operations_header_doc_data`
(
  `Operations`                     int(16) NOT NULL,
  `DocType`                        varchar(20) NOT NULL,
  `DocVersionID`                   int(4) NOT NULL,
  `DocID`                          varchar(100) NOT NULL,
  `FileExtension`                  varchar(20) NOT NULL,
  `FileName`                       varchar(200) DEFAULT NULL,
  `FilePath`                       varchar(1000) DEFAULT NULL,
  `DocIssuerBusinessPartner`       int(12) DEFAULT NULL,
  
  PRIMARY KEY (`Operations`, `DocType`, `DocVersionID`, `DocID`),
    
  CONSTRAINT `DataPlatformOpeartionsHeaderDocData_fk` FOREIGN KEY (`Operations`) REFERENCES `data_platform_operations_header_data` (`Operations`),
  CONSTRAINT `DataPlatformOpeartionsHeaderDocDataDocType_fk` FOREIGN KEY (`DocType`) REFERENCES `data_platform_doc_type_doc_type_data` (`DocType`),
  CONSTRAINT `DataPlatformOpeartionsHeaderDocDataDocIssuerBusinessPartner_fk` FOREIGN KEY (`DocIssuerBusinessPartner`) REFERENCES `data_platform_business_partner_general_data` (`BusinessPartner`)
    
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
