module models.crm.sales.competitors.product;

@safe:
import uim.entities;

// Association between a competitor and a product offered by the competitor.
class DCRMCompetitorProduct : DOOPEntity {
  mixin(EntityThis!("CRMCompetitorProduct"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "importSequenceNumber": IntegerAttributeClass, //Sequence number of the import that created this record."]),
        "overriddenCreatedOn": TimestampAttributeClass, //Date and time that the record was migrated."]),
        "timeZoneRuleVersionNumber": IntegerAttributeClass, //For internal use only."]),
        "utcConversionTimeZoneCode": StringAttributeClass, // Time zone code that was in use when the record was created."]),
        "competitorId": UUIDAttributeClass, //
        "productId": UUIDAttributeClass, //
      ])
      .registerPath("crm_competitorproducts");
  }
}
mixin(EntityCalls!("CRMCompetitorProduct"));

unittest {
  version(test_model_crm) {
    assert(CRMCompetitorProduct);

  auto entity = CRMCompetitorProduct;
  // auto repository = OOPFileRepository("./tests");
/* /*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */ 
  }
}