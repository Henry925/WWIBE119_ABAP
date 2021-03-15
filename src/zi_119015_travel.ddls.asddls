
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Übung 3.1'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity ZI_119015_Travel as select from /dmo/travel {
    key travel_id as TravelId,
    description as Description,
    customer_id as CustomerId,
    begin_date as BeginDate,
    end_date as EndDate,
    
    @Semantics.amount.currencyCode: 'CurrencyCode'
    total_price as TotalPrice,  
     @Semantics.amount.currencyCode: 'CurrencyCode'
    booking_fee as BookingFee,   
     @UI.hidden: true
    currency_code as CurrencyCode,
    
    
    status as Status
    
   
    
}
where 
status <> 'C'
