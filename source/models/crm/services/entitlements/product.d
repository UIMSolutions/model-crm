module models.crm.services.entitlements.product;


@safe:
import uim.entities;

// The root entity for portal Ideas.
class DCRMEntitlementProduct : DOOPEntity {
  mixin(EntityThis!("CRMEntitlementProduct"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "entitlementProductId": UUIDAttributeClass, // Unique identifier of the contacts for the entitlements."]),
        "importSequenceNumber": IntegerAttributeClass, //Sequence number of the import that created this record."]),
        "overriddenCreatedOn": StringAttributeClass, // Date and time that the record was migrated."]),
        "timeZoneRuleVersionNumber": IntegerAttributeClass, //For internal use only."]),
        "utcConversionTimeZoneCode": StringAttributeClass, // Time zone code that was in use when the record was created."]),
        "productId": UUIDAttributeClass, //
        "entitlementId": UUIDAttributeClass, //
      ])
      .registerPath("crm_entitlementproducts");
  }
}
mixin(EntityCalls!("CRMEntitlementProduct"));

unittest {
  version(test_model_crm) {
    assert(CRMEntitlementProduct);
  
  auto entity = CRMEntitlementProduct;
  // auto repository = OOPFileRepository("./tests");
/* /*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */ 
  }
}