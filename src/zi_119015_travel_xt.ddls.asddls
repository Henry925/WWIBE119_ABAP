@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Excercise 3.2'
@Metadata.ignorePropagatedAnnotations: false
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity ZI_119015_Travel_XT as select from ZI_119015_Travel {
    key TravelId,
    CustomerId,
    BeginDate,
    EndDate,
    TotalPrice,
    BookingFee,
    CurrencyCode,
    Description,
    
    
    @Semantics.amount.currencyCode: 'CurrencyCode'
    cast(cast(TotalPrice as abap.dec( 16, 2 )) - cast( BookingFee as abap.dec( 16, 2 )) as abap.curr(16,2)) as Price,
    
    case Status
        when 'B' then 'Booked'
        when 'N' then 'New'
        when 'P' then 'Planned'
       else ''
        end    as Status                    
}
