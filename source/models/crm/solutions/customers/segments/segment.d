module models.crm.solutions.customers.segments.segment;

@safe:
import uim.entities;

// Defines a group of members that exhibit common traits.
class DAPLSegment : DOOPEntity {
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
      "lastEvaluationDate": OOPAttributeDate.descriptions(["en":"Latest date when segments are evaluated/refreshed."]),
      "memberCount": OOPAttributeString.descriptions(["en":"Count of customers/members associated with a segment."]),
      "queryDefinition": OOPAttributeString.descriptions(["en":"Segment definition including groups, filters, conditions etc."]),
      "segmentId": OOPAttributeString.descriptions(["en":"Unique identifier for entity instances"]),
      "segmentType": OOPAttributeString.descriptions(["en":"Segment type."]),
      "segmentType_display": OOPAttributeString.descriptions(["en":""]),
      "version": OOPAttributeString.descriptions(["en":"Denotes latest version of a segment for manual tracking."]),
      "stateCode": OOPAttributeString.descriptions(["en":"Status of the Segment"]),
      "stateCode_display": OOPAttributeString.descriptions(["en":""]),
      "statusCode": OOPAttributeString.descriptions(["en":"Reason for the status of the Segment"]),
      "statusCode_display": OOPAttributeString.descriptions(["en":""]),
    ]);
  }

  override string entityClass() { return "aplSegment"; }
  override string entityClasses() { return "aplSegments"; }

  this(UUID myId) { 
    this(); this.id(myId); }
  this(string myName) { 
    this(); this.name(myName); }
  this(UUID myId, string myName) { 
    this(); this.id(myId).name(myName); }
  this(Json aJson) { 
    this(); this.fromJson(aJson); }

   // mixin(GetEntity!("campaign", "campaignId", "APLSegment"));
}
auto APLSegment() { return new DAPLSegment; } 
auto APLSegment(Json json) { return new DAPLSegment(json); } 

unittest {
  version(uim_entities) {
    assert(APLSegment);

  auto entity = APLSegment;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}