@Metadata.allowExtensions: true
@Metadata.ignorePropagatedAnnotations: true
@Endusertext: {
  Label: '###GENERATED Core Data Service Entity'
}
@Objectmodel: {
  Sapobjectnodetype.Name: 'ZAD060_STOCK'
}
@AccessControl.authorizationCheck: #MANDATORY
define root view entity ZC_AD060_STOCK
  provider contract TRANSACTIONAL_QUERY
  as projection on ZR_AD060_STOCK
  association [1..1] to ZR_AD060_STOCK as _BaseEntity on $projection.PRODUCTID = _BaseEntity.PRODUCTID
{
  key ProductID,
  ProductName,
  Category,
  @Semantics: {
    Quantity.Unitofmeasure: 'Unit'
  }
  Quantity,
  @Consumption: {
    Valuehelpdefinition: [ {
      Entity.Element: 'UnitOfMeasure', 
      Entity.Name: 'I_UnitOfMeasureStdVH', 
      Useforvalidation: true
    } ]
  }
  Unit,
  @Semantics: {
    Quantity.Unitofmeasure: 'Unit'
  }
  MinStockLevel,
  @Semantics: {
    Amount.Currencycode: 'Currency'
  }
  Price,
  @Consumption: {
    Valuehelpdefinition: [ {
      Entity.Element: 'Currency', 
      Entity.Name: 'I_CurrencyStdVH', 
      Useforvalidation: true
    } ]
  }
  Currency,
  @Semantics: {
    User.Createdby: true
  }
  CreatedBy,
  @Semantics: {
    Systemdatetime.Createdat: true
  }
  CreatedAt,
  @Semantics: {
    User.Lastchangedby: true
  }
  LastChangedBy,
  @Semantics: {
    Systemdatetime.Lastchangedat: true
  }
  LastChangedAt,
  @Semantics: {
    Systemdatetime.Localinstancelastchangedat: true
  }
  LocalLastChangedAt,
  _BaseEntity
}
