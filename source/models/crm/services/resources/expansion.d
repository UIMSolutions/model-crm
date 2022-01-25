module models.crm.services.resources.expansion;

@safe:
import uim.entities;

// 
class DAPLResourceExpansion : DOOPEntity {
  this() { super();
    this.attributes([
      "resourceGroupExpansionId": OOPAttributeUUID.descriptions(["en":"Unique identifier of the resource expansion record."]),
      "importSequenceNumber": OOPAttributeNumber.descriptions(["en":"Sequence number of the import that created this record."]),
      "overriddenCreatedOn": OOPAttributeString.descriptions(["en":"Date and time that the record was migrated."]),
      "timeZoneRuleVersionNumber": OOPAttributeNumber.descriptions(["en":"For internal use only."]),
      "utcConversionTimeZoneCode": OOPAttributeString.descriptions(["en":"Time zone code that was in use when the record was created."]),
      "itemId": OOPAttributeUUID.descriptions(["en":"Item that is part of expansion of resource identified by object ID. One object ID can have many item IDs."]),
      "methodCode": OOPAttributeString.descriptions(["en":"Code for retrieval method."]),
      "methodCode_display": OOPAttributeString.descriptions(["en":""]),
      "modifiedOn": OOPAttributeString.descriptions(["en":"Date and time when the record was last modified."]),
      "objectId": OOPAttributeUUID.descriptions(["en":"Object being expanded."]),
    ]);
  }

  override string entityClass() { return "aplResourceExpansion"; }
  override string entityClasses() { return "aplResourceExpansions"; }

  this(UUID myId) { 
    this(); this.id(myId); }
  this(string myName) { 
    this(); this.name(myName); }
  this(UUID myId, string myName) { 
    this(); this.id(myId).name(myName); }
  this(Json aJson) { 
    this(); this.fromJson(aJson); }
}
auto APLResourceExpansion() { return new DAPLResourceExpansion; } 
auto APLResourceExpansion(Json json) { return new DAPLResourceExpansion(json); } 

unittest {
  version(uim_entities) {
    assert(APLResourceExpansion);
  
  auto entity = APLResourceExpansion;
  // auto repository = OOPFileRepository("./tests");
/* /*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */ 
  }
}