module models.crm.projects.service_automation.transactions.categories.category;

@safe:
import uim.entities;

// Business transaction categories to classify costs and revenue.
class DCRMTransactionCategoryEntity : DOOPEntity {
  mixin(EntityThis!("CRMTransactionCategoryEntity"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "createdOnBehalfBy": UUIDAttributeClass, //Unique identifier of the delegate user who created the record."]),
        "modifiedOnBehalfBy": UUIDAttributeClass, //Unique identifier of the delegate user who modified the record."]),
        "organizationId": UUIDAttributeClass, // Unique identifier for the organization"]),
        "stateCode": StringAttributeClass, // Status of the Transaction Category"]),
        "stateCode_display": StringAttributeClass, //
        "statusCode": StringAttributeClass, // Reason for the status of the Transaction Category"]),
        "statusCode_display": StringAttributeClass, //
        "importSequenceNumber": IntegerAttributeClass, //Sequence number of the import that created this record."]),
        "overriddenCreatedOn": TimestampAttributeClass, //Date and time that the record was migrated."]),
        "timeZoneRuleVersionNumber": IntegerAttributeClass, //For internal use only."]),
        "utcConversionTimeZoneCode": StringAttributeClass, // Time zone code that was in use when the record was created."]),
        "billingType": StringAttributeClass, // Select the default billing type of project transactions in this category. Valid values are Chargeable, Non chargeable or Complimentary. Only chargeable transactions will add to an invoice total"]),
        "billingType_display": StringAttributeClass, //
        "defaultUnit": StringAttributeClass, //
        "unitGroup": StringAttributeClass, // Select the unit schedule that is associated with the transaction category."]),
      ])
      .registerPath("crm_transactioncategories");
  }
}
mixin(EntityCalls!("CRMTransactionCategoryEntity"));

unittest {
  version(test_model_crm) {
    assert(CRMTransactionCategoryEntity);

  auto entity = CRMTransactionCategoryEntity;
  // auto repository = OOPFileRepository("./tests");
/* /*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */ 
  }
}