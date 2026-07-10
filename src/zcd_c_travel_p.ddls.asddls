@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Travel Consumption Procesor'
@Metadata.allowExtensions: true
define root view entity ZCD_C_TRAVEL_P
  as projection on ZCD_I_TRAVEL_M
{
      //ZCDS_I_TRAVEL_M
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
      _Booking : redirected to composition child ZCD_C_BOOKING_P,
      _Agency,
      _Customer
}
