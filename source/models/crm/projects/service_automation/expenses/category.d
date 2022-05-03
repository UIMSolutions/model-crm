module models.crm.projects.service_automation.expenses.category;

@safe:
import uim.entities;

// Main container that holds expense category information.
class DCRMExpenseCategory : DOOPEntity {
  mixin(EntityThis!("CRMExpenseCategory"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "createdOnBehalfBy": OOPLinkAttribute("aplUser").descriptions(["en":"Unique identifier of the delegate user who created the record."]),
        "modifiedOnBehalfBy": OOPLinkAttribute("aplUser").descriptions(["en":"Unique identifier of the delegate user who modified the record."]),
        "organizationId": OOPLinkAttribute("aplOrganization").descriptions(["en":"Unique identifier for the organization"]),
        "stateCode": OOPStringAttribute.descriptions(["en":"Status of the Expense Category"]),
        "stateCode_display": OOPStringAttribute.descriptions(["en":""]),
        "statusCode": OOPStringAttribute.descriptions(["en":"Reason for the status of the Expense Category"]),
        "statusCode_display": OOPStringAttribute.descriptions(["en":""]),
        "importSequenceNumber": OOPIntegerAttribute.descriptions(["en":"Sequence number of the import that created this record."]),
        "overriddenCreatedOn": OOPTimestampAttribute.descriptions(["en":"Date and time that the record was migrated."]),
        "timeZoneRuleVersionNumber": OOPIntegerAttribute.descriptions(["en":"For internal use only."]),
        "utcConversionTimeZoneCode": OOPStringAttribute.descriptions(["en":"Time zone code that was in use when the record was created."]),
        "expenseCategoryuId": OOPUUIDAttribute.descriptions(["en":"Select the Transaction Category associated with Expense Category."]),
        "expenseType": OOPStringAttribute.descriptions(["en":"Enter the type of expense"]),
        "expenseType_display": OOPStringAttribute.descriptions(["en":""]),
        "receiptRequired": OOPStringAttribute.descriptions(["en":"Shows whether the expense entry requires a receipt."]),
        "receiptRequired_display": OOPStringAttribute.descriptions(["en":"projectServiceAutomation"]),
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