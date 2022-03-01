module models.crm.solutions.customers.activity;

@safe:
import uim.entities;

// An activity performed by a user that has observational value to the business.
class DCRMCustomerActivity : DOOPEntity {
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
      "activityName": OOPStringAttribute.descriptions(["en":"Specific fields that includes data on customer's activity."]),
      "activityType": OOPStringAttribute.descriptions(["en":""]),
      "actualEndDate": OOPAttributeDate.descriptions(["en":"End time of an activity."]),
      "actualStartDate": OOPAttributeDate.descriptions(["en":"Start time of an activity."]),
      "attachmentReferences": OOPStringAttribute.descriptions(["en":"References to any attachment(s) for an activity."]),
      "community": OOPStringAttribute.descriptions(["en":"Activity community."]),
      "customerActivityId": OOPStringAttribute.descriptions(["en":"Unique identifier for entity instances"]),
      "customerProfileId": OOPStringAttribute.descriptions(["en":""]),
      "mentions": OOPStringAttribute.descriptions(["en":"Activity mentions."]),
      "message": OOPStringAttribute.descriptions(["en":"Message."]),
      "numberOfResponses": OOPStringAttribute.descriptions(["en":"Number of responses for/on an activity, like, number of emails on a thread, number of likes on a LinkedIn, Facebook post etc."]),
      "sentiment": OOPStringAttribute.descriptions(["en":"Activity sentiment."]),
      "subject": OOPStringAttribute.descriptions(["en":"Activity subject."]),
      "Url": OOPAttributeUrl.descriptions(["en":""]),
      "version": OOPStringAttribute.descriptions(["en":"Denotes latest version of an activity for manual tracking."]),
      "viralityScore": OOPStringAttribute.descriptions(["en":"Virality score for an activity."]),
      "stateCode": OOPStringAttribute.descriptions(["en":"Status of the CustomerActivity"]),
      "stateCode_display": OOPStringAttribute.descriptions(["en":""]),
      "statusCode": OOPStringAttribute.descriptions(["en":"Reason for the status of the CustomerActivity"]),
      "statusCode_display": OOPStringAttribute.descriptions(["en":""]),
    ]);
  }

  override string entityClass() { return "aplCustomerActivity"; }
  override string entityClasses() { return "aplCustomerActivities"; }

  this(UUID myId) { 
    this(); this.id(myId); }
  this(string myName) { 
    this(); this.name(myName); }
  this(UUID myId, string myName) { 
    this(); this.id(myId).name(myName); }
  this(Json aJson) { 
    this(); this.fromJson(aJson); }

   // mixin(GetEntity!("campaign", "campaignId", "CRMCustomerActivity"));
}
auto CRMCustomerActivity() { return new DCRMCustomerActivity; } 
auto CRMCustomerActivity(Json json) { return new DCRMCustomerActivity(json); } 

unittest {
  version(uim_entities) {
    assert(CRMCustomerActivity);

  auto entity = CRMCustomerActivity;
  // auto repository = OOPFileRepository("./tests");
/* /*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */ 
  }
}