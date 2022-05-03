module models.crm.solutions.customers.segments.membership;

@safe:
import uim.entities;

// Members participating in a given segment.
class DCRMSegmentMembership : DOOPEntity {
  mixin(EntityThis!("CRMSegmentMembership"));

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
        "customerProfileId": StringAttributeClass, // Customer Profile Id"]),
        "lastEvaluationDate": DateAttributeClass, // Latest date when a segment memberships is evaluated/refreshed."]),
        "segmentId": StringAttributeClass, // Segment identifiers customers are associated with."]),
        "segmentMembershipId": StringAttributeClass, // Unique identifier for entity instances"]),
        "version": StringAttributeClass, // Denotes latest version of the customer segment membership for manual tracking."]),
        "stateCode": StringAttributeClass, // Status of the Segment Membership"]),
        "stateCode_display": StringAttributeClass, //
        "statusCode": StringAttributeClass, // Reason for the status of the Segment Membership"]),
        "statusCode_display": StringAttributeClass, //
      ])
      .registerPath("crm_segmentmemberships");
  }
}
mixin(EntityCalls!("CRMSegmentMembership"));

unittest {
  version(test_model_crm) {
    assert(CRMSegmentMembership);

  auto entity = CRMSegmentMembership;
  // auto repository = OOPFileRepository("./tests");
/* /*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */ 
  }
}