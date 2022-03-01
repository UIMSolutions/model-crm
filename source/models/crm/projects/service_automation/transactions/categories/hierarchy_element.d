module models.crm.projects.service_automation.transactions.categories.hierarchy_element;
@safe:
import uim.entities;

// Hierarchical relationship of the transaction category with a root node.
class DCRMTransactionCategoryHierarchyElement : DOOPEntity {
  mixin(OOPEntityThis!("CRMTransactionCategoryHierarchyElement"));

  override void initialize() {
    super.initialize;

    this
      .attributes([
        "createdOnBehalfBy": OOPAttributeLink("aplUser").descriptions(["en":"Unique identifier of the delegate user who created the record."]),
        "modifiedOnBehalfBy": OOPAttributeLink("aplUser").descriptions(["en":"Unique identifier of the delegate user who modified the record."]),
        "organizationId": OOPAttributeLink("aplOrganization").descriptions(["en":"Unique identifier for the organization"]),
        "stateCode": OOPStringAttribute.descriptions(["en":"Status of the Transaction Category Hierarchy Element"]),
        "stateCode_display": OOPStringAttribute.descriptions(["en":""]),
        "statusCode": OOPStringAttribute.descriptions(["en":"Reason for the status of the Transaction Category Hierarchy Element"]),
        "statusCode_display": OOPStringAttribute.descriptions(["en":""]),
        "importSequenceNumber": OOPAttributeNumber.descriptions(["en":"Sequence number of the import that created this record."]),
        "overriddenCreatedOn": OOPAttributeTimestamp.descriptions(["en":"Date and time that the record was migrated."]),
        "timeZoneRuleVersionNumber": OOPAttributeNumber.descriptions(["en":"For internal use only."]),
        "utcConversionTimeZoneCode": OOPStringAttribute.descriptions(["en":"Time zone code that was in use when the record was created."]),
        "childCategory": OOPStringAttribute.descriptions(["en":""]),
        "parentCategory": OOPStringAttribute.descriptions(["en":""]),
      ])
      .registerPath("crm_transactioncategoryhierarchyelements");
  }
}
mixin(OOPEntityCalls!("CRMTransactionCategoryHierarchyElement"));

unittest {
  version(test_model_crm) {
    assert(CRMTransactionCategoryHierarchyElement);

  auto entity = CRMTransactionCategoryHierarchyElement;
  // auto repository = OOPFileRepository("./tests");
/* /*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */ 
  }
}