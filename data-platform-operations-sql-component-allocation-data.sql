CREATE TABLE `data_platform_operations_component_allocation_data`
(
  `Operations`		           int(16) NOT NULL,
  `OperationsItem`	           int(6) NOT NULL,
  `BillOfMaterial`             int(16) DEFAULT NULL,
  `BillOfMaterialItem`	       int(6) DEFAULT NULL,
  `IsMarkedForBackflush`   	   tinyint(1) DEFAULT NULL,
  `ValidityStartDate`          date DEFAULT NULL,
  `ValidityEndDate`            date DEFAULT NULL,
  `CreationDate`               date DEFAULT NULL,
  `LastChangeDate`             date DEFAULT NULL,

  PRIMARY KEY (`Operations`, `OperationsItem`, `BillOfMaterial`, `BillOfMaterialItem`),

  CONSTRAINT `DataPlatformOpeationsComponentAllocationData_fk` FOREIGN KEY (`Operations`, `OperationsItem`) REFERENCES `data_platform_operations_item_data` (`Operations`, `OperationsItem`),
  CONSTRAINT `DataPlatformOpeationsComponentAllocationBOMData_fk` FOREIGN KEY (`BillOfMaterial`, `BillOfMaterialItem`) REFERENCES `data_platform_bill_of_material_item_data` (`BillOfMaterial`, `BillOfMaterialItem`)

) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
