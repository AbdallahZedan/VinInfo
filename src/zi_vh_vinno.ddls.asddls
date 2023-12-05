@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Vin Info. View'
define view entity zi_vh_vinno
  as select from zi_inproceslot
{
   key  _subset.InspectionSubsetLongCharKey as VinNo
}
