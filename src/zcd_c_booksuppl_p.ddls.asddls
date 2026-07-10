@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Booking Supplement Consumption View'
@Metadata.ignorePropagatedAnnotations: false
@Metadata.allowExtensions: true
define view entity zcd_c_booksuppl_p
  as projection on ZCD_I_BOOKSUPPL_M
{
  key travel_id,
  key booking_id,
  key booking_supplement_id,
      supplement_id,
      price,
      currency_code,
      /* Associations */
      _Travel  : redirected to ZCD_C_TRAVEL_P,
      _Booking : redirected to parent ZCD_C_BOOKING_P,
      _SupplementText
}
