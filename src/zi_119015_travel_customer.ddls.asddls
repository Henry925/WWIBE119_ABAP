@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Excercise 3.5'
@Metadata.ignorePropagatedAnnotations: false
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity ZI_119015_Travel_Customer as select from ZI_119015_Travel_XT
    association[1]  to /dmo/customer as _Customer on
                 ZI_119015_Travel_XT.CustomerId = _Customer.customer_id
       {
     key TravelId,
    CustomerId,
    BeginDate,
    EndDate,
    TotalPrice,
    BookingFee,
    Price,
    CurrencyCode,
    Description,
    Status,
    _Customer
                  }
