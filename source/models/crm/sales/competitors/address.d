module models.crm.sales.competitors.address;

@safe:
import uim.oop;
import uim.entities;

// Additional addresses for a competitor. The first two addresses are stored in the competitor object.
class DAPLCompetitorAddress : DOOPEntity {
  this() { super();
    this.attributes([
      "createdOnBehalfBy": OOPAttributeLink("aplUser").descriptions(["en":"Unique identifier of the delegate user who created the competitor address."]),
      "modifiedOnBehalfBy": OOPAttributeLink("aplUser").descriptions(["en":"Unique identifier of the delegate user who last modified the competitor address."]),
      "importSequenceNumber": OOPAttributeNumber.descriptions(["en":"Sequence number of the import that created this record."]),
      "overriddenCreatedOn": OOPAttributeTimestamp.descriptions(["en":"Date and time that the record was migrated."]),
      "timeZoneRuleVersionNumber": OOPAttributeNumber.descriptions(["en":"For internal use only."]),
      "utcConversionTimeZoneCode": OOPAttributeString.descriptions(["en":"Time zone code that was in use when the record was created."]),
      "addressNumber": OOPAttributeNumber.descriptions(["en":"Information about which competitor address is applicable."]),
      "addressTypeCode": OOPAttributeString.descriptions(["en":"Type of address for the competitor, such as primary address."]),
      "addressTypeCode_display": OOPAttributeString.descriptions(["en":""]),
      "city": OOPAttributeString.descriptions(["en":"City name in the competitor address."]),
      "composite": OOPAttributeString.descriptions(["en":"Shows the complete address."]),
      "country": OOPAttributeString.descriptions(["en":"Country/region name in the competitor address."]),
      "county": OOPAttributeString.descriptions(["en":"County name in the competitor address."]),
      "fax": OOPAttributeString.descriptions(["en":"Fax number for the competitor address."]),
      "latitude": OOPAttributeString.descriptions(["en":"Latitude for the competitor address."]),
      "line1": OOPAttributeString.descriptions(["en":"First line for entering address information."]),
      "line2": OOPAttributeString.descriptions(["en":"Second line for entering address information."]),
      "line3": OOPAttributeString.descriptions(["en":"Third line for entering address information."]),
      "longitude": OOPAttributeString.descriptions(["en":"Longitude for the address for the competitor."]),
      "parentId": OOPAttributeUUID.descriptions(["en":"Unique identifier of the parent object with which the competitor address is associated."]),
      "postalCode": OOPAttributeString.descriptions(["en":"ZIP Code or postal code in the competitor address."]),
      "postOfficeBox": OOPAttributeString.descriptions(["en":"Post office box number in the competitor address."]),
      "shippingMethodCode": OOPAttributeString.descriptions(["en":"Method of shipment for the competitor."]),
      "shippingMethodCode_display": OOPAttributeString.descriptions(["en":""]),
      "stateOrProvince": OOPAttributeString.descriptions(["en":"State or province in the competitor address."]),
      "telephone1": OOPAttributeString.descriptions(["en":"First telephone number for the competitor address."]),
      "telephone2": OOPAttributeString.descriptions(["en":"Second telephone number for the competitor address."]),
      "telephone3": OOPAttributeString.descriptions(["en":"Third telephone number for the competitor address."]),
      "UPSZone": OOPAttributeString.descriptions(["en":"United Parcel Service (UPS) zone for the address of the competitor."]),
      "utcOffset": OOPAttributeString.descriptions(["en":"utc offset for address 1. This is the difference between local time and standard Coordinated Universal Time."]),
    ]);
  }

  override string entityClass() { return "aplCompetitorAddress"; }
  override string entityClasses() { return "aplCompetitorAddresss"; }

  this(UUID myId) { 
    this(); this.id(myId); }
  this(string myName) { 
    this(); this.name(myName); }
  this(UUID myId, string myName) { 
    this(); this.id(myId).name(myName); }
  this(Json aJson) { 
    this(); this.fromJson(aJson); }
}
auto APLCompetitorAddress() { return new DAPLCompetitorAddress; } 
auto APLCompetitorAddress(Json json) { return new DAPLCompetitorAddress(json); } 

unittest {
  version(uim_entities) {
    assert(APLCompetitorAddress);
  
  auto entity = APLCompetitorAddress;
  // auto repository = OOPFileRepository("./tests");
/*   repository.create("entities", entity.entityClasses, entity.toJson);
  
  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}