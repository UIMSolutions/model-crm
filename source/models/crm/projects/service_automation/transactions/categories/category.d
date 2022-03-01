module models.crm.projects.service_automation.transactions.categories.category;

@safe:
import uim.entities;

// Business transaction categories to classify costs and revenue.
class DCRMTransactionCategory : DOOPEntity {
  mixin(OOPEntityThis!("CRMTransactionCategory"));

  override void initialize() {
    super.initialize;

    this
      .attributes([
        "createdOnBehalfBy": OOPAttributeLink("aplUser").descriptions(["en":"Unique identifier of the delegate user who created the record."]),
        "modifiedOnBehalfBy": OOPAttributeLink("aplUser").descriptions(["en":"Unique identifier of the delegate user who modified the record."]),
        "organizationId": OOPAttributeLink("aplOrganization").descriptions(["en":"Unique identifier for the organization"]),
        "stateCode": OOPStringAttribute.descriptions(["en":"Status of the Transaction Category"]),
        "stateCode_display": OOPStringAttribute.descriptions(["en":""]),
        "statusCode": OOPStringAttribute.descriptions(["en":"Reason for the status of the Transaction Category"]),
        "statusCode_display": OOPStringAttribute.descriptions(["en":""]),
        "importSequenceNumber": OOPAttributeNumber.descriptions(["en":"Sequence number of the import that created this record."]),
        "overriddenCreatedOn": OOPAttributeTimestamp.descriptions(["en":"Date and time that the record was migrated."]),
        "timeZoneRuleVersionNumber": OOPAttributeNumber.descriptions(["en":"For internal use only."]),
        "utcConversionTimeZoneCode": OOPStringAttribute.descriptions(["en":"Time zone code that was in use when the record was created."]),
        "billingType": OOPStringAttribute.descriptions(["en":"Select the default billing type of project transactions in this category. Valid values are Chargeable, Non chargeable or Complimentary. Only chargeable transactions will add to an invoice total"]),
        "billingType_display": OOPStringAttribute.descriptions(["en":""]),
        "defaultUnit": OOPStringAttribute.descriptions(["en":""]),
        "unitGroup": OOPStringAttribute.descriptions(["en":"Select the unit schedule that is associated with the transaction category."]),
      ])
      .registerPath("crm_transactioncategories");
  }
}
mixin(OOPEntityCalls!("CRMTransactionCategory"));

unittest {
  version(uim_entities) {
    assert(CRMTransactionCategory);

  auto entity = CRMTransactionCategory;
  // auto repository = OOPFileRepository("./tests");
/* /*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */ 
  }
}