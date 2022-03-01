module models.crm.projects.service_automation.transactions.categories.classification;

@safe:
import uim.entities;

// Entity used to associate a category broadly as time, expense or material.
class DCRMTransactionCategoryClassification : DOOPEntity {
  mixin(OOPEntityThis!("CRMTransactionCategoryClassification"));

  override void initialize() {
    super.initialize;

    this
      .attributes([
        "createdOnBehalfBy": OOPAttributeLink("aplUser").descriptions(["en":"Unique identifier of the delegate user who created the record."]),
        "modifiedOnBehalfBy": OOPAttributeLink("aplUser").descriptions(["en":"Unique identifier of the delegate user who modified the record."]),
        "organizationId": OOPAttributeLink("aplOrganization").descriptions(["en":"Unique identifier for the organization"]),
        "stateCode": OOPStringAttribute.descriptions(["en":"Status of the Transaction Category Classification"]),
        "stateCode_display": OOPStringAttribute.descriptions(["en":""]),
        "statusCode": OOPStringAttribute.descriptions(["en":"Reason for the status of the Transaction Category Classification"]),
        "statusCode_display": OOPStringAttribute.descriptions(["en":""]),
        "importSequenceNumber": OOPAttributeNumber.descriptions(["en":"Sequence number of the import that created this record."]),
        "overriddenCreatedOn": OOPAttributeTimestamp.descriptions(["en":"Date and time that the record was migrated."]),
        "timeZoneRuleVersionNumber": OOPAttributeNumber.descriptions(["en":"For internal use only."]),
        "utcConversionTimeZoneCode": OOPStringAttribute.descriptions(["en":"Time zone code that was in use when the record was created."]),
        "transactionCategory": OOPStringAttribute.descriptions(["en":""]),
        "transactionClassification": OOPStringAttribute.descriptions(["en":""]),
        "transactionClassification_display": OOPStringAttribute.descriptions(["en":""]),
      ])
      .registerPath("crm_transactioncategoryclassifications");
  }
}
mixin(OOPEntityCalls!("CRMTransactionCategoryClassification"));

unittest {
  version(uim_entities) {
    assert(CRMTransactionCategoryClassification);

  auto entity = CRMTransactionCategoryClassification;
  // auto repository = OOPFileRepository("./tests");
/* /*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */ 
  }
}