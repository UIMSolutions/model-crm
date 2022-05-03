module models.crm.sales.competitors.address;

@safe:
import uim.oop;
import uim.entities;

// Additional addresses for a competitor. The first two addresses are stored in the competitor object.
class DCRMCompetitorAddress : DOOPEntity {
  mixin(EntityThis!("CRMCompetitorAddress"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "createdOnBehalfBy": OOPLinkAttribute("aplUser").descriptions(["en":"Unique identifier of the delegate user who created the competitor address."]),
        "modifiedOnBehalfBy": OOPLinkAttribute("aplUser").descriptions(["en":"Unique identifier of the delegate user who last modified the competitor address."]),
        "importSequenceNumber": OOPIntegerAttribute.descriptions(["en":"Sequence number of the import that created this record."]),
        "overriddenCreatedOn": OOPTimestampAttribute.descriptions(["en":"Date and time that the record was migrated."]),
        "timeZoneRuleVersionNumber": OOPIntegerAttribute.descriptions(["en":"For internal use only."]),
        "utcConversionTimeZoneCode": StringAttributeClass, // Time zone code that was in use when the record was created."]),
        "addressNumber": OOPIntegerAttribute.descriptions(["en":"Information about which competitor address is applicable."]),
        "addressTypeCode": StringAttributeClass, // Type of address for the competitor, such as primary address."]),
        "addressTypeCode_display": StringAttributeClass, //
        "city": StringAttributeClass, // City name in the competitor address."]),
        "composite": StringAttributeClass, // Shows the complete address."]),
        "country": StringAttributeClass, // Country/region name in the competitor address."]),
        "county": StringAttributeClass, // County name in the competitor address."]),
        "fax": StringAttributeClass, // Fax number for the competitor address."]),
        "latitude": StringAttributeClass, // Latitude for the competitor address."]),
        "line1": StringAttributeClass, // First line for entering address information."]),
        "line2": StringAttributeClass, // Second line for entering address information."]),
        "line3": StringAttributeClass, // Third line for entering address information."]),
        "longitude": StringAttributeClass, // Longitude for the address for the competitor."]),
        "parentId": UUIDAttributeClass, // Unique identifier of the parent object with which the competitor address is associated."]),
        "postalCode": StringAttributeClass, // ZIP Code or postal code in the competitor address."]),
        "postOfficeBox": StringAttributeClass, // Post office box number in the competitor address."]),
        "shippingMethodCode": StringAttributeClass, // Method of shipment for the competitor."]),
        "shippingMethodCode_display": StringAttributeClass, //
        "stateOrProvince": StringAttributeClass, // State or province in the competitor address."]),
        "telephone1": StringAttributeClass, // First telephone number for the competitor address."]),
        "telephone2": StringAttributeClass, // Second telephone number for the competitor address."]),
        "telephone3": StringAttributeClass, // Third telephone number for the competitor address."]),
        "UPSZone": StringAttributeClass, // United Parcel Service (UPS) zone for the address of the competitor."]),
        "utcOffset": StringAttributeClass, // utc offset for address 1. This is the difference between local time and standard Coordinated Universal Time."]),
      ])
      .registerPath("crm_competitoraddresses");
  }
}
mixin(EntityCalls!("CRMCompetitorAddress"));

unittest {
  version(test_model_crm) {
    assert(CRMCompetitorAddress);
  
  auto entity = CRMCompetitorAddress;
  // auto repository = OOPFileRepository("./tests");
/*   repository.create("entities", entity.entityClasses, entity.toJson);
  
  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}