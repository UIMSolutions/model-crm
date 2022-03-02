module models.crm.sales.competitors.address;

@safe:
import uim.oop;
import uim.entities;

// Additional addresses for a competitor. The first two addresses are stored in the competitor object.
class DCRMCompetitorAddress : DOOPEntity {
  mixin(OOPEntityThis!("CRMCompetitorAddress"));

  override void initialize() {
    super.initialize;

    this
      .attributes([
        "createdOnBehalfBy": OOPLinkAttribute("aplUser").descriptions(["en":"Unique identifier of the delegate user who created the competitor address."]),
        "modifiedOnBehalfBy": OOPLinkAttribute("aplUser").descriptions(["en":"Unique identifier of the delegate user who last modified the competitor address."]),
        "importSequenceNumber": OOPIntegerAttribute.descriptions(["en":"Sequence number of the import that created this record."]),
        "overriddenCreatedOn": OOPTimestampAttribute.descriptions(["en":"Date and time that the record was migrated."]),
        "timeZoneRuleVersionNumber": OOPIntegerAttribute.descriptions(["en":"For internal use only."]),
        "utcConversionTimeZoneCode": OOPStringAttribute.descriptions(["en":"Time zone code that was in use when the record was created."]),
        "addressNumber": OOPIntegerAttribute.descriptions(["en":"Information about which competitor address is applicable."]),
        "addressTypeCode": OOPStringAttribute.descriptions(["en":"Type of address for the competitor, such as primary address."]),
        "addressTypeCode_display": OOPStringAttribute.descriptions(["en":""]),
        "city": OOPStringAttribute.descriptions(["en":"City name in the competitor address."]),
        "composite": OOPStringAttribute.descriptions(["en":"Shows the complete address."]),
        "country": OOPStringAttribute.descriptions(["en":"Country/region name in the competitor address."]),
        "county": OOPStringAttribute.descriptions(["en":"County name in the competitor address."]),
        "fax": OOPStringAttribute.descriptions(["en":"Fax number for the competitor address."]),
        "latitude": OOPStringAttribute.descriptions(["en":"Latitude for the competitor address."]),
        "line1": OOPStringAttribute.descriptions(["en":"First line for entering address information."]),
        "line2": OOPStringAttribute.descriptions(["en":"Second line for entering address information."]),
        "line3": OOPStringAttribute.descriptions(["en":"Third line for entering address information."]),
        "longitude": OOPStringAttribute.descriptions(["en":"Longitude for the address for the competitor."]),
        "parentId": OOPUUIDAttribute.descriptions(["en":"Unique identifier of the parent object with which the competitor address is associated."]),
        "postalCode": OOPStringAttribute.descriptions(["en":"ZIP Code or postal code in the competitor address."]),
        "postOfficeBox": OOPStringAttribute.descriptions(["en":"Post office box number in the competitor address."]),
        "shippingMethodCode": OOPStringAttribute.descriptions(["en":"Method of shipment for the competitor."]),
        "shippingMethodCode_display": OOPStringAttribute.descriptions(["en":""]),
        "stateOrProvince": OOPStringAttribute.descriptions(["en":"State or province in the competitor address."]),
        "telephone1": OOPStringAttribute.descriptions(["en":"First telephone number for the competitor address."]),
        "telephone2": OOPStringAttribute.descriptions(["en":"Second telephone number for the competitor address."]),
        "telephone3": OOPStringAttribute.descriptions(["en":"Third telephone number for the competitor address."]),
        "UPSZone": OOPStringAttribute.descriptions(["en":"United Parcel Service (UPS) zone for the address of the competitor."]),
        "utcOffset": OOPStringAttribute.descriptions(["en":"utc offset for address 1. This is the difference between local time and standard Coordinated Universal Time."]),
      ])
      .registerPath("crm_competitoraddresses");
  }
}
mixin(OOPEntityCalls!("CRMCompetitorAddress"));

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