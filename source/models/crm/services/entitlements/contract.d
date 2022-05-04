module models.crm.services.entitlements.contract;

@safe:
import uim.entities;

// 
class DCRMEntitlementContact : DOOPEntity {
  mixin(EntityThis!("CRMEntitlementContact"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "entitlementContactId": UUIDAttributeClass, // Unique identifier of the contacts for the entitlements."]),
        "importSequenceNumber": IntegerAttributeClass, //Sequence number of the import that created this record."]),
        "overriddenCreatedOn": StringAttributeClass, // Date and time that the record was migrated."]),
        "timeZoneRuleVersionNumber": IntegerAttributeClass, //For internal use only."]),
        "utcConversionTimeZoneCode": StringAttributeClass, // Time zone code that was in use when the record was created."]),
        "contactId": UUIDAttributeClass, // "]),
        "entitlementId": UUIDAttributeClass, // "])
      ])
      .registerPath("crm_entitlementcontacts");
  }
}
mixin(EntityCalls!("CRMEntitlementContact"));

unittest {
  version(test_model_crm) {
    assert(CRMEntitlementContact);
  
  auto entity = CRMEntitlementContact;
  // auto repository = OOPFileRepository("./tests");
/* /*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */ 
  }
}