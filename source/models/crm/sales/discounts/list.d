module models.crm.sales.discounts.list;

@safe:
import uim.entities;

// Type of discount specified as either a percentage or an amount.
class DAPLDiscountList : DOOPEntity {
  this() { super();
    this.attributes([
      "discountTypeId": OOPAttributeString.descriptions(["en":"Unique identifier of the discount list."]), 
      "createdOnBehalfBy": OOPAttributeString.descriptions(["en":"Unique identifier of the delegate user who created the discounttype."]), 
      "modifiedOnBehalfBy": OOPAttributeString.descriptions(["en":"Unique identifier of the delegate user who last modified the discounttype."]), 
      "organizationId": OOPAttributeString.descriptions(["en":"Unique identifier for the organization"]), 
      "importSequenceNumber": OOPAttributeNumber.descriptions(["en":"Sequence number of the import that created this record."]), 
      "overriddenCreatedOn": OOPAttributeString.descriptions(["en":"Date and time that the record was migrated."]), 
      "timeZoneRuleVersionNumber": OOPAttributeNumber.descriptions(["en":"For internal use only."]), 
      "utcConversionTimeZoneCode": OOPAttributeString.descriptions(["en":"Time zone code that was in use when the record was created."]), 
      "isAmountType": OOPAttributeBoolean.descriptions(["en":"Information about whether the discount list amounts are specified as monetary amounts or percentages."]), 
      "stateCode": OOPAttributeString.descriptions(["en":"Status of the discount list."]), 
      "stateCode_display": OOPAttributeString.descriptions(["en":""]), 
      "statusCode": OOPAttributeString.descriptions(["en":"Reason for the status of the discount list."]), 
      "statusCode_display": OOPAttributeString.descriptions(["en":""]), 
      "transactionCurrencyId": OOPAttributeString.descriptions(["en":"Unique identifier of the currency associated with the discount type."]), 
    ]);
  }

  override string entityClass() { return "aplDiscountList"; }
  override string entityClasses() { return "aplDiscountLists"; }

  this(UUID myId) { 
    this(); this.id(myId); }
  this(string myName) { 
    this(); this.name(myName); }
  this(UUID myId, string myName) { 
    this(); this.id(myId).name(myName); }
  this(Json aJson) { 
    this(); this.fromJson(aJson); }

  // mixin(GetEntity!("organization", "organizationId", "APLOrganization"));

}
auto APLDiscountList() { return new DAPLDiscountList; } 
auto APLDiscountList(Json json) { return new DAPLDiscountList(json); } 

unittest {
  version(uim_entities) {
    assert(APLDiscountList);
  
  auto entity = APLDiscountList;
  // auto repository = OOPFileRepository("./tests");
/* /*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */ 
  }
}