@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Travel data SOV'
define root view entity ZI_TRAVEL_M_SOV as select from ztravel_sov as travel

/*ASSOCIATION */

association [0..1] to /DMO/I_Agency as _Agency on $projection.agency_id = _Agency.AgencyID 
association [0..1] to /dmo/customer as _Customer on $projection.customer_id = _Customer.customer_id
association [0..1] to I_Currency as _Currency on $projection.currency_code = _Currency.Currency

{

key mykey,
      travel_id,
      agency_id,
      customer_id,
      begin_date,
      end_date,
      @Semantics.amount.currencyCode: 'currency_code'
      booking_fee,
      @Semantics.amount.currencyCode: 'currency_code'
      total_price,
      currency_code,
      overall_status,
      description,

      /*-- Admin data --*/
      @Semantics.user.createdBy: true
      created_by,
      @Semantics.systemDateTime.createdAt: true
      created_at,
      @Semantics.user.lastChangedBy: true
      last_changed_by,
      @Semantics.systemDateTime.lastChangedAt: true
      last_changed_at,

      /* Public associations */
      _Agency,
      _Customer,
      _Currency






}
