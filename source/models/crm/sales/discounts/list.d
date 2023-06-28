module models.crm.sales.discounts.list;

@safe:
import uim.entities;

// Type of discount specified as either a percentage or an amount.
class DCRMDiscountList : DEntity {
  mixin(EntityThis!("CRMDiscountList"));

  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([
        "discountTypeId": UUIDAttribute, // Unique identifier of the discount list."]), 
        "createdOnBehalfBy": StringAttribute, // Unique identifier of the delegate user who created the discounttype."]), 
        "modifiedOnBehalfBy": StringAttribute, // Unique identifier of the delegate user who last modified the discounttype."]), 
        "organizationId": UUIDAttribute, // Unique identifier for the organization"]), 
        "importSequenceNumber": IntegerAttribute, //Sequence number of the import that created this record."]), 
        "overriddenCreatedOn": StringAttribute, // Date and time that the record was migrated."]), 
        "timeZoneRuleVersionNumber": IntegerAttribute, //For internal use only."]), 
        "utcConversionTimeZoneCode": StringAttribute, // Time zone code that was in use when the record was created."]), 
        "isAmountType": BooleanAttribute, // Information about whether the discount list amounts are specified as monetary amounts or percentages."]), 
        "stateCode": StringAttribute, // Status of the discount list."]), 
        "stateCode_display": StringAttribute, // 
        "statusCode": StringAttribute, // Reason for the status of the discount list."]), 
        "statusCode_display": StringAttribute, // 
        "transactionCurrencyId": UUIDAttribute, // Unique identifier of the currency associated with the discount type."]), 
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