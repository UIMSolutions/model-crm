module models.crm.solutions.marketing.website;

@safe:
import uim.entities;

// 
class DCRMMarketingWebsite : DOOPEntity {
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
      "websiteId": OOPStringAttribute.descriptions(["en":"Unique ID for entity instances."]),
      "stateCode": OOPStringAttribute.descriptions(["en":"Status of the Website"]),
      "stateCode_display": OOPStringAttribute.descriptions(["en":""]),
      "statusCode": OOPStringAttribute.descriptions(["en":"Website status reason"]),
      "statusCode_display": OOPStringAttribute.descriptions(["en":""]),
      "insightsPlaceholder": OOPStringAttribute.descriptions(["en":""]),
      "javascriptcode": OOPStringAttribute.descriptions(["en":""]),
      "remoteWebsiteID": OOPStringAttribute.descriptions(["en":"Unique ID for remote entity instances."]),
      "shouldBeRemoved": OOPStringAttribute.descriptions(["en":""]),
      "timeout": OOPStringAttribute.descriptions(["en":""]),
      "Url": OOPAttributeUrl.descriptions(["en":""]),
      "purpose": OOPStringAttribute.descriptions(["en":""]),
      "purpose_display": OOPStringAttribute.descriptions(["en":""]),
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
auto CRMMarketingWebsite() { return new DCRMMarketingWebsite; } 
auto CRMMarketingWebsite(Json json) { return new DCRMMarketingWebsite(json); } 

unittest {
  version(uim_entities) {
    assert(CRMMarketingWebsite);
  
  auto entity = CRMMarketingWebsite;
  // auto repository = OOPFileRepository("./tests");
/* /*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */ 
  }
}