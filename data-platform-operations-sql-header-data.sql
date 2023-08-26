CREATE TABLE `data_platform_operations_header_data`
(
    `Operations`                               int(16) NOT NULL,
	`SupplyChainRelationshipID`                int(16) NOT NULL,
	`SupplyChainRelationshipDeliveryID`        int(6) NOT NULL,
	`SupplyChainRelationshipDeliveryPlantID`   int(4) NOT NULL,
	`SupplyChainRelationshipProductionPlantID` int(4) NOT NULL,
    `Product`                                  varchar(40) NOT NULL,
    `Buyer`                                    int(12) NOT NULL,
    `Seller`                                   int(12) NOT NULL,
    `DepartureDeliverFromParty`                int(12) NOT NULL,
    `DepartureDeliverFromPlant`                varchar(4) NOT NULL,
    `DestinationDeliverToParty`                int(12) NOT NULL,
    `DestinationDeliverToPlant`                varchar(4) NOT NULL,
    `OwnerProductionPlantBusinessPartner`      int(12) NOT NULL,
    `OwnerProductionPlant`                     varchar(4) NOT NULL,
    `ProductBaseUnit`                          varchar(3) NOT NULL,
    `ProductDeliveryUnit`                      varchar(3) NOT NULL,
    `ProductProductionUnit`                    varchar(3) NOT NULL,
    `OperationsText`                           varchar(200) NOT NULL,
    `OperationsStatus`                         varchar(2) DEFAULT NULL,
    `ResponsiblePlannerGroup`                  varchar(3) DEFAULT NULL,
    `PlainLongText`                            varchar(1000) DEFAULT NULL,
    `ValidityStartDate`                        date DEFAULT NULL,
    `ValidityEndDate`                          date DEFAULT NULL,
    `CreationDate`                             date NOT NULL,
    `LastChangeDate`                           date NOT NULL,
    `IsMarkedForDeletion`                      tinyint(1) DEFAULT NULL,

    PRIMARY KEY (`Operations`),

    CONSTRAINT `DPFMOperationsHeaderDataSCRID_fk` FOREIGN KEY (`SupplyChainRelationshipID`, `Buyer`, `Seller`) REFERENCES `data_platform_scr_general_data` (`SupplyChainRelationshipID`, `Buyer`, `Seller`),
    CONSTRAINT `DPFMOperationsHeaderDataSCRDeliveryID_fk` FOREIGN KEY (`SupplyChainRelationshipID`, `SupplyChainRelationshipDeliveryID`, `Buyer`, `Seller`, `DestinationDeliverToParty`, `DepartureDeliverFromParty`) REFERENCES `data_platform_scr_delivery_relation_data` (`SupplyChainRelationshipID`, `SupplyChainRelationshipDeliveryID`, `Buyer`, `Seller`, `DeliverToParty`, `DeliverFromParty`),
--     CONSTRAINT `DPFMOperationsHeaderDataSCRDeliveryPlantIDProduct_fk` FOREIGN KEY (`SupplyChainRelationshipID`, `SupplyChainRelationshipDeliveryID`, `SupplyChainRelationshipDeliveryPlantID`, `Buyer`, `Seller`, `DestinationDeliverToParty`, `DepartureDeliverFromParty`, `DestinationDeliverToPlant`, `DepartureDeliverFromPlant`, `Product`) REFERENCES `data_platform_scr_delivery_plant_relation_product_data` (`SupplyChainRelationshipID`, `SupplyChainRelationshipDeliveryID`, `SupplyChainRelationshipDeliveryPlantID`, `Buyer`, `Seller`, `DeliverToParty`, `DeliverFromParty`, `DeliverToPlant`, `DeliverFromPlant`, `Product`),
-- 	CONSTRAINT `DPFMOperationsHeaderDataSCRProductionPlantIDProduct_fk` FOREIGN KEY (`SupplyChainRelationshipID`, `SupplyChainRelationshipProductionPlantID`, `Buyer`, `Seller`, `OwnerProductionPlantBusinessPartner`, `OwnerProductionPlant`, `Product`) REFERENCES `data_platform_scr_production_plant_relation_product_data` (`SupplyChainRelationshipID`, `SupplyChainRelationshipProductionPlantID`, `Buyer`, `Seller`, `ProductionPlantBusinessPartner`, `ProductionPlant`, `Product`),
    CONSTRAINT `DPFMOperationsHeaderDataBaseUnit_fk` FOREIGN KEY (`ProductBaseUnit`) REFERENCES `data_platform_quantity_unit_quantity_unit_data` (`QuantityUnit`),
    CONSTRAINT `DPFMOperationsHeaderDataDeliveryUnit_fk` FOREIGN KEY (`ProductDeliveryUnit`) REFERENCES `data_platform_quantity_unit_quantity_unit_data` (`QuantityUnit`),
    CONSTRAINT `DPFMOperationsHeaderDataProductionUnit_fk` FOREIGN KEY (`ProductProductionUnit`) REFERENCES `data_platform_quantity_unit_quantity_unit_data` (`QuantityUnit`)


) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
