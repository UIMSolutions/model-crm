module models.crm.solutions.customers.segments.segment;

@safe:
import uim.entities;

// Defines a group of members that exhibit common traits.
class DCRMSegment : DOOPEntity {
  this() { super();
    this.attributes([
      "createdOnBehalfBy": OOPStringAttribute.descriptions(["en":"Shows who created the record on behalf of another user."]),
      "modifiedOnBehalfBy": OOPStringAttribute.descriptions(["en":"Shows who last updated the record on behalf of another user."]),
      "overriddenCreatedOn": OOPStringAttribute.descriptions(["en":"Date and time that the record was migrated."]),
      "importSequenceNumber": OOPAttributeNumber.descriptions(["en":"Sequence number of the import that created this record."]),
      "ownerId": OOPStringAttribute.descriptions(["en":"Owner Id"]),
      "ownerIdType": OOPStringAttribute.descriptions(["en":"The type of owner, either User or Team."]),
      "owningBusinessUnitId": OOPAttributeLink("aplBusinessUnit").descriptions(["en":"Unique identifier for the business unit that owns the record"]),
      "owningUser": OOPStringAttribute.descriptions(["en":"Unique identifier of the user that owns the activity."]),
      "owningTeam": OOPStringAttribute.descriptions(["en":"Unique identifier for the team that owns the record."]),
      "timeZoneRuleVersionNumber": OOPAttributeNumber.descriptions(["en":"For internal use only."]),
      "utcConversionTimeZoneCode": OOPStringAttribute.descriptions(["en":"Time zone code that was in use when the record was created."]),
      "lastEvaluationDate": OOPAttributeDate.descriptions(["en":"Latest date when segments are evaluated/refreshed."]),
      "memberCount": OOPStringAttribute.descriptions(["en":"Count of customers/members associated with a segment."]),
      "queryDefinition": OOPStringAttribute.descriptions(["en":"Segment definition including groups, filters, conditions etc."]),
      "segmentId": OOPStringAttribute.descriptions(["en":"Unique identifier for entity instances"]),
      "segmentType": OOPStringAttribute.descriptions(["en":"Segment type."]),
      "segmentType_display": OOPStringAttribute.descriptions(["en":""]),
      "version": OOPStringAttribute.descriptions(["en":"Denotes latest version of a segment for manual tracking."]),
      "stateCode": OOPStringAttribute.descriptions(["en":"Status of the Segment"]),
      "stateCode_display": OOPStringAttribute.descriptions(["en":""]),
      "statusCode": OOPStringAttribute.descriptions(["en":"Reason for the status of the Segment"]),
      "statusCode_display": OOPStringAttribute.descriptions(["en":""]),
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

   // mixin(GetEntity!("campaign", "campaignId", "CRMSegment"));
}
auto CRMSegment() { return new DCRMSegment; } 
auto CRMSegment(Json json) { return new DCRMSegment(json); } 

unittest {
  version(uim_entities) {
    assert(CRMSegment);

  auto entity = CRMSegment;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}