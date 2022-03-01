module models.crm.solutions.marketing.email;

@safe:
import uim.entities;

// 
class DCRMMarketingEmail : DOOPEntity {
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
      "marketingEmailId": OOPStringAttribute.descriptions(["en":"Unique ID for entity instances."]),
      "stateCode": OOPStringAttribute.descriptions(["en":"Status of the Marketing Email"]),
      "stateCode_display": OOPStringAttribute.descriptions(["en":""]),
      "statusCode": OOPStringAttribute.descriptions(["en":"Marketing email status reason"]),
      "statusCode_display": OOPStringAttribute.descriptions(["en":""]),
      "automaticallyGeneratePlainText": OOPStringAttribute.descriptions(["en":""]),
      "clickMap": OOPStringAttribute.descriptions(["en":""]),
      "designerHTML": OOPStringAttribute.descriptions(["en":"Clean email body: HTML with no CSS inlining and no compression"]),
      "emailBody": OOPStringAttribute.descriptions(["en":"The body of the email"]),
      "fromEmail": OOPStringAttribute.descriptions(["en":""]),
      "fromName": OOPStringAttribute.descriptions(["en":""]),
      "fromUser": OOPStringAttribute.descriptions(["en":""]),
      "insightsPlaceholder": OOPStringAttribute.descriptions(["en":""]),
      "isTemplategalleryNeeded": OOPAttributeBoolean.descriptions(["en":""]),
      "legalDesignation": OOPStringAttribute.descriptions(["en":""]),
      "legalDesignation_display": OOPStringAttribute.descriptions(["en":""]),
      "replyToEmail": OOPStringAttribute.descriptions(["en":""]),
      "subject": OOPStringAttribute.descriptions(["en":"The subject of the marketing email"]),
      "templateId": OOPUUIDAttribute.descriptions(["en":"Template for the Email"]),
      "plainText": OOPStringAttribute.descriptions(["en":""]),
      "to": OOPStringAttribute.descriptions(["en":""]),
      "UICEntityId": OOPUUIDAttribute.descriptions(["en":""]),
    ]);
  }

  override string entityClass() { return "aplMarketingEmail"; }
  override string entityClasses() { return "aplMarketingEmails"; }

  this(UUID myId) { 
    this(); this.id(myId); }
  this(string myName) { 
    this(); this.name(myName); }
  this(UUID myId, string myName) { 
    this(); this.id(myId).name(myName); }
  this(Json aJson) { 
    this(); this.fromJson(aJson); }
}
auto CRMMarketingEmail() { return new DCRMMarketingEmail; } 
auto CRMMarketingEmail(Json json) { return new DCRMMarketingEmail(json); } 

unittest {
  version(uim_entities) {
    assert(CRMMarketingEmail);
  
  auto entity = CRMMarketingEmail;
  // auto repository = OOPFileRepository("./tests");
/* /*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */ 
  }
}