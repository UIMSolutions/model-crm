module models.crm.solutions.marketing.page;

@safe:
import uim.entities;

// 
  class DCRMMarketingPage : DOOPEntity {
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
      "versionNumber": OOPAttributeNumber.descriptions(["en":"Version Number"]),
      "marketingPageId": OOPStringAttribute.descriptions(["en":"Unique ID for entity instances."]),
      "stateCode": OOPStringAttribute.descriptions(["en":"Status of the marketing page"]),
      "stateCode_display": OOPStringAttribute.descriptions(["en":""]),
      "statusCode": OOPStringAttribute.descriptions(["en":"Marketing page status reason"]),
      "statusCode_display": OOPStringAttribute.descriptions(["en":""]),
      "content": OOPStringAttribute.descriptions(["en":""]),
      "contentType": OOPStringAttribute.descriptions(["en":""]),
      "contentType_display": OOPStringAttribute.descriptions(["en":""]),
      "formPageMapping": OOPStringAttribute.descriptions(["en":""]),
      "knownDomains": OOPStringAttribute.descriptions(["en":""]),
      "fullPageUrl": OOPAttributeUrl.descriptions(["en":""]),
      "insightsPlaceholder": OOPStringAttribute.descriptions(["en":""]),
      "marketingPageTemplate": OOPStringAttribute.descriptions(["en":""]),
      "marketingWebsite": OOPStringAttribute.descriptions(["en":""]),
      "marketType": OOPStringAttribute.descriptions(["en":""]),
      "marketType_display": OOPStringAttribute.descriptions(["en":""]),
      "optimizedFor": OOPStringAttribute.descriptions(["en":""]),
      "optimizedFor_display": OOPStringAttribute.descriptions(["en":""]),
      "partialUrl": OOPAttributeUrl.descriptions(["en":""]),
      "purpose": OOPStringAttribute.descriptions(["en":""]),
      "purpose_display": OOPStringAttribute.descriptions(["en":""]),
      "remoteWebsiteID": OOPStringAttribute.descriptions(["en":"Unique ID for remote entity instances."]),
      "type": OOPStringAttribute.descriptions(["en":""]),
      "type_display": OOPStringAttribute.descriptions(["en":""]),
      "visualStyle": OOPStringAttribute.descriptions(["en":""]),
      "visualStyle_display": OOPStringAttribute.descriptions(["en":""]),
      "lastPublishedDate": OOPAttributeDate.descriptions(["en":"Date and time when the marketing page was last published."]),
      "lastUnpublishedDate": OOPAttributeDate.descriptions(["en":"Date and time when the marketing page was last unpublished."]),
      "pageTemplate": OOPStringAttribute.descriptions(["en":""]),
      "webPage": OOPStringAttribute.descriptions(["en":""]),
      "webTemplate": OOPStringAttribute.descriptions(["en":""]),
      "portalswebsite": OOPStringAttribute.descriptions(["en":""]),
      "pageLanguage": OOPStringAttribute.descriptions(["en":""]),
      "containerPage": OOPStringAttribute.descriptions(["en":""]),
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
auto CRMMarketingPage() { return new DCRMMarketingPage; } 
auto CRMMarketingPage(Json json) { return new DCRMMarketingPage(json); } 

unittest {
  version(test_model_crm) {
    assert(CRMMarketingPage);
  
  auto entity = CRMMarketingPage;
  // auto repository = OOPFileRepository("./tests");
/* /*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */ 
  }
}