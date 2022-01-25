module models.crm.projects.service_automation.transactions.categories.hierarchy_element;
@safe:
import uim.entities;

// Hierarchical relationship of the transaction category with a root node.
class DAPLTransactionCategoryHierarchyElement : DOOPEntity {
  this() { super();
    this.attributes([
      "createdOnBehalfBy": OOPAttributeLink("aplUser").descriptions(["en":"Unique identifier of the delegate user who created the record."]),
      "modifiedOnBehalfBy": OOPAttributeLink("aplUser").descriptions(["en":"Unique identifier of the delegate user who modified the record."]),
      "organizationId": OOPAttributeLink("aplOrganization").descriptions(["en":"Unique identifier for the organization"]),
      "stateCode": OOPAttributeString.descriptions(["en":"Status of the Transaction Category Hierarchy Element"]),
      "stateCode_display": OOPAttributeString.descriptions(["en":""]),
      "statusCode": OOPAttributeString.descriptions(["en":"Reason for the status of the Transaction Category Hierarchy Element"]),
      "statusCode_display": OOPAttributeString.descriptions(["en":""]),
      "importSequenceNumber": OOPAttributeNumber.descriptions(["en":"Sequence number of the import that created this record."]),
      "overriddenCreatedOn": OOPAttributeTimestamp.descriptions(["en":"Date and time that the record was migrated."]),
      "timeZoneRuleVersionNumber": OOPAttributeNumber.descriptions(["en":"For internal use only."]),
      "utcConversionTimeZoneCode": OOPAttributeString.descriptions(["en":"Time zone code that was in use when the record was created."]),
      "childCategory": OOPAttributeString.descriptions(["en":""]),
      "parentCategory": OOPAttributeString.descriptions(["en":""]),
    ]);
  }

  override string entityClass() { return "aplTransactionCategoryHierarchyElement"; }
  override string entityClasses() { return "aplTransactionCategoryHierarchyElements"; }

  this(UUID myId) { 
    this(); this.id(myId); }
  this(string myName) { 
    this(); this.name(myName); }
  this(UUID myId, string myName) { 
    this(); this.id(myId).name(myName); }
  this(Json aJson) { 
    this(); this.fromJson(aJson); }

  // mixin(GetEntity!("organization", "organizationId", "APLOrganization"));
}
auto APLTransactionCategoryHierarchyElement() { return new DAPLTransactionCategoryHierarchyElement; } 
auto APLTransactionCategoryHierarchyElement(Json json) { return new DAPLTransactionCategoryHierarchyElement(json); } 

unittest {
  version(uim_entities) {
    assert(APLTransactionCategoryHierarchyElement);

  auto entity = APLTransactionCategoryHierarchyElement;
  // auto repository = OOPFileRepository("./tests");
/* /*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */ 
  }
}