module models.crm.projects.relationship_insights_unified_config;

@safe:
import uim.entities;

// 
class DCRMRelationshipInsightsUnifiedConfig : DOOPEntity {
  mixin(EntityThis!("CRMRelationshipInsightsUnifiedConfig"));

  override void initialize() {
    super.initialize(configSettings);

    this
      .addValues([
        "createdOnBehalfBy": UUIDAttribute, //Shows who created the record on behalf of another user."]),
        "modifiedOnBehalfBy": UUIDAttribute, //Shows who last updated the record on behalf of another user."]),
        "overriddenCreatedOn": TimestampAttribute, //Date and time that the record was migrated."]),
        "importSequenceNumber": IntegerAttribute, //Sequence number of the import that created this record."]),
        "ownerId": UUIDAttribute, // Owner Id"]),
        "ownerIdType": StringAttribute, // The type of owner, either User or Team."]),
        "owningBusinessUnitId": UUIDAttribute, //Unique identifier for the business unit that owns the record"]),
        "owningUserId": UUIDAttribute, //Unique identifier for the user that owns the record."]),
        "owningTeamId": UUIDAttribute, //Unique identifier for the team that owns the record."]),
        "timeZoneRuleVersionNumber": IntegerAttribute, //For internal use only."]),
        "utcConversionTimeZoneCode": StringAttribute, // Time zone code that was in use when the record was created."]),
        "relationshipInsightsUnifiedConfigId": UUIDAttribute, // Unique identifier for entity instances"]),
        "stateCode": StringAttribute, // Status of the msdyn_relationshipinsightsunifiedconfig"]),
        "stateCode_display": StringAttribute, //
        "statusCode": StringAttribute, // Reason for the status of the msdyn_relationshipinsightsunifiedconfig"]),
        "statusCode_display": StringAttribute, //
        "newName": StringAttribute, // The name of the custom entity."]),
        "useNewConfigExperience": StringAttribute, //
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