module models.crm.solutions.marketing.geopin;

@safe:
import uim.entities;

// 
class DAPLGeoPin : DOOPEntity {
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
      "geopinId": OOPAttributeString.descriptions(["en":"Unique ID for entity instances."]), 
      "stateCode": OOPAttributeString.descriptions(["en":"Status of the geo pin."]), 
      "stateCode_display": OOPAttributeString.descriptions(["en":""]), 
      "statusCode": OOPAttributeString.descriptions(["en":"Geo-pin status reason"]), 
      "statusCode_display": OOPAttributeString.descriptions(["en":""]), 
      "campaignGeoPinsId": OOPAttributeString.descriptions(["en":"Unique ID for the campaign associated with the geo pin."]), 
      "centerLatitude": OOPAttributeString.descriptions(["en":""]), 
      "centerLongitude": OOPAttributeString.descriptions(["en":""]), 
      "city": OOPAttributeString.descriptions(["en":"City"]), 
      "contactGeoPinsId": OOPAttributeString.descriptions(["en":"Unique ID for the contact associated with the geo pin."]), 
      "country": OOPAttributeString.descriptions(["en":"Country/Region"]), 
      "customerJourney": OOPAttributeString.descriptions(["en":""]), 
      "marketingformGeoPinsId": OOPAttributeString.descriptions(["en":"Unique ID for the marketing form associated with the geo pin."]), 
      "kpiEmailClickedCount": OOPAttributeString.descriptions(["en":""]), 
      "kpiEmailOpenedCount": OOPAttributeString.descriptions(["en":""]), 
      "kpiRedirectLinkClickedCount": OOPAttributeString.descriptions(["en":""]), 
      "kpiWebsiteClickedCount": OOPAttributeString.descriptions(["en":""]), 
      "kpiWebsiteVisitedCount": OOPAttributeString.descriptions(["en":""]), 
      "kpiFormSubmittedCount": OOPAttributeString.descriptions(["en":""]), 
      "leadGeoPinsId": OOPAttributeString.descriptions(["en":"Unique ID for the lead associated with the geo pin."]), 
      "marketingEmailGeoPinsId": OOPAttributeString.descriptions(["en":"Unique ID for the marketing email associated with the geo pin."]), 
      "marketingPageGeoPinsId": OOPAttributeString.descriptions(["en":"Unique ID for the marketing page associated with the geo pin."]), 
      "northwestLatitude": OOPAttributeString.descriptions(["en":""]), 
      "northwestLongitude": OOPAttributeString.descriptions(["en":""]), 
      "postalCode": OOPAttributeString.descriptions(["en":"Postal Code"]), 
      "redirectURLGeoPinsId": OOPAttributeString.descriptions(["en":"Unique ID for the redirect URL associated with the geo pin."]), 
      "requestBuilderService_mktgeopins": OOPAttributeString.descriptions(["en":""]), 
      "resultParserService_mktgeopins": OOPAttributeString.descriptions(["en":""]), 
      "serverIdMarketing": OOPAttributeString.descriptions(["en":""]), 
      "southeastLatitude": OOPAttributeString.descriptions(["en":""]), 
      "southeastLongitude": OOPAttributeString.descriptions(["en":""]), 
      "state": OOPAttributeString.descriptions(["en":"State"]), 
      "websiteGeoPinsId": OOPAttributeString.descriptions(["en":"Unique ID for the website associated with the geo pin."]), 
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
auto APLGeoPin() { return new DAPLGeoPin; } 
auto APLGeoPin(Json json) { return new DAPLGeoPin(json); } 

unittest {
  version(uim_entities) {
    assert(APLGeoPin);
  
  auto entity = APLGeoPin;
  // auto repository = OOPFileRepository("./tests");
/* /*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */ 
  }
}