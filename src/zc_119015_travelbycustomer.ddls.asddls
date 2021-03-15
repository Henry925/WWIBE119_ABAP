@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Excercise 3.4'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity ZC_119015_TravelByCustomer as select from ZI_119015_TravelByCustomer {

     key CustomerId as CustomerId,
     count(*) as numberOfTravels,
     @Semantics.amount.currencyCode: 'CurrencyCode'
     sum(TotalPrice) as TotalExpenses,
     CurrencyCode
}
group by
    CustomerId,
    CurrencyCode
    having
        count(*) > 10
