module models.crm.services.entitlements.contract;

@safe:
import uim.entities;

// 
class DCRMEntitlementContact : DOOPEntity {
  mixin(OOPEntityThis!("CRMEntitlementContact"));

  override void initialize() {
    super.initialize;

    this
      .attributes([
        "entitlementContactId": OOPAttributeLink("aplContact").descriptions(["en":"Unique identifier of the contacts for the entitlements."]),
        "importSequenceNumber": OOPAttributeNumber.descriptions(["en":"Sequence number of the import that created this record."]),
        "overriddenCreatedOn": OOPStringAttribute.descriptions(["en":"Date and time that the record was migrated."]),
        "timeZoneRuleVersionNumber": OOPAttributeNumber.descriptions(["en":"For internal use only."]),
        "utcConversionTimeZoneCode": OOPStringAttribute.descriptions(["en":"Time zone code that was in use when the record was created."]),
        "contactId": OOPAttributeLink("aplContact").descriptions(["en":""]),
        "entitlementId": OOPUUIDAttribute.descriptions(["en":""])
      ])
      .registerPath("crm_entitlementcontacts");
  }
}
mixin(OOPEntityCalls!("CRMEntitlementContact"));

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