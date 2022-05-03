module models.crm.facility_equipment;

@safe:
import uim.entities;

// Resource that can be scheduled.
class DCRMFacilityEquipment : DOOPEntity {
  mixin(EntityThis!("CRMFacilityEquipment"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "equipmentId": OOPStringAttribute.descriptions(["en":"Unique identifier of the facility/equipment."]),
        "createdOnBehalfBy": OOPStringAttribute.descriptions(["en":"Unique identifier of the delegate user who created the equipment."]),
        "modifiedOnBehalfBy": OOPStringAttribute.descriptions(["en":"Unique identifier of the delegate user who last modified the equipment."]),
        "businessUnitId": OOPLinkAttribute("aplBusinessUnit").descriptions(["en":"Business Unit Id"]),
        "importSequenceNumber": OOPIntegerAttribute.descriptions(["en":"Sequence number of the import that created this record."]),
        "overriddenCreatedOn": OOPStringAttribute.descriptions(["en":"Date and time that the record was migrated."]),
        "timeZoneRuleVersionNumber": OOPIntegerAttribute.descriptions(["en":"For internal use only."]),
        "utcConversionTimeZoneCode": OOPStringAttribute.descriptions(["en":"Time zone code that was in use when the record was created."]),
        "calendarId": OOPStringAttribute.descriptions(["en":"Fiscal calendar associated with the facility/equipment."]),
        "displayInServiceViews": OOPStringAttribute.descriptions(["en":"For internal use only."]),
        "emailAddress": OOPStringAttribute.descriptions(["en":"Email address of person to contact about the use of the facility/equipment."]),
        "isDisabled": OOPBooleanAttribute.descriptions(["en":"Whether the facility/equipment is disabled or operational."]),
        "organizationId": OOPStringAttribute.descriptions(["en":"Unique identifier of the parent business unit."]),
        "siteId": OOPStringAttribute.descriptions(["en":"Site where the facility/equipment is located."]),
        "skills": OOPStringAttribute.descriptions(["en":"Skills needed to operate the facility/equipment."]),
        "timeZoneCode": OOPStringAttribute.descriptions(["en":"Local time zone where the facility/equipment is located."]),
        "exchangeRate": OOPStringAttribute.descriptions(["en":"Exchange rate for the currency associated with the equipment with respect to the base currency."]),
        "transactionCurrencyId": OOPStringAttribute.descriptions(["en":"Unique identifier of the currency associated with the equipment."]),
      ])
      .registerPath("crm_facilityequipments");
  }
}
mixin(EntityCalls!("CRMFacilityEquipment"));

unittest {
  version(test_model_crm) {
    assert(CRMFacilityEquipment);

  auto entity = CRMFacilityEquipment;
  // auto repository = OOPFileRepository("./tests");
/* /*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */ 
  }
}