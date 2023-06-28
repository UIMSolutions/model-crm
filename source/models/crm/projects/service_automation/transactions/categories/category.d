module models.crm.projects.service_automation.transactions.categories.category;

@safe:
import uim.entities;

// Business transaction categories to classify costs and revenue.
class DCRMTransactionCategoryEntity : DEntity {
  mixin(EntityThis!("CRMTransactionCategoryEntity"));

  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([
        "createdOnBehalfBy": UUIDAttribute, //Unique identifier of the delegate user who created the record."]),
        "modifiedOnBehalfBy": UUIDAttribute, //Unique identifier of the delegate user who modified the record."]),
        "organizationId": UUIDAttribute, // Unique identifier for the organization"]),
        "stateCode": StringAttribute, // Status of the Transaction Category"]),
        "stateCode_display": StringAttribute, //
        "statusCode": StringAttribute, // Reason for the status of the Transaction Category"]),
        "statusCode_display": StringAttribute, //
        "importSequenceNumber": IntegerAttribute, //Sequence number of the import that created this record."]),
        "overriddenCreatedOn": TimestampAttribute, //Date and time that the record was migrated."]),
        "timeZoneRuleVersionNumber": IntegerAttribute, //For internal use only."]),
        "utcConversionTimeZoneCode": StringAttribute, // Time zone code that was in use when the record was created."]),
        "billingType": StringAttribute, // Select the default billing type of project transactions in this category. Valid values are Chargeable, Non chargeable or Complimentary. Only chargeable transactions will add to an invoice total"]),
        "billingType_display": StringAttribute, //
        "defaultUnit": StringAttribute, //
        "unitGroup": StringAttribute, // Select the unit schedule that is associated with the transaction category."]),
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