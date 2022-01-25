module models.crm.solutions.customers.activity;

@safe:
import uim.entities;

// An activity performed by a user that has observational value to the business.
class DAPLCustomerActivity : DOOPEntity {
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
      "activityName": OOPAttributeString.descriptions(["en":"Specific fields that includes data on customer's activity."]),
      "activityType": OOPAttributeString.descriptions(["en":""]),
      "actualEndDate": OOPAttributeDate.descriptions(["en":"End time of an activity."]),
      "actualStartDate": OOPAttributeDate.descriptions(["en":"Start time of an activity."]),
      "attachmentReferences": OOPAttributeString.descriptions(["en":"References to any attachment(s) for an activity."]),
      "community": OOPAttributeString.descriptions(["en":"Activity community."]),
      "customerActivityId": OOPAttributeString.descriptions(["en":"Unique identifier for entity instances"]),
      "customerProfileId": OOPAttributeString.descriptions(["en":""]),
      "mentions": OOPAttributeString.descriptions(["en":"Activity mentions."]),
      "message": OOPAttributeString.descriptions(["en":"Message."]),
      "numberOfResponses": OOPAttributeString.descriptions(["en":"Number of responses for/on an activity, like, number of emails on a thread, number of likes on a LinkedIn, Facebook post etc."]),
      "sentiment": OOPAttributeString.descriptions(["en":"Activity sentiment."]),
      "subject": OOPAttributeString.descriptions(["en":"Activity subject."]),
      "Url": OOPAttributeUrl.descriptions(["en":""]),
      "version": OOPAttributeString.descriptions(["en":"Denotes latest version of an activity for manual tracking."]),
      "viralityScore": OOPAttributeString.descriptions(["en":"Virality score for an activity."]),
      "stateCode": OOPAttributeString.descriptions(["en":"Status of the CustomerActivity"]),
      "stateCode_display": OOPAttributeString.descriptions(["en":""]),
      "statusCode": OOPAttributeString.descriptions(["en":"Reason for the status of the CustomerActivity"]),
      "statusCode_display": OOPAttributeString.descriptions(["en":""]),
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

   // mixin(GetEntity!("campaign", "campaignId", "APLCustomerActivity"));
}
auto APLCustomerActivity() { return new DAPLCustomerActivity; } 
auto APLCustomerActivity(Json json) { return new DAPLCustomerActivity(json); } 

unittest {
  version(uim_entities) {
    assert(APLCustomerActivity);

  auto entity = APLCustomerActivity;
  // auto repository = OOPFileRepository("./tests");
/* /*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */ 
  }
}