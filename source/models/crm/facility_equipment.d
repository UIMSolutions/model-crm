module models.crm.facility_equipment;

@safe:
import uim.entities;

// Resource that can be scheduled.
class DAPLFacilityEquipment : DOOPEntity {
  this() { super();
    this.attributes([
      "equipmentId": OOPAttributeString.descriptions(["en":"Unique identifier of the facility/equipment."]),
      "createdOnBehalfBy": OOPAttributeString.descriptions(["en":"Unique identifier of the delegate user who created the equipment."]),
      "modifiedOnBehalfBy": OOPAttributeString.descriptions(["en":"Unique identifier of the delegate user who last modified the equipment."]),
      "businessUnitId": OOPAttributeLink("aplBusinessUnit").descriptions(["en":"Business Unit Id"]),
      "importSequenceNumber": OOPAttributeNumber.descriptions(["en":"Sequence number of the import that created this record."]),
      "overriddenCreatedOn": OOPAttributeString.descriptions(["en":"Date and time that the record was migrated."]),
      "timeZoneRuleVersionNumber": OOPAttributeNumber.descriptions(["en":"For internal use only."]),
      "utcConversionTimeZoneCode": OOPAttributeString.descriptions(["en":"Time zone code that was in use when the record was created."]),
      "calendarId": OOPAttributeString.descriptions(["en":"Fiscal calendar associated with the facility/equipment."]),
      "displayInServiceViews": OOPAttributeString.descriptions(["en":"For internal use only."]),
      "emailAddress": OOPAttributeString.descriptions(["en":"Email address of person to contact about the use of the facility/equipment."]),
      "isDisabled": OOPAttributeBoolean.descriptions(["en":"Whether the facility/equipment is disabled or operational."]),
      "organizationId": OOPAttributeString.descriptions(["en":"Unique identifier of the parent business unit."]),
      "siteId": OOPAttributeString.descriptions(["en":"Site where the facility/equipment is located."]),
      "skills": OOPAttributeString.descriptions(["en":"Skills needed to operate the facility/equipment."]),
      "timeZoneCode": OOPAttributeString.descriptions(["en":"Local time zone where the facility/equipment is located."]),
      "exchangeRate": OOPAttributeString.descriptions(["en":"Exchange rate for the currency associated with the equipment with respect to the base currency."]),
      "transactionCurrencyId": OOPAttributeString.descriptions(["en":"Unique identifier of the currency associated with the equipment."]),
    ]);
  }

  override string entityClass() { return "aplFacilityEquipment"; }
  override string entityClasses() { return "aplFacilityEquipments"; }

  this(UUID myId) { 
    this(); this.id(myId); }
  this(string myName) { 
    this(); this.name(myName); }
  this(UUID myId, string myName) { 
    this(); this.id(myId).name(myName); }
  this(Json aJson) { 
    this(); this.fromJson(aJson); }

}
auto APLFacilityEquipment() { return new DAPLFacilityEquipment; } 
auto APLFacilityEquipment(Json json) { return new DAPLFacilityEquipment(json); } 

unittest {
  version(uim_entities) {
    assert(APLFacilityEquipment);

  auto entity = APLFacilityEquipment;
  // auto repository = OOPFileRepository("./tests");
/* /*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */ 
  }
}