module models.crm.services.entitlements.contract;

@safe:
import uim.entities;

// 
class DCRMEntitlementContact : DEntity {
  mixin(EntityThis!("CRMEntitlementContact"));

  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([
        "entitlementContactId": UUIDAttribute, // Unique identifier of the contacts for the entitlements."]),
        "importSequenceNumber": IntegerAttribute, //Sequence number of the import that created this record."]),
        "overriddenCreatedOn": StringAttribute, // Date and time that the record was migrated."]),
        "timeZoneRuleVersionNumber": IntegerAttribute, //For internal use only."]),
        "utcConversionTimeZoneCode": StringAttribute, // Time zone code that was in use when the record was created."]),
        "contactId": UUIDAttribute, // "]),
        "entitlementId": UUIDAttribute, // "])
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