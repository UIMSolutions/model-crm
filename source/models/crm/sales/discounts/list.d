module models.crm.sales.discounts.list;

@safe:
import uim.entities;

// Type of discount specified as either a percentage or an amount.
class DCRMDiscountList : DOOPEntity {
  mixin(EntityThis!("CRMDiscountList"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "discountTypeId": StringAttributeClass, // Unique identifier of the discount list."]), 
        "createdOnBehalfBy": StringAttributeClass, // Unique identifier of the delegate user who created the discounttype."]), 
        "modifiedOnBehalfBy": StringAttributeClass, // Unique identifier of the delegate user who last modified the discounttype."]), 
        "organizationId": StringAttributeClass, // Unique identifier for the organization"]), 
        "importSequenceNumber": IntegerAttributeClass, //Sequence number of the import that created this record."]), 
        "overriddenCreatedOn": StringAttributeClass, // Date and time that the record was migrated."]), 
        "timeZoneRuleVersionNumber": IntegerAttributeClass, //For internal use only."]), 
        "utcConversionTimeZoneCode": StringAttributeClass, // Time zone code that was in use when the record was created."]), 
        "isAmountType": BooleanAttributeClass, // Information about whether the discount list amounts are specified as monetary amounts or percentages."]), 
        "stateCode": StringAttributeClass, // Status of the discount list."]), 
        "stateCode_display": StringAttributeClass, // 
        "statusCode": StringAttributeClass, // Reason for the status of the discount list."]), 
        "statusCode_display": StringAttributeClass, // 
        "transactionCurrencyId": StringAttributeClass, // Unique identifier of the currency associated with the discount type."]), 
      ])
      .registerPath("crm_discountlists");
  }
}
mixin(EntityCalls!("CRMDiscountList"));

unittest {
  version(test_model_crm) {
    assert(CRMDiscountList);
  
  auto entity = CRMDiscountList;
  // auto repository = OOPFileRepository("./tests");
/* /*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */ 
  }
}