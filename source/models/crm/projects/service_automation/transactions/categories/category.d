module models.crm.projects.service_automation.transactions.categories.category;

@safe:
import uim.entities;

// Business transaction categories to classify costs and revenue.
class DAPLTransactionCategory : DOOPEntity {
  this() { super();
    this.attributes([
      "createdOnBehalfBy": OOPAttributeLink("aplUser").descriptions(["en":"Unique identifier of the delegate user who created the record."]),
      "modifiedOnBehalfBy": OOPAttributeLink("aplUser").descriptions(["en":"Unique identifier of the delegate user who modified the record."]),
      "organizationId": OOPAttributeLink("aplOrganization").descriptions(["en":"Unique identifier for the organization"]),
      "stateCode": OOPAttributeString.descriptions(["en":"Status of the Transaction Category"]),
      "stateCode_display": OOPAttributeString.descriptions(["en":""]),
      "statusCode": OOPAttributeString.descriptions(["en":"Reason for the status of the Transaction Category"]),
      "statusCode_display": OOPAttributeString.descriptions(["en":""]),
      "importSequenceNumber": OOPAttributeNumber.descriptions(["en":"Sequence number of the import that created this record."]),
      "overriddenCreatedOn": OOPAttributeTimestamp.descriptions(["en":"Date and time that the record was migrated."]),
      "timeZoneRuleVersionNumber": OOPAttributeNumber.descriptions(["en":"For internal use only."]),
      "utcConversionTimeZoneCode": OOPAttributeString.descriptions(["en":"Time zone code that was in use when the record was created."]),
      "billingType": OOPAttributeString.descriptions(["en":"Select the default billing type of project transactions in this category. Valid values are Chargeable, Non chargeable or Complimentary. Only chargeable transactions will add to an invoice total"]),
      "billingType_display": OOPAttributeString.descriptions(["en":""]),
      "defaultUnit": OOPAttributeString.descriptions(["en":""]),
      "unitGroup": OOPAttributeString.descriptions(["en":"Select the unit schedule that is associated with the transaction category."]),
    ]);
  }

  override string entityClass() { return "aplTransactionCategory"; }
  override string entityClasses() { return "aplTransactionCategories"; }

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
auto APLTransactionCategory() { return new DAPLTransactionCategory; } 
auto APLTransactionCategory(Json json) { return new DAPLTransactionCategory(json); } 

unittest {
  version(uim_entities) {
    assert(APLTransactionCategory);

  auto entity = APLTransactionCategory;
  // auto repository = OOPFileRepository("./tests");
/* /*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */ 
  }
}