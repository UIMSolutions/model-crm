module models.crm.projects.service_automation.expenses.receipt;

@safe:
import uim.entities;

// Table that contains expense receipt information.
class DCRMExpenseReceipt : DOOPEntity {
  this() { super();
    this.attributes([
      "createdOnBehalfBy": OOPAttributeLink("aplUser").descriptions(["en":"Shows who created the record on behalf of another user."]),
      "modifiedOnBehalfBy": OOPAttributeLink("aplUser").descriptions(["en":"Shows who last updated the record on behalf of another user."]),
      "overriddenCreatedOn": OOPAttributeTimestamp.descriptions(["en":"Date and time that the record was migrated."]),
      "importSequenceNumber": OOPAttributeNumber.descriptions(["en":"Sequence number of the import that created this record."]),
      "ownerId": OOPUUIDAttribute.descriptions(["en":"Owner Id"]),
      "ownerIdType": OOPStringAttribute.descriptions(["en":"The type of owner, either User or Team."]),
      "owningBusinessUnitId": OOPAttributeLink("aplBusinessUnit").descriptions(["en":"Unique identifier for the business unit that owns the record"]),
      "owningUserId": OOPAttributeLink("aplUser").descriptions(["en":"Unique identifier for the user that owns the record."]),
      "owningTeamId": OOPAttributeLink("aplTeam").descriptions(["en":"Unique identifier for the team that owns the record."]),
      "timeZoneRuleVersionNumber": OOPAttributeNumber.descriptions(["en":"For internal use only."]),
      "utcConversionTimeZoneCode": OOPStringAttribute.descriptions(["en":"Time zone code that was in use when the record was created."]),
      "expenseReceiptId": OOPUUIDAttribute.descriptions(["en":"Unique identifier for entity instances"]),
      "stateCode": OOPStringAttribute.descriptions(["en":"Status of the Expense Receipt"]),
      "stateCode_display": OOPStringAttribute.descriptions(["en":""]),
      "statusCode": OOPStringAttribute.descriptions(["en":"Reason for the status of the Expense Receipt"]),
      "statusCode_display": OOPStringAttribute.descriptions(["en":""]),
      "expenseId": OOPUUIDAttribute.descriptions(["en":"Shows the ID of the expense entry."]),
    ]);
  }

  override string entityClass() { return "aplExpenseReceipt"; }
  override string entityClasses() { return "aplExpenseReceipts"; }

  this(UUID myId) { 
    this(); this.id(myId); }
  this(string myName) { 
    this(); this.name(myName); }
  this(UUID myId, string myName) { 
    this(); this.id(myId).name(myName); }
  this(Json aJson) { 
    this(); this.fromJson(aJson); }
}
auto CRMExpenseReceipt() { return new DCRMExpenseReceipt; } 
auto CRMExpenseReceipt(Json json) { return new DCRMExpenseReceipt(json); } 

unittest {
  version(test_model_crm) {
    assert(CRMExpenseReceipt);

  auto entity = CRMExpenseReceipt;
  // auto repository = OOPFileRepository("./tests");
/* /*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */ 
  }
}