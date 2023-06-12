CREATE TABLE `data_platform_operations_item_data`
(
    `Operations`                               int(16) NOT NULL,
    `OperationsItem`                           int(6) NOT NULL,
	`SupplyChainRelationshipID`                int(16) NOT NULL,
	`SupplyChainRelationshipDeliveryID`        int(6) NOT NULL,
	`SupplyChainRelationshipDeliveryPlantID`   int(4) NOT NULL,
	`SupplyChainRelationshipProductionPlantID` int(4) NOT NULL,
    `Product`                                  varchar(40) NOT NULL, 
    `Buyer`                                    int(12) NOT NULL,
    `Seller`                                   int(12) NOT NULL,
    `DeliverFromParty`                         int(12) NOT NULL,
    `DeliverFromPlant`                         varchar(4) NOT NULL,
    `DeliverToParty`                           int(12) NOT NULL,
    `DeliverToPlant`                           varchar(4) NOT NULL,
    `ProductionPlantBusinessPartner`           int(12) NOT NULL,
    `ProductionPlant`                          varchar(4) NOT NULL,
    `OperationsText`                           varchar(200) NOT NULL,
    `BillOfMaterial`                           int(16) DEFAULT NULL,
    `ValidityStartDate`                        date DEFAULT NULL,
    `ValidityEndDate`                          date DEFAULT NULL,
    `OperationsStatus`                         varchar(2) DEFAULT NULL,
    `ResponsiblePlannerGroup`                  varchar(3) DEFAULT NULL,
    `StandardLotSizeQuantity`                  float(15) DEFAULT NULL,
    `MinimumLotSizeQuantity`                   float(15) DEFAULT NULL,
    `MaximumLotSizeQuantity`                   float(15) DEFAULT NULL,
    `OperationsUnit`                           varchar(3) DEFAULT NULL,
    `CreationDate`                             date DEFAULT NULL,
    `LastChangeDate`                           date DEFAULT NULL,
    `PlainLongText`                            varchar(1000) DEFAULT NULL,
    `WorkCenterTypeCode`                       varchar(2) DEFAULT NULL,
    `WorkCenterInternalID`                     varchar(8) DEFAULT NULL,
    `CapacityCategoryCode`                     varchar(3) DEFAULT NULL,
    `OperationCostingRelevancyType`            varchar(1) DEFAULT NULL,
    `OperationScrapPercent`                    float(7) DEFAULT NULL,
    `IsMarkedForDeletion`                      tinyint(1) DEFAULT NULL,

    PRIMARY KEY (`Operations`, `OperationsItem`),

    CONSTRAINT `DataPlatformOperationsItemData_fk` FOREIGN KEY (`Operations`) REFERENCES `data_platform_operations_header_data` (`Operations`),
    CONSTRAINT `DataPlatformOperationsItemDataSCRID_fk` FOREIGN KEY (`SupplyChainRelationshipID`, `Buyer`, `Seller`) REFERENCES `data_platform_supply_chain_relationship_general_data` (`SupplyChainRelationshipID`, `Buyer`, `Seller`),
    CONSTRAINT `DataPlatformOperationsItemDataSCRDeliveryID_fk` FOREIGN KEY (`SupplyChainRelationshipID`, `SupplyChainRelationshipDeliveryID`, `Buyer`, `Seller`, `DeliverToParty`, `DeliverFromParty`) REFERENCES `data_platform_supply_chain_relationship_delivery_relation_data` (`SupplyChainRelationshipID`, `Buyer`, `Seller`, , `DeliverToParty`, `DeliverFromParty`),
    CONSTRAINT `DataPlatformOperationsItemDataSCRDeliveryPlantIDProduct_fk` FOREIGN KEY (`SupplyChainRelationshipID`, `SupplyChainRelationshipDeliveryID`, `SupplyChainRelationshipDeliveryPlantID`, `Buyer`, `Seller`, `DeliverToParty`, `DeliverFromParty`, `DeliverToPlant`, `DeliverFromPlant`, `Product`) REFERENCES `data_platform_supply_chain_relationship_delivery_plant_relation_product_data` (`SupplyChainRelationshipID`, `SupplyChainRelationshipDeliveryID`, `SupplyChainRelationshipDeliveryPlantID`, `Buyer`, `Seller`, `DeliverToParty`, `DeliverFromParty`, `DeliverToPlant`, `DeliverFromPlant`, `Product`),
	CONSTRAINT `DataPlatformOperationsItemDataSCRProductionPlantIDProduct_fk` FOREIGN KEY (`SupplyChainRelationshipID`, `SupplyChainRelationshipProductionPlantID`, `Buyer`, `Seller`, `ProductionPlantBusinessPartner`, `ProductionPlant`, `Product`) REFERENCES `data_platform_supply_chain_relationship_production_plant_relation_product_data` (`SupplyChainRelationshipID`, `SupplyChainRelationshipProductionPlantID`, `Buyer`, `Seller`, `ProductionPlantBusinessPartner`, `ProductionPlant`, `Product`),
    CONSTRAINT `DataPlatformOperationsItemDataBOM_fk` FOREIGN KEY (`BillOfMaterial`) REFERENCES `data_platform_bill_of_material_header_data` (`BillOfMaterial`)

) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
