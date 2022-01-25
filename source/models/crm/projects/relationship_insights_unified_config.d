module models.crm.projects.relationship_insights_unified_config;

@safe:
import uim.entities;

// 
class DAPLRelationshipInsightsUnifiedConfig : DOOPEntity {
  this() { super();
    this.attributes([
      "createdOnBehalfBy": OOPAttributeLink("aplUser").descriptions(["en":"Shows who created the record on behalf of another user."]),
      "modifiedOnBehalfBy": OOPAttributeLink("aplUser").descriptions(["en":"Shows who last updated the record on behalf of another user."]),
      "overriddenCreatedOn": OOPAttributeTimestamp.descriptions(["en":"Date and time that the record was migrated."]),
      "importSequenceNumber": OOPAttributeNumber.descriptions(["en":"Sequence number of the import that created this record."]),
      "ownerId": OOPAttributeUUID.descriptions(["en":"Owner Id"]),
      "ownerIdType": OOPAttributeString.descriptions(["en":"The type of owner, either User or Team."]),
      "owningBusinessUnitId": OOPAttributeLink("aplBusinessUnit").descriptions(["en":"Unique identifier for the business unit that owns the record"]),
      "owningUserId": OOPAttributeLink("aplUser").descriptions(["en":"Unique identifier for the user that owns the record."]),
      "owningTeamId": OOPAttributeLink("aplTeam").descriptions(["en":"Unique identifier for the team that owns the record."]),
      "timeZoneRuleVersionNumber": OOPAttributeNumber.descriptions(["en":"For internal use only."]),
      "utcConversionTimeZoneCode": OOPAttributeString.descriptions(["en":"Time zone code that was in use when the record was created."]),
      "relationshipInsightsUnifiedConfigId": OOPAttributeUUID.descriptions(["en":"Unique identifier for entity instances"]),
      "stateCode": OOPAttributeString.descriptions(["en":"Status of the msdyn_relationshipinsightsunifiedconfig"]),
      "stateCode_display": OOPAttributeString.descriptions(["en":""]),
      "statusCode": OOPAttributeString.descriptions(["en":"Reason for the status of the msdyn_relationshipinsightsunifiedconfig"]),
      "statusCode_display": OOPAttributeString.descriptions(["en":""]),
      "newName": OOPAttributeString.descriptions(["en":"The name of the custom entity."]),
      "useNewConfigExperience": OOPAttributeString.descriptions(["en":""]),
    ]);
  }

  override string entityClass() { return "aplRelationshipInsightsUnifiedConfig"; }
  override string entityClasses() { return "aplRelationshipInsightsUnifiedConfigs"; }

  this(UUID myId) { 
    this(); this.id(myId); }
  this(string myName) { 
    this(); this.name(myName); }
  this(UUID myId, string myName) { 
    this(); this.id(myId).name(myName); }
  this(Json aJson) { 
    this(); this.fromJson(aJson); }
}
auto APLRelationshipInsightsUnifiedConfig() { return new DAPLRelationshipInsightsUnifiedConfig; } 
auto APLRelationshipInsightsUnifiedConfig(Json json) { return new DAPLRelationshipInsightsUnifiedConfig(json); } 

unittest {
  version(uim_entities) {
    assert(APLRelationshipInsightsUnifiedConfig);
  
  auto entity = APLRelationshipInsightsUnifiedConfig;
  // auto repository = OOPFileRepository("./tests");
/* /*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */ 
  }
}