module models.crm.solutions.marketing.website;

@safe:
import uim.entities;

// 
class DAPLMarketingWebsite : DOOPEntity {
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
      "websiteId": OOPAttributeString.descriptions(["en":"Unique ID for entity instances."]),
      "stateCode": OOPAttributeString.descriptions(["en":"Status of the Website"]),
      "stateCode_display": OOPAttributeString.descriptions(["en":""]),
      "statusCode": OOPAttributeString.descriptions(["en":"Website status reason"]),
      "statusCode_display": OOPAttributeString.descriptions(["en":""]),
      "insightsPlaceholder": OOPAttributeString.descriptions(["en":""]),
      "javascriptcode": OOPAttributeString.descriptions(["en":""]),
      "remoteWebsiteID": OOPAttributeString.descriptions(["en":"Unique ID for remote entity instances."]),
      "shouldBeRemoved": OOPAttributeString.descriptions(["en":""]),
      "timeout": OOPAttributeString.descriptions(["en":""]),
      "Url": OOPAttributeUrl.descriptions(["en":""]),
      "purpose": OOPAttributeString.descriptions(["en":""]),
      "purpose_display": OOPAttributeString.descriptions(["en":""]),
    ]);
  }

  override string entityClass() { return "aplMarketingWebsite"; }
  override string entityClasses() { return "aplMarketingWebsites"; }

  this(UUID myId) { 
    this(); this.id(myId); }
  this(string myName) { 
    this(); this.name(myName); }
  this(UUID myId, string myName) { 
    this(); this.id(myId).name(myName); }
  this(Json aJson) { 
    this(); this.fromJson(aJson); }
}
auto APLMarketingWebsite() { return new DAPLMarketingWebsite; } 
auto APLMarketingWebsite(Json json) { return new DAPLMarketingWebsite(json); } 

unittest {
  version(uim_entities) {
    assert(APLMarketingWebsite);
  
  auto entity = APLMarketingWebsite;
  // auto repository = OOPFileRepository("./tests");
/* /*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */ 
  }
}