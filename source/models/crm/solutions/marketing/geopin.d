module models.crm.solutions.marketing.geopin;

@safe:
import uim.entities;

// 
class DCRMGeoPin : DOOPEntity {
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
      "geopinId": OOPStringAttribute.descriptions(["en":"Unique ID for entity instances."]), 
      "stateCode": OOPStringAttribute.descriptions(["en":"Status of the geo pin."]), 
      "stateCode_display": OOPStringAttribute.descriptions(["en":""]), 
      "statusCode": OOPStringAttribute.descriptions(["en":"Geo-pin status reason"]), 
      "statusCode_display": OOPStringAttribute.descriptions(["en":""]), 
      "campaignGeoPinsId": OOPStringAttribute.descriptions(["en":"Unique ID for the campaign associated with the geo pin."]), 
      "centerLatitude": OOPStringAttribute.descriptions(["en":""]), 
      "centerLongitude": OOPStringAttribute.descriptions(["en":""]), 
      "city": OOPStringAttribute.descriptions(["en":"City"]), 
      "contactGeoPinsId": OOPStringAttribute.descriptions(["en":"Unique ID for the contact associated with the geo pin."]), 
      "country": OOPStringAttribute.descriptions(["en":"Country/Region"]), 
      "customerJourney": OOPStringAttribute.descriptions(["en":""]), 
      "marketingformGeoPinsId": OOPStringAttribute.descriptions(["en":"Unique ID for the marketing form associated with the geo pin."]), 
      "kpiEmailClickedCount": OOPStringAttribute.descriptions(["en":""]), 
      "kpiEmailOpenedCount": OOPStringAttribute.descriptions(["en":""]), 
      "kpiRedirectLinkClickedCount": OOPStringAttribute.descriptions(["en":""]), 
      "kpiWebsiteClickedCount": OOPStringAttribute.descriptions(["en":""]), 
      "kpiWebsiteVisitedCount": OOPStringAttribute.descriptions(["en":""]), 
      "kpiFormSubmittedCount": OOPStringAttribute.descriptions(["en":""]), 
      "leadGeoPinsId": OOPStringAttribute.descriptions(["en":"Unique ID for the lead associated with the geo pin."]), 
      "marketingEmailGeoPinsId": OOPStringAttribute.descriptions(["en":"Unique ID for the marketing email associated with the geo pin."]), 
      "marketingPageGeoPinsId": OOPStringAttribute.descriptions(["en":"Unique ID for the marketing page associated with the geo pin."]), 
      "northwestLatitude": OOPStringAttribute.descriptions(["en":""]), 
      "northwestLongitude": OOPStringAttribute.descriptions(["en":""]), 
      "postalCode": OOPStringAttribute.descriptions(["en":"Postal Code"]), 
      "redirectURLGeoPinsId": OOPStringAttribute.descriptions(["en":"Unique ID for the redirect URL associated with the geo pin."]), 
      "requestBuilderService_mktgeopins": OOPStringAttribute.descriptions(["en":""]), 
      "resultParserService_mktgeopins": OOPStringAttribute.descriptions(["en":""]), 
      "serverIdMarketing": OOPStringAttribute.descriptions(["en":""]), 
      "southeastLatitude": OOPStringAttribute.descriptions(["en":""]), 
      "southeastLongitude": OOPStringAttribute.descriptions(["en":""]), 
      "state": OOPStringAttribute.descriptions(["en":"State"]), 
      "websiteGeoPinsId": OOPStringAttribute.descriptions(["en":"Unique ID for the website associated with the geo pin."]), 
    ]);
  }

  override string entityClass() { return "aplGeoPin"; }
  override string entityClasses() { return "aplGeoPins"; }

  this(UUID myId) { 
    this(); this.id(myId); }
  this(string myName) { 
    this(); this.name(myName); }
  this(UUID myId, string myName) { 
    this(); this.id(myId).name(myName); }
  this(Json aJson) { 
    this(); this.fromJson(aJson); }
}
auto CRMGeoPin() { return new DCRMGeoPin; } 
auto CRMGeoPin(Json json) { return new DCRMGeoPin(json); } 

unittest {
  version(uim_entities) {
    assert(CRMGeoPin);
  
  auto entity = CRMGeoPin;
  // auto repository = OOPFileRepository("./tests");
/* /*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */ 
  }
}