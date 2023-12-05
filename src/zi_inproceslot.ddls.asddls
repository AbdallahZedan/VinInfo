@EndUserText.label: 'In-Process LOT'
@AccessControl.authorizationCheck: #CHECK
define view entity zi_inproceslot as select from I_ManufacturingOrder as _Manfac
association[0..1] to I_InspectionSubset as _subset on $projection.InspectionLot = _subset.InspectionLot
{
key _Manfac.InspectionLot,
    _Manfac.ManufacturingOrder,
    // association 
    _subset
}
