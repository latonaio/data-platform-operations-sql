CREATE TABLE `data_platform_operations_header_data`
(
    `Operations`                    int(16) NOT NULL,
    `Product`                       varchar(40) NOT NULL,
    `OwnerBusinessPartner`          int(12) NOT NULL,
    `OwnerPlant`                    varchar(4) NOT NULL,
    `OperationsText`                varchar(200) DEFAULT NULL,
    `OperationsStatus`              varchar(2) DEFAULT NULL,
    `ResponsiblePlannerGroup`       varchar(3) DEFAULT NULL,
    `ValidityStartDate`             date DEFAULT NULL,
    `ValidityEndDate`               date DEFAULT NULL,
    `CreationDate`                  date DEFAULT NULL,
    `LastChangeDate`                date DEFAULT NULL,
    `PlainLongText`                 varchar(1000) DEFAULT NULL,
    `IsMarkedForDeletion`           tinyint(1) DEFAULT NULL,
    
    PRIMARY KEY (`Operations`),

    CONSTRAINT `DataPlatformOperationsHeaderData_fk` FOREIGN KEY (`Product`, `OwnerBusinessPartner`, `OwnerPlant`) REFERENCES `data_platform_product_master_bp_plant_data` (`Product`, `BusinessPartner`, `Plant`)

) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
