@AccessControl.authorizationCheck: #CHECK
@Metadata.allowExtensions: true
@EndUserText.label: 'Vin Info. View'
define view entity zi_vininfo
  as select from I_InspectionLot as lot
  association [0..1] to zi_inproceslot as _inprocess on $projection.ProductionOrder = _inprocess.ManufacturingOrder
{
      @Consumption.valueHelpDefault.display: true
      @Consumption.valueHelpDefinition: [{ entity: { name: 'zi_vh_vinno', element: 'VinNo' }  }]
  key _inprocess._subset.InspectionSubsetLongCharKey as VinNumber,
      @Consumption.valueHelpDefault.display: true
      @Consumption.valueHelpDefinition: [{ entity: { name: 'zi_vh_productionOrder', element: 'Material' }  }]
      Material,

      @Consumption.valueHelpDefinition: [{ entity: { name: 'zi_vh_productionOrder', element: 'ManufacturingOrder' }  }]
      lot.ManufacturingOrder                         as ProductionOrder,

      lot.InspectionLot                              as GoodsReceipt,
      _inprocess.InspectionLot                       as InspectionLot,

      @Consumption.valueHelpDefinition: [{ entity: { name: 'zi_vh_productionOrder', element: 'Batch' }  }]
      Batch                                          as BatchNumber,

      // association
      _inprocess
}

where
  lot.InspectionLotType = '04'
