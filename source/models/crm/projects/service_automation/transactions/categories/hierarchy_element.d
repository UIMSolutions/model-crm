module models.crm.projects.service_automation.transactions.categories.hierarchy_element;
@safe:
import uim.entities;

// Hierarchical relationship of the transaction category with a root node.
class DCRMTransactionCategoryHierarchyElementEntity : DOOPEntity {
  mixin(EntityThis!("CRMTransactionCategoryHierarchyElementEntity"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "createdOnBehalfBy": UUIDAttributeClass, //Unique identifier of the delegate user who created the record."]),
        "modifiedOnBehalfBy": UUIDAttributeClass, //Unique identifier of the delegate user who modified the record."]),
        "organizationId": UUIDAttributeClass, // Unique identifier for the organization"]),
        "stateCode": StringAttributeClass, // Status of the Transaction Category Hierarchy Element"]),
        "stateCode_display": StringAttributeClass, //
        "statusCode": StringAttributeClass, // Reason for the status of the Transaction Category Hierarchy Element"]),
        "statusCode_display": StringAttributeClass, //
        "importSequenceNumber": IntegerAttributeClass, //Sequence number of the import that created this record."]),
        "overriddenCreatedOn": TimestampAttributeClass, //Date and time that the record was migrated."]),
        "timeZoneRuleVersionNumber": IntegerAttributeClass, //For internal use only."]),
        "utcConversionTimeZoneCode": StringAttributeClass, // Time zone code that was in use when the record was created."]),
        "childCategory": StringAttributeClass, //
        "parentCategory": StringAttributeClass, //
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