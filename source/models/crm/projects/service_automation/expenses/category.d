module models.crm.projects.service_automation.expenses.category;

@safe:
import uim.entities;

// Main container that holds expense category information.
class DAPLExpenseCategory : DOOPEntity {
  this() { super();
    this.attributes([
      "createdOnBehalfBy": OOPAttributeLink("aplUser").descriptions(["en":"Unique identifier of the delegate user who created the record."]),
      "modifiedOnBehalfBy": OOPAttributeLink("aplUser").descriptions(["en":"Unique identifier of the delegate user who modified the record."]),
      "organizationId": OOPAttributeLink("aplOrganization").descriptions(["en":"Unique identifier for the organization"]),
      "stateCode": OOPAttributeString.descriptions(["en":"Status of the Expense Category"]),
      "stateCode_display": OOPAttributeString.descriptions(["en":""]),
      "statusCode": OOPAttributeString.descriptions(["en":"Reason for the status of the Expense Category"]),
      "statusCode_display": OOPAttributeString.descriptions(["en":""]),
      "importSequenceNumber": OOPAttributeNumber.descriptions(["en":"Sequence number of the import that created this record."]),
      "overriddenCreatedOn": OOPAttributeTimestamp.descriptions(["en":"Date and time that the record was migrated."]),
      "timeZoneRuleVersionNumber": OOPAttributeNumber.descriptions(["en":"For internal use only."]),
      "utcConversionTimeZoneCode": OOPAttributeString.descriptions(["en":"Time zone code that was in use when the record was created."]),
      "expenseCategoryuId": OOPAttributeUUID.descriptions(["en":"Select the Transaction Category associated with Expense Category."]),
      "expenseType": OOPAttributeString.descriptions(["en":"Enter the type of expense"]),
      "expenseType_display": OOPAttributeString.descriptions(["en":""]),
      "receiptRequired": OOPAttributeString.descriptions(["en":"Shows whether the expense entry requires a receipt."]),
      "receiptRequired_display": OOPAttributeString.descriptions(["en":"projectServiceAutomation"]),
    ]);
  }

  override string entityClass() { return "aplExpenseCategory"; }
  override string entityClasses() { return "aplExpenseCategories"; }

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
auto APLExpenseCategory() { return new DAPLExpenseCategory; } 
auto APLExpenseCategory(Json json) { return new DAPLExpenseCategory(json); } 

unittest {
  version(uim_entities) {
    assert(APLExpenseCategory);

  auto entity = APLExpenseCategory;
  // auto repository = OOPFileRepository("./tests");
/* /*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */ 
  }
}