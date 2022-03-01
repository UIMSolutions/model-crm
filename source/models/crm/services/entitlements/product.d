module models.crm.services.entitlements.product;


@safe:
import uim.entities;

// The root entity for portal Ideas.
class DCRMEntitlementProduct : DOOPEntity {
  this() { super();
    this.attributes([
      "entitlementProductId": OOPUUIDAttribute.descriptions(["en":"Unique identifier of the contacts for the entitlements."]),
      "importSequenceNumber": OOPAttributeNumber.descriptions(["en":"Sequence number of the import that created this record."]),
      "overriddenCreatedOn": OOPStringAttribute.descriptions(["en":"Date and time that the record was migrated."]),
      "timeZoneRuleVersionNumber": OOPAttributeNumber.descriptions(["en":"For internal use only."]),
      "utcConversionTimeZoneCode": OOPStringAttribute.descriptions(["en":"Time zone code that was in use when the record was created."]),
      "productId": OOPUUIDAttribute.descriptions(["en":""]),
      "entitlementId": OOPUUIDAttribute.descriptions(["en":""]),
    ]);
  }

  override string entityClass() { return "aplEntitlementProduct"; }
  override string entityClasses() { return "aplEntitlementProducts"; }

  this(UUID myId) { 
    this(); this.id(myId); }
  this(string myName) { 
    this(); this.name(myName); }
  this(UUID myId, string myName) { 
    this(); this.id(myId).name(myName); }
  this(Json aJson) { 
    this(); this.fromJson(aJson); }
}
auto CRMEntitlementProduct() { return new DCRMEntitlementProduct; } 
auto CRMEntitlementProduct(Json json) { return new DCRMEntitlementProduct(json); } 

unittest {
  version(test_model_crm) {
    assert(CRMEntitlementProduct);
  
  auto entity = CRMEntitlementProduct;
  // auto repository = OOPFileRepository("./tests");
/* /*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */ 
  }
}