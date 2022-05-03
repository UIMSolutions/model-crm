module models.crm.solutions.customers.segments.segment;

@safe:
import uim.entities;

// Defines a group of members that exhibit common traits.
class DCRMSegment : DOOPEntity {
  mixin(EntityThis!("CRMSegment"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "createdOnBehalfBy": StringAttributeClass, // Shows who created the record on behalf of another user."]),
        "modifiedOnBehalfBy": StringAttributeClass, // Shows who last updated the record on behalf of another user."]),
        "overriddenCreatedOn": StringAttributeClass, // Date and time that the record was migrated."]),
        "importSequenceNumber": OOPIntegerAttribute.descriptions(["en":"Sequence number of the import that created this record."]),
        "ownerId": StringAttributeClass, // Owner Id"]),
        "ownerIdType": StringAttributeClass, // The type of owner, either User or Team."]),
        "owningBusinessUnitId": OOPLinkAttribute("aplBusinessUnit").descriptions(["en":"Unique identifier for the business unit that owns the record"]),
        "owningUser": StringAttributeClass, // Unique identifier of the user that owns the activity."]),
        "owningTeam": StringAttributeClass, // Unique identifier for the team that owns the record."]),
        "timeZoneRuleVersionNumber": OOPIntegerAttribute.descriptions(["en":"For internal use only."]),
        "utcConversionTimeZoneCode": StringAttributeClass, // Time zone code that was in use when the record was created."]),
        "lastEvaluationDate": DateAttributeClass, // Latest date when segments are evaluated/refreshed."]),
        "memberCount": StringAttributeClass, // Count of customers/members associated with a segment."]),
        "queryDefinition": StringAttributeClass, // Segment definition including groups, filters, conditions etc."]),
        "segmentId": StringAttributeClass, // Unique identifier for entity instances"]),
        "segmentType": StringAttributeClass, // Segment type."]),
        "segmentType_display": StringAttributeClass, //
        "version": StringAttributeClass, // Denotes latest version of a segment for manual tracking."]),
        "stateCode": StringAttributeClass, // Status of the Segment"]),
        "stateCode_display": StringAttributeClass, //
        "statusCode": StringAttributeClass, // Reason for the status of the Segment"]),
        "statusCode_display": StringAttributeClass, //
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