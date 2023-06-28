module models.crm.projects.service_automation.expenses.category;

@safe:
import uim.entities;

// Main container that holds expense category information.
class DCRMExpenseCategory : DEntity {
  mixin(EntityThis!("CRMExpenseCategory"));

  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([
        "createdOnBehalfBy": UUIDAttribute, //Unique identifier of the delegate user who created the record."]),
        "modifiedOnBehalfBy": UUIDAttribute, //Unique identifier of the delegate user who modified the record."]),
        "organizationId": UUIDAttribute, // Unique identifier for the organization"]),
        "stateCode": StringAttribute, // Status of the Expense Category"]),
        "stateCode_display": StringAttribute, //
        "statusCode": StringAttribute, // Reason for the status of the Expense Category"]),
        "statusCode_display": StringAttribute, //
        "importSequenceNumber": IntegerAttribute, //Sequence number of the import that created this record."]),
        "overriddenCreatedOn": TimestampAttribute, //Date and time that the record was migrated."]),
        "timeZoneRuleVersionNumber": IntegerAttribute, //For internal use only."]),
        "utcConversionTimeZoneCode": StringAttribute, // Time zone code that was in use when the record was created."]),
        "expenseCategoryuId": UUIDAttribute, // Select the Transaction Category associated with Expense Category."]),
        "expenseType": StringAttribute, // Enter the type of expense"]),
        "expenseType_display": StringAttribute, //
        "receiptRequired": StringAttribute, // Shows whether the expense entry requires a receipt."]),
        "receiptRequired_display": StringAttribute, // projectServiceAutomation"]),
      ])
      .registerPath("crm_expensecategories");
  }
}
mixin(EntityCalls!("CRMExpenseCategory"));

unittest {
  version(test_model_crm) {
    assert(CRMExpenseCategory);

  auto entity = CRMExpenseCategory;
  // auto repository = OOPFileRepository("./tests");
/* /*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */ 
  }
}