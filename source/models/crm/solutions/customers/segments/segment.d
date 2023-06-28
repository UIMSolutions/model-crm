module models.crm.solutions.customers.segments.segment;

@safe:
import uim.entities;

// Defines a group of members that exhibit common traits.
class DCRMSegment : DEntity {
  mixin(EntityThis!("CRMSegment"));

  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([
        "createdOnBehalfBy": StringAttribute, // Shows who created the record on behalf of another user."]),
        "modifiedOnBehalfBy": StringAttribute, // Shows who last updated the record on behalf of another user."]),
        "overriddenCreatedOn": StringAttribute, // Date and time that the record was migrated."]),
        "importSequenceNumber": IntegerAttribute, //Sequence number of the import that created this record."]),
        "ownerId": UUIDAttribute, // Owner Id"]),
        "ownerIdType": StringAttribute, // The type of owner, either User or Team."]),
        "owningBusinessUnitId": UUIDAttribute, //Unique identifier for the business unit that owns the record"]),
        "owningUser": StringAttribute, // Unique identifier of the user that owns the activity."]),
        "owningTeam": StringAttribute, // Unique identifier for the team that owns the record."]),
        "timeZoneRuleVersionNumber": IntegerAttribute, //For internal use only."]),
        "utcConversionTimeZoneCode": StringAttribute, // Time zone code that was in use when the record was created."]),
        "lastEvaluationDate": DateAttribute, // Latest date when segments are evaluated/refreshed."]),
        "memberCount": StringAttribute, // Count of customers/members associated with a segment."]),
        "queryDefinition": StringAttribute, // Segment definition including groups, filters, conditions etc."]),
        "segmentId": UUIDAttribute, // Unique identifier for entity instances"]),
        "segmentType": StringAttribute, // Segment type."]),
        "segmentType_display": StringAttribute, //
        "version": StringAttribute, // Denotes latest version of a segment for manual tracking."]),
        "stateCode": StringAttribute, // Status of the Segment"]),
        "stateCode_display": StringAttribute, //
        "statusCode": StringAttribute, // Reason for the status of the Segment"]),
        "statusCode_display": StringAttribute, //
      ])
      .registerPath("crm_segments");
  }
}
mixin(EntityCalls!("CRMSegment"));

unittest {
  version(test_model_crm) {
    assert(CRMSegment);

  auto entity = CRMSegment;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}