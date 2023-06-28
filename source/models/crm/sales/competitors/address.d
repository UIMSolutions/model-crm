module models.crm.sales.competitors.address;

@safe:
import uim.oop;
import uim.entities;

// Additional addresses for a competitor. The first two addresses are stored in the competitor object.
class DCRMCompetitorAddress : DEntity {
  mixin(EntityThis!("CRMCompetitorAddress"));

  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([
        "createdOnBehalfBy": UUIDAttribute, //Unique identifier of the delegate user who created the competitor address."]),
        "modifiedOnBehalfBy": UUIDAttribute, //Unique identifier of the delegate user who last modified the competitor address."]),
        "importSequenceNumber": IntegerAttribute, //Sequence number of the import that created this record."]),
        "overriddenCreatedOn": TimestampAttribute, //Date and time that the record was migrated."]),
        "timeZoneRuleVersionNumber": IntegerAttribute, //For internal use only."]),
        "utcConversionTimeZoneCode": StringAttribute, // Time zone code that was in use when the record was created."]),
        "addressNumber": IntegerAttribute, //Information about which competitor address is applicable."]),
        "addressTypeCode": StringAttribute, // Type of address for the competitor, such as primary address."]),
        "addressTypeCode_display": StringAttribute, //
        "city": StringAttribute, // City name in the competitor address."]),
        "composite": StringAttribute, // Shows the complete address."]),
        "country": StringAttribute, // Country/region name in the competitor address."]),
        "county": StringAttribute, // County name in the competitor address."]),
        "fax": StringAttribute, // Fax number for the competitor address."]),
        "latitude": StringAttribute, // Latitude for the competitor address."]),
        "line1": StringAttribute, // First line for entering address information."]),
        "line2": StringAttribute, // Second line for entering address information."]),
        "line3": StringAttribute, // Third line for entering address information."]),
        "longitude": StringAttribute, // Longitude for the address for the competitor."]),
        "parentId": UUIDAttribute, // Unique identifier of the parent object with which the competitor address is associated."]),
        "postalCode": StringAttribute, // ZIP Code or postal code in the competitor address."]),
        "postOfficeBox": StringAttribute, // Post office box number in the competitor address."]),
        "shippingMethodCode": StringAttribute, // Method of shipment for the competitor."]),
        "shippingMethodCode_display": StringAttribute, //
        "stateOrProvince": StringAttribute, // State or province in the competitor address."]),
        "telephone1": StringAttribute, // First telephone number for the competitor address."]),
        "telephone2": StringAttribute, // Second telephone number for the competitor address."]),
        "telephone3": StringAttribute, // Third telephone number for the competitor address."]),
        "UPSZone": StringAttribute, // United Parcel Service (UPS) zone for the address of the competitor."]),
        "utcOffset": StringAttribute, // utc offset for address 1. This is the difference between local time and standard Coordinated Universal Time."]),
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