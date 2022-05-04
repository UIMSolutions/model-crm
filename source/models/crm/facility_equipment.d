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
        "equipmentId": StringAttributeClass, // Unique identifier of the facility/equipment."]),
        "createdOnBehalfBy": StringAttributeClass, // Unique identifier of the delegate user who created the equipment."]),
        "modifiedOnBehalfBy": StringAttributeClass, // Unique identifier of the delegate user who last modified the equipment."]),
        "businessUnitId": UUIDAttributeClass, //Business Unit Id"]),
        "importSequenceNumber": IntegerAttributeClass, //Sequence number of the import that created this record."]),
        "overriddenCreatedOn": StringAttributeClass, // Date and time that the record was migrated."]),
        "timeZoneRuleVersionNumber": IntegerAttributeClass, //For internal use only."]),
        "utcConversionTimeZoneCode": StringAttributeClass, // Time zone code that was in use when the record was created."]),
        "calendarId": StringAttributeClass, // Fiscal calendar associated with the facility/equipment."]),
        "displayInServiceViews": StringAttributeClass, // For internal use only."]),
        "emailAddress": StringAttributeClass, // Email address of person to contact about the use of the facility/equipment."]),
        "isDisabled": BooleanAttributeClass, // Whether the facility/equipment is disabled or operational."]),
        "organizationId": StringAttributeClass, // Unique identifier of the parent business unit."]),
        "siteId": StringAttributeClass, // Site where the facility/equipment is located."]),
        "skills": StringAttributeClass, // Skills needed to operate the facility/equipment."]),
        "timeZoneCode": StringAttributeClass, // Local time zone where the facility/equipment is located."]),
        "exchangeRate": StringAttributeClass, // Exchange rate for the currency associated with the equipment with respect to the base currency."]),
        "transactionCurrencyId": StringAttributeClass, // Unique identifier of the currency associated with the equipment."]),
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