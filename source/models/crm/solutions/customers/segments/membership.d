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
        "createdOnBehalfBy": OOPStringAttribute.descriptions(["en":"Shows who created the record on behalf of another user."]),
        "modifiedOnBehalfBy": OOPStringAttribute.descriptions(["en":"Shows who last updated the record on behalf of another user."]),
        "overriddenCreatedOn": OOPStringAttribute.descriptions(["en":"Date and time that the record was migrated."]),
        "importSequenceNumber": OOPIntegerAttribute.descriptions(["en":"Sequence number of the import that created this record."]),
        "ownerId": OOPStringAttribute.descriptions(["en":"Owner Id"]),
        "ownerIdType": OOPStringAttribute.descriptions(["en":"The type of owner, either User or Team."]),
        "owningBusinessUnitId": OOPLinkAttribute("aplBusinessUnit").descriptions(["en":"Unique identifier for the business unit that owns the record"]),
        "owningUser": OOPStringAttribute.descriptions(["en":"Unique identifier of the user that owns the activity."]),
        "owningTeam": OOPStringAttribute.descriptions(["en":"Unique identifier for the team that owns the record."]),
        "timeZoneRuleVersionNumber": OOPIntegerAttribute.descriptions(["en":"For internal use only."]),
        "utcConversionTimeZoneCode": OOPStringAttribute.descriptions(["en":"Time zone code that was in use when the record was created."]),
        "customerProfileId": OOPStringAttribute.descriptions(["en":"Customer Profile Id"]),
        "lastEvaluationDate": DateAttributeClass, // Latest date when a segment memberships is evaluated/refreshed."]),
        "segmentId": OOPStringAttribute.descriptions(["en":"Segment identifiers customers are associated with."]),
        "segmentMembershipId": OOPStringAttribute.descriptions(["en":"Unique identifier for entity instances"]),
        "version": OOPStringAttribute.descriptions(["en":"Denotes latest version of the customer segment membership for manual tracking."]),
        "stateCode": OOPStringAttribute.descriptions(["en":"Status of the Segment Membership"]),
        "stateCode_display": OOPStringAttribute.descriptions(["en":""]),
        "statusCode": OOPStringAttribute.descriptions(["en":"Reason for the status of the Segment Membership"]),
        "statusCode_display": OOPStringAttribute.descriptions(["en":""]),
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