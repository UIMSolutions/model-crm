module models.crm.solutions.marketing.email;

@safe:
import uim.entities;

// 
class DAPLMarketingEmail : DOOPEntity {
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
      "marketingEmailId": OOPAttributeString.descriptions(["en":"Unique ID for entity instances."]),
      "stateCode": OOPAttributeString.descriptions(["en":"Status of the Marketing Email"]),
      "stateCode_display": OOPAttributeString.descriptions(["en":""]),
      "statusCode": OOPAttributeString.descriptions(["en":"Marketing email status reason"]),
      "statusCode_display": OOPAttributeString.descriptions(["en":""]),
      "automaticallyGeneratePlainText": OOPAttributeString.descriptions(["en":""]),
      "clickMap": OOPAttributeString.descriptions(["en":""]),
      "designerHTML": OOPAttributeString.descriptions(["en":"Clean email body: HTML with no CSS inlining and no compression"]),
      "emailBody": OOPAttributeString.descriptions(["en":"The body of the email"]),
      "fromEmail": OOPAttributeString.descriptions(["en":""]),
      "fromName": OOPAttributeString.descriptions(["en":""]),
      "fromUser": OOPAttributeString.descriptions(["en":""]),
      "insightsPlaceholder": OOPAttributeString.descriptions(["en":""]),
      "isTemplategalleryNeeded": OOPAttributeBoolean.descriptions(["en":""]),
      "legalDesignation": OOPAttributeString.descriptions(["en":""]),
      "legalDesignation_display": OOPAttributeString.descriptions(["en":""]),
      "replyToEmail": OOPAttributeString.descriptions(["en":""]),
      "subject": OOPAttributeString.descriptions(["en":"The subject of the marketing email"]),
      "templateId": OOPAttributeUUID.descriptions(["en":"Template for the Email"]),
      "plainText": OOPAttributeString.descriptions(["en":""]),
      "to": OOPAttributeString.descriptions(["en":""]),
      "UICEntityId": OOPAttributeUUID.descriptions(["en":""]),
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
auto APLMarketingEmail() { return new DAPLMarketingEmail; } 
auto APLMarketingEmail(Json json) { return new DAPLMarketingEmail(json); } 

unittest {
  version(uim_entities) {
    assert(APLMarketingEmail);
  
  auto entity = APLMarketingEmail;
  // auto repository = OOPFileRepository("./tests");
/* /*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */ 
  }
}