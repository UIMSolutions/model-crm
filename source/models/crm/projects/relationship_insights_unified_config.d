module models.crm.projects.relationship_insights_unified_config;

@safe:
import uim.entities;

// 
class DCRMRelationshipInsightsUnifiedConfig : DOOPEntity {
  mixin(OOPEntityThis!("CRMRelationshipInsightsUnifiedConfig"));

  override void initialize() {
    super.initialize;

    this
      .attributes([
        "createdOnBehalfBy": OOPLinkAttribute("aplUser").descriptions(["en":"Shows who created the record on behalf of another user."]),
        "modifiedOnBehalfBy": OOPLinkAttribute("aplUser").descriptions(["en":"Shows who last updated the record on behalf of another user."]),
        "overriddenCreatedOn": OOPTimestampAttribute.descriptions(["en":"Date and time that the record was migrated."]),
        "importSequenceNumber": OOPIntegerAttribute.descriptions(["en":"Sequence number of the import that created this record."]),
        "ownerId": OOPUUIDAttribute.descriptions(["en":"Owner Id"]),
        "ownerIdType": OOPStringAttribute.descriptions(["en":"The type of owner, either User or Team."]),
        "owningBusinessUnitId": OOPLinkAttribute("aplBusinessUnit").descriptions(["en":"Unique identifier for the business unit that owns the record"]),
        "owningUserId": OOPLinkAttribute("aplUser").descriptions(["en":"Unique identifier for the user that owns the record."]),
        "owningTeamId": OOPLinkAttribute("aplTeam").descriptions(["en":"Unique identifier for the team that owns the record."]),
        "timeZoneRuleVersionNumber": OOPIntegerAttribute.descriptions(["en":"For internal use only."]),
        "utcConversionTimeZoneCode": OOPStringAttribute.descriptions(["en":"Time zone code that was in use when the record was created."]),
        "relationshipInsightsUnifiedConfigId": OOPUUIDAttribute.descriptions(["en":"Unique identifier for entity instances"]),
        "stateCode": OOPStringAttribute.descriptions(["en":"Status of the msdyn_relationshipinsightsunifiedconfig"]),
        "stateCode_display": OOPStringAttribute.descriptions(["en":""]),
        "statusCode": OOPStringAttribute.descriptions(["en":"Reason for the status of the msdyn_relationshipinsightsunifiedconfig"]),
        "statusCode_display": OOPStringAttribute.descriptions(["en":""]),
        "newName": OOPStringAttribute.descriptions(["en":"The name of the custom entity."]),
        "useNewConfigExperience": OOPStringAttribute.descriptions(["en":""]),
      ])
      .registerPath("crm_relationshipinsightsunifiedconfigs");
  }
}
mixin(OOPEntityCalls!("CRMRelationshipInsightsUnifiedConfig"));

unittest {
  version(test_model_crm) {
    assert(CRMRelationshipInsightsUnifiedConfig);
  
  auto entity = CRMRelationshipInsightsUnifiedConfig;
  // auto repository = OOPFileRepository("./tests");
/* /*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */ 
  }
}