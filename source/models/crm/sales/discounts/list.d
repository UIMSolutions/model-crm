module models.crm.sales.discounts.list;

@safe:
import uim.entities;

// Type of discount specified as either a percentage or an amount.
class DCRMDiscountList : DOOPEntity {
  mixin(OOPEntityThis!("CRMDiscountList"));

  override void initialize() {
    super.initialize;

    this
      .attributes([
        "discountTypeId": OOPStringAttribute.descriptions(["en":"Unique identifier of the discount list."]), 
        "createdOnBehalfBy": OOPStringAttribute.descriptions(["en":"Unique identifier of the delegate user who created the discounttype."]), 
        "modifiedOnBehalfBy": OOPStringAttribute.descriptions(["en":"Unique identifier of the delegate user who last modified the discounttype."]), 
        "organizationId": OOPStringAttribute.descriptions(["en":"Unique identifier for the organization"]), 
        "importSequenceNumber": OOPIntegerAttribute.descriptions(["en":"Sequence number of the import that created this record."]), 
        "overriddenCreatedOn": OOPStringAttribute.descriptions(["en":"Date and time that the record was migrated."]), 
        "timeZoneRuleVersionNumber": OOPIntegerAttribute.descriptions(["en":"For internal use only."]), 
        "utcConversionTimeZoneCode": OOPStringAttribute.descriptions(["en":"Time zone code that was in use when the record was created."]), 
        "isAmountType": OOPBooleanAttribute.descriptions(["en":"Information about whether the discount list amounts are specified as monetary amounts or percentages."]), 
        "stateCode": OOPStringAttribute.descriptions(["en":"Status of the discount list."]), 
        "stateCode_display": OOPStringAttribute.descriptions(["en":""]), 
        "statusCode": OOPStringAttribute.descriptions(["en":"Reason for the status of the discount list."]), 
        "statusCode_display": OOPStringAttribute.descriptions(["en":""]), 
        "transactionCurrencyId": OOPStringAttribute.descriptions(["en":"Unique identifier of the currency associated with the discount type."]), 
      ])
      .registerPath("crm_discountlists");
  }
}
mixin(OOPEntityCalls!("CRMDiscountList"));

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