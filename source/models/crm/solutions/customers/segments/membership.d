module models.crm.solutions.customers.segments.membership;

@safe:
import uim.entities;

// Members participating in a given segment.
class DAPLSegmentMembership : DOOPEntity {
  this() { super();
    this.attributes([
      "createdOnBehalfBy": OOPAttributeString.descriptions(["en":"Shows who created the record on behalf of another user."]),
      "modifiedOnBehalfBy": OOPAttributeString.descriptions(["en":"Shows who last updated the record on behalf of another user."]),
      "overriddenCreatedOn": OOPAttributeString.descriptions(["en":"Date and time that the record was migrated."]),
      "importSequenceNumber": OOPAttributeNumber.descriptions(["en":"Sequence number of the import that created this record."]),
      "ownerId": OOPAttributeString.descriptions(["en":"Owner Id"]),
      "ownerIdType": OOPAttributeString.descriptions(["en":"The type of owner, either User or Team."]),
      "owningBusinessUnitId": OOPAttributeLink("aplBusinessUnit").descriptions(["en":"Unique identifier for the business unit that owns the record"]),
      "owningUser": OOPAttributeString.descriptions(["en":"Unique identifier of the user that owns the activity."]),
      "owningTeam": OOPAttributeString.descriptions(["en":"Unique identifier for the team that owns the record."]),
      "timeZoneRuleVersionNumber": OOPAttributeNumber.descriptions(["en":"For internal use only."]),
      "utcConversionTimeZoneCode": OOPAttributeString.descriptions(["en":"Time zone code that was in use when the record was created."]),
      "customerProfileId": OOPAttributeString.descriptions(["en":"Customer Profile Id"]),
      "lastEvaluationDate": OOPAttributeDate.descriptions(["en":"Latest date when a segment memberships is evaluated/refreshed."]),
      "segmentId": OOPAttributeString.descriptions(["en":"Segment identifiers customers are associated with."]),
      "segmentMembershipId": OOPAttributeString.descriptions(["en":"Unique identifier for entity instances"]),
      "version": OOPAttributeString.descriptions(["en":"Denotes latest version of the customer segment membership for manual tracking."]),
      "stateCode": OOPAttributeString.descriptions(["en":"Status of the Segment Membership"]),
      "stateCode_display": OOPAttributeString.descriptions(["en":""]),
      "statusCode": OOPAttributeString.descriptions(["en":"Reason for the status of the Segment Membership"]),
      "statusCode_display": OOPAttributeString.descriptions(["en":""]),
    ]);
  }

  override string entityClass() { return "aplSegmentMembership"; }
  override string entityClasses() { return "aplSegmentMemberships"; }

  this(UUID myId) { 
    this(); this.id(myId); }
  this(string myName) { 
    this(); this.name(myName); }
  this(UUID myId, string myName) { 
    this(); this.id(myId).name(myName); }
  this(Json aJson) { 
    this(); this.fromJson(aJson); }

   // mixin(GetEntity!("campaign", "campaignId", "APLSegmentMembership"));
}
auto APLSegmentMembership() { return new DAPLSegmentMembership; } 
auto APLSegmentMembership(Json json) { return new DAPLSegmentMembership(json); } 

unittest {
  version(uim_entities) {
    assert(APLSegmentMembership);

  auto entity = APLSegmentMembership;
  // auto repository = OOPFileRepository("./tests");
/* /*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */ 
  }
}