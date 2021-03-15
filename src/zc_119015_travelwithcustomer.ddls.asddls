@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Excercise 3.5'
@Metadata.ignorePropagatedAnnotations: false
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity ZC_119015_TravelWithCustomer as select from ZI_119015_Travel_Customer {
    key TravelId,
    CustomerId,
    BeginDate,
    _Customer.first_name,
    _Customer.last_name,
    EndDate,
    TotalPrice,
    BookingFee,
    Price,
    CurrencyCode,
    Description,
    Status,
    /* Associations */
    _Customer
}
