module models.crm.services.entitlements.product;


@safe:
import uim.entities;

// The root entity for portal Ideas.
class DAPLEntitlementProduct : DOOPEntity {
  this() { super();
    this.attributes([
      "entitlementProductId": OOPAttributeUUID.descriptions(["en":"Unique identifier of the contacts for the entitlements."]),
      "importSequenceNumber": OOPAttributeNumber.descriptions(["en":"Sequence number of the import that created this record."]),
      "overriddenCreatedOn": OOPAttributeString.descriptions(["en":"Date and time that the record was migrated."]),
      "timeZoneRuleVersionNumber": OOPAttributeNumber.descriptions(["en":"For internal use only."]),
      "utcConversionTimeZoneCode": OOPAttributeString.descriptions(["en":"Time zone code that was in use when the record was created."]),
      "productId": OOPAttributeUUID.descriptions(["en":""]),
      "entitlementId": OOPAttributeUUID.descriptions(["en":""]),
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
auto APLEntitlementProduct() { return new DAPLEntitlementProduct; } 
auto APLEntitlementProduct(Json json) { return new DAPLEntitlementProduct(json); } 

unittest {
  version(uim_entities) {
    assert(APLEntitlementProduct);
  
  auto entity = APLEntitlementProduct;
  // auto repository = OOPFileRepository("./tests");
/* /*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */ 
  }
}