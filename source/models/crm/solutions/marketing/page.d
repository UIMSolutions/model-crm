module models.crm.solutions.marketing.page;

@safe:
import uim.entities;

// 
  class DAPLMarketingPage : DOOPEntity {
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
      "versionNumber": OOPAttributeNumber.descriptions(["en":"Version Number"]),
      "marketingPageId": OOPAttributeString.descriptions(["en":"Unique ID for entity instances."]),
      "stateCode": OOPAttributeString.descriptions(["en":"Status of the marketing page"]),
      "stateCode_display": OOPAttributeString.descriptions(["en":""]),
      "statusCode": OOPAttributeString.descriptions(["en":"Marketing page status reason"]),
      "statusCode_display": OOPAttributeString.descriptions(["en":""]),
      "content": OOPAttributeString.descriptions(["en":""]),
      "contentType": OOPAttributeString.descriptions(["en":""]),
      "contentType_display": OOPAttributeString.descriptions(["en":""]),
      "formPageMapping": OOPAttributeString.descriptions(["en":""]),
      "knownDomains": OOPAttributeString.descriptions(["en":""]),
      "fullPageUrl": OOPAttributeUrl.descriptions(["en":""]),
      "insightsPlaceholder": OOPAttributeString.descriptions(["en":""]),
      "marketingPageTemplate": OOPAttributeString.descriptions(["en":""]),
      "marketingWebsite": OOPAttributeString.descriptions(["en":""]),
      "marketType": OOPAttributeString.descriptions(["en":""]),
      "marketType_display": OOPAttributeString.descriptions(["en":""]),
      "optimizedFor": OOPAttributeString.descriptions(["en":""]),
      "optimizedFor_display": OOPAttributeString.descriptions(["en":""]),
      "partialUrl": OOPAttributeUrl.descriptions(["en":""]),
      "purpose": OOPAttributeString.descriptions(["en":""]),
      "purpose_display": OOPAttributeString.descriptions(["en":""]),
      "remoteWebsiteID": OOPAttributeString.descriptions(["en":"Unique ID for remote entity instances."]),
      "type": OOPAttributeString.descriptions(["en":""]),
      "type_display": OOPAttributeString.descriptions(["en":""]),
      "visualStyle": OOPAttributeString.descriptions(["en":""]),
      "visualStyle_display": OOPAttributeString.descriptions(["en":""]),
      "lastPublishedDate": OOPAttributeDate.descriptions(["en":"Date and time when the marketing page was last published."]),
      "lastUnpublishedDate": OOPAttributeDate.descriptions(["en":"Date and time when the marketing page was last unpublished."]),
      "pageTemplate": OOPAttributeString.descriptions(["en":""]),
      "webPage": OOPAttributeString.descriptions(["en":""]),
      "webTemplate": OOPAttributeString.descriptions(["en":""]),
      "portalswebsite": OOPAttributeString.descriptions(["en":""]),
      "pageLanguage": OOPAttributeString.descriptions(["en":""]),
      "containerPage": OOPAttributeString.descriptions(["en":""]),
    ]);
  }

  override string entityClass() { return "aplMarketingPage"; }
  override string entityClasses() { return "aplMarketingPages"; }

  this(UUID myId) { 
    this(); this.id(myId); }
  this(string myName) { 
    this(); this.name(myName); }
  this(UUID myId, string myName) { 
    this(); this.id(myId).name(myName); }
  this(Json aJson) { 
    this(); this.fromJson(aJson); }
}
auto APLMarketingPage() { return new DAPLMarketingPage; } 
auto APLMarketingPage(Json json) { return new DAPLMarketingPage(json); } 

unittest {
  version(uim_entities) {
    assert(APLMarketingPage);
  
  auto entity = APLMarketingPage;
  // auto repository = OOPFileRepository("./tests");
/* /*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */ 
  }
}