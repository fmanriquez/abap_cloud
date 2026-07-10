@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Approver Consumption Travel'
@Metadata.allowExtensions: true
define root view entity ZCD_C_TRAVEL_A
  as projection on ZCD_I_TRAVEL_M
{
  key travel_id          as TravelID,
      agency_id          as AgencyID,
      _Agency.Name       as AgencyName,
      customer_id        as CustomerID,
      _Customer.LastName as CustomerName,
      begin_date         as BeginDate,
      end_date           as EndDate,
      booking_fee        as BookingFee,
      total_price        as TotalPrice,
      currency_code      as CurrencyCode,
      overall_status     as TravelStatus,
      description        as Description,
      last_changed_at    as LastChangedAt,
      /* Associations */
      _Booking : redirected to composition child zcd_c_booking_a,
      _Agency,
      _Customer
}
