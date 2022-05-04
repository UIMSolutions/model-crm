module models.crm.projects.relationship_insights_unified_config;

@safe:
import uim.entities;

// 
class DCRMRelationshipInsightsUnifiedConfig : DOOPEntity {
  mixin(EntityThis!("CRMRelationshipInsightsUnifiedConfig"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "createdOnBehalfBy": UUIDAttributeClass, //Shows who created the record on behalf of another user."]),
        "modifiedOnBehalfBy": UUIDAttributeClass, //Shows who last updated the record on behalf of another user."]),
        "overriddenCreatedOn": TimestampAttributeClass, //Date and time that the record was migrated."]),
        "importSequenceNumber": IntegerAttributeClass, //Sequence number of the import that created this record."]),
        "ownerId": UUIDAttributeClass, // Owner Id"]),
        "ownerIdType": StringAttributeClass, // The type of owner, either User or Team."]),
        "owningBusinessUnitId": UUIDAttributeClass, //Unique identifier for the business unit that owns the record"]),
        "owningUserId": UUIDAttributeClass, //Unique identifier for the user that owns the record."]),
        "owningTeamId": UUIDAttributeClass, //Unique identifier for the team that owns the record."]),
        "timeZoneRuleVersionNumber": IntegerAttributeClass, //For internal use only."]),
        "utcConversionTimeZoneCode": StringAttributeClass, // Time zone code that was in use when the record was created."]),
        "relationshipInsightsUnifiedConfigId": UUIDAttributeClass, // Unique identifier for entity instances"]),
        "stateCode": StringAttributeClass, // Status of the msdyn_relationshipinsightsunifiedconfig"]),
        "stateCode_display": StringAttributeClass, //
        "statusCode": StringAttributeClass, // Reason for the status of the msdyn_relationshipinsightsunifiedconfig"]),
        "statusCode_display": StringAttributeClass, //
        "newName": StringAttributeClass, // The name of the custom entity."]),
        "useNewConfigExperience": StringAttributeClass, //
      ])
      .registerPath("crm_relationshipinsightsunifiedconfigs");
  }
}
mixin(EntityCalls!("CRMRelationshipInsightsUnifiedConfig"));

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