@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Excercise 3.3'
@Metadata.ignorePropagatedAnnotations: false
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity ZI_119015_TravelByCustomer as select from ZI_119015_Travel_XT {
    key concat_with_space(TravelId, Description,1) as Travel,
    CustomerId,
    BeginDate,
    EndDate,
    dats_days_between(BeginDate,EndDate) as Duration,
    
     @Semantics.amount.currencyCode: 'CurrencyCode'
    currency_conversion(amount => Price, 
                        source_currency => CurrencyCode,
                        target_currency => cast('EUR' as abap.cuky),
                        exchange_rate_date => EndDate) as Price,
                
     
    @Semantics.amount.currencyCode: 'CurrencyCode'
    currency_conversion(amount => Price, 
                        source_currency => CurrencyCode,
                        target_currency => cast('EUR' as abap.cuky),
                        exchange_rate_date => EndDate) as TotalPrice,
   @Semantics.amount.currencyCode: 'CurrencyCode'
    currency_conversion(amount => Price, 
                        source_currency => CurrencyCode,
                        target_currency => cast('EUR' as abap.cuky),
                        exchange_rate_date => EndDate) as BookingFee,
                        
    cast('EUR' as abap.cuky) as CurrencyCode,
    
    Status
}
