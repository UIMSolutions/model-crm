module models.crm.services.entitlements.contract;

@safe:
import uim.entities;

// 
class DAPLEntitlementContact : DOOPEntity {
  this() { super();
    this.attributes([
      "entitlementContactId": OOPAttributeLink("aplContact").descriptions(["en":"Unique identifier of the contacts for the entitlements."]),
      "importSequenceNumber": OOPAttributeNumber.descriptions(["en":"Sequence number of the import that created this record."]),
      "overriddenCreatedOn": OOPAttributeString.descriptions(["en":"Date and time that the record was migrated."]),
      "timeZoneRuleVersionNumber": OOPAttributeNumber.descriptions(["en":"For internal use only."]),
      "utcConversionTimeZoneCode": OOPAttributeString.descriptions(["en":"Time zone code that was in use when the record was created."]),
      "contactId": OOPAttributeLink("aplContact").descriptions(["en":""]),
      "entitlementId": OOPAttributeUUID.descriptions(["en":""]),
    ]);
  }

  override string entityClass() { return "aplEntitlementContact"; }
  override string entityClasses() { return "aplEntitlementContacts"; }

  this(UUID myId) { 
    this(); this.id(myId); }
  this(string myName) { 
    this(); this.name(myName); }
  this(UUID myId, string myName) { 
    this(); this.id(myId).name(myName); }
  this(Json aJson) { 
    this(); this.fromJson(aJson); }
  
  // mixin(GetEntity!("contact", "contactId", "APLContact"));
}
auto APLEntitlementContact() { return new DAPLEntitlementContact; } 
auto APLEntitlementContact(Json json) { return new DAPLEntitlementContact(json); } 

unittest {
  version(uim_entities) {
    assert(APLEntitlementContact);
  
  auto entity = APLEntitlementContact;
  // auto repository = OOPFileRepository("./tests");
/* /*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */ 
  }
}