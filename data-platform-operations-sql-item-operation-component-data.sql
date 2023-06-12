CREATE TABLE `data_platform_operations_item_operation_component_data`
(
  `Operations`		                          int(16) NOT NULL,
  `OperationsItem`	                          int(6) NOT NULL,
  `BillOfMaterial`                            int(16) DEFAULT NULL,
  `BillOfMaterialItem`	                      int(6) DEFAULT NULL,

  `SupplyChainRelationshipID`                 int(16) NOT NULL,
  `SupplyChainRelationshipDeliveryID`         int(6) NOT NULL,
  `SupplyChainRelationshipDeliveryPlantID`    int(4) NOT NULL,
  `SupplyChainRelationshipStockConfPlantID`   int(4) NOT NULL,
  `ProductionPlantBusinessPartner`            int(12) NOT NULL,
  `ProductionPlant`                           varchar(4) NOT NULL,
  
  `ComponentProduct`                          varchar(40) NOT NULL,
  `ComponentProductBuyer`                     int(12) NOT NULL,
  `ComponentProductSeller`                    int(12) NOT NULL,
  `ComponentProductDeliverFromParty`          int(12) NOT NULL,
  `ComponentProductDeliverFromPlant`          varchar(4) NOT NULL,
  `ComponentProductDeliverToParty`            int(12) NOT NULL,
  `ComponentProductDeliverToPlant`            varchar(4) NOT NULL,
  `ComponentProductRequiredQuantity`          float(15) NOT NULL,
  `ComponentProductBaseUnit`                  varchar(3) NOT NULL,
  `ComponentProductDeliveryUnit`              varchar(3) NOT NULL,

  `IsMarkedForBackflush`   	                  tinyint(1) DEFAULT NULL,
  `ValidityStartDate`                         date DEFAULT NULL,
  `ValidityEndDate`                           date DEFAULT NULL,
  `CreationDate`                              date DEFAULT NULL,
  `LastChangeDate`                            date DEFAULT NULL,

  PRIMARY KEY (`Operations`, `OperationsItem`, `BillOfMaterial`, `BillOfMaterialItem`),

  CONSTRAINT `DataPlatformOperationsItemOperationComponentData_fk` FOREIGN KEY (`Operations`, `OperationsItem`) REFERENCES `data_platform_operations_item_data` (`Operations`, `OperationsItem`),
  CONSTRAINT `DataPlatformOperationsItemOperationComponentDataBOMItem_fk` FOREIGN KEY (`BillOfMaterial`, `BillOfMaterialItem`) REFERENCES `data_platform_bill_of_material_item_data` (`BillOfMaterial`, `BillOfMaterialItem`)

) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
