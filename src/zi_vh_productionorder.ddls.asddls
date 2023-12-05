@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Production order value help'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity zi_vh_productionOrder as select from I_InspectionLot
{   
    @EndUserText.label: 'Production Order'
    key ManufacturingOrder,
    @EndUserText.label: 'Material'
    Material,
    @EndUserText.label: 'Batch Number'
    Batch
} where InspectionLotType = '04';
