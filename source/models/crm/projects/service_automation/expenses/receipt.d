module models.crm.projects.service_automation.expenses.receipt;

@safe:
import uim.entities;

// Table that contains expense receipt information.
class DCRMExpenseReceipt : DOOPEntity {
  mixin(EntityThis!("CRMExpenseReceipt"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "createdOnBehalfBy": UUIDAttributeClass, //Shows who created the record on behalf of another user."]),
        "modifiedOnBehalfBy": UUIDAttributeClass, //Shows who last updated the record on behalf of another user."]),
        "overriddenCreatedOn": TimestampAttributeClass, //Date and time that the record was migrated."]),
        "importSequenceNumber": IntegerAttributeClass, //Sequence number of the import that created this record."]),
        "ownerId": UUIDAttributeClass, // Owner Id"]),
        "ownerIdType": StringAttributeClass, // The type of owner, either User or Team."]),
        "owningBusinessUnitId": UUIDAttributeClass, //Unique identifier for the business unit that owns the record"]),
        "owningUserId": UUIDAttributeClass, //Unique identifier for the user that owns the record."]),
        "owningTeamId": UUIDAttributeClass, //Unique identifier for the team that owns the record."]),
        "timeZoneRuleVersionNumber": IntegerAttributeClass, //For internal use only."]),
        "utcConversionTimeZoneCode": StringAttributeClass, // Time zone code that was in use when the record was created."]),
        "expenseReceiptId": UUIDAttributeClass, // Unique identifier for entity instances"]),
        "stateCode": StringAttributeClass, // Status of the Expense Receipt"]),
        "stateCode_display": StringAttributeClass, //
        "statusCode": StringAttributeClass, // Reason for the status of the Expense Receipt"]),
        "statusCode_display": StringAttributeClass, //
        "expenseId": UUIDAttributeClass, // Shows the ID of the expense entry."]),
      ])
      .registerPath("crm_expensereceipts");
  }
}
mixin(EntityCalls!("CRMExpenseReceipt"));

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