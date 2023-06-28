module models.crm.projects.service_automation.transactions.categories.hierarchy_element;
@safe:
import uim.entities;

// Hierarchical relationship of the transaction category with a root node.
class DCRMTransactionCategoryHierarchyElementEntity : DEntity {
  mixin(EntityThis!("CRMTransactionCategoryHierarchyElementEntity"));

  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([
        "createdOnBehalfBy": UUIDAttribute, //Unique identifier of the delegate user who created the record."]),
        "modifiedOnBehalfBy": UUIDAttribute, //Unique identifier of the delegate user who modified the record."]),
        "organizationId": UUIDAttribute, // Unique identifier for the organization"]),
        "stateCode": StringAttribute, // Status of the Transaction Category Hierarchy Element"]),
        "stateCode_display": StringAttribute, //
        "statusCode": StringAttribute, // Reason for the status of the Transaction Category Hierarchy Element"]),
        "statusCode_display": StringAttribute, //
        "importSequenceNumber": IntegerAttribute, //Sequence number of the import that created this record."]),
        "overriddenCreatedOn": TimestampAttribute, //Date and time that the record was migrated."]),
        "timeZoneRuleVersionNumber": IntegerAttribute, //For internal use only."]),
        "utcConversionTimeZoneCode": StringAttribute, // Time zone code that was in use when the record was created."]),
        "childCategory": StringAttribute, //
        "parentCategory": StringAttribute, //
      ])
      .registerPath("crm_transactioncategoryhierarchyelements");
  }
}
mixin(EntityCalls!("CRMTransactionCategoryHierarchyElementEntity"));

unittest {
  version(test_model_crm) {
    assert(CRMTransactionCategoryHierarchyElementEntity);

  auto entity = CRMTransactionCategoryHierarchyElementEntity;
  // auto repository = OOPFileRepository("./tests");
/* /*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */ 
  }
}