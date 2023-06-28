module models.crm.projects.service_automation.transactions.categories.classification;

@safe:
import uim.entities;

// Entity used to associate a category broadly as time, expense or material.
class DCRMTransactionCategoryClassificationEntity : DEntity {
  mixin(EntityThis!("CRMTransactionCategoryClassificationEntity"));

  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([
        "createdOnBehalfBy": UUIDAttribute, //Unique identifier of the delegate user who created the record."]),
        "modifiedOnBehalfBy": UUIDAttribute, //Unique identifier of the delegate user who modified the record."]),
        "organizationId": UUIDAttribute, // Unique identifier for the organization"]),
        "stateCode": StringAttribute, // Status of the Transaction Category Classification"]),
        "stateCode_display": StringAttribute, //
        "statusCode": StringAttribute, // Reason for the status of the Transaction Category Classification"]),
        "statusCode_display": StringAttribute, //
        "importSequenceNumber": IntegerAttribute, //Sequence number of the import that created this record."]),
        "overriddenCreatedOn": TimestampAttribute, //Date and time that the record was migrated."]),
        "timeZoneRuleVersionNumber": IntegerAttribute, //For internal use only."]),
        "utcConversionTimeZoneCode": StringAttribute, // Time zone code that was in use when the record was created."]),
        "transactionCategory": StringAttribute, //
        "transactionClassification": StringAttribute, //
        "transactionClassification_display": StringAttribute, //
      ])
      .registerPath("crm_transactioncategoryclassifications");
  }
}
mixin(EntityCalls!("CRMTransactionCategoryClassificationEntity"));

unittest {
  version(test_model_crm) {
    assert(CRMTransactionCategoryClassificationEntity);

  auto entity = CRMTransactionCategoryClassificationEntity;
  // auto repository = OOPFileRepository("./tests");
/* /*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */ 
  }
}