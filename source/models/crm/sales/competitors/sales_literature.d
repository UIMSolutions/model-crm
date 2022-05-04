module models.crm.sales.competitors.sales_literature;

@safe:
import uim.entities;

// Association between a competitor and a product offered by the competitor.
class DCRMCompetitorSalesLiterature : DOOPEntity {
  mixin(EntityThis!("CRMCompetitorSalesLiterature"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "importSequenceNumber": IntegerAttributeClass, //Sequence number of the import that created this record."]),
        "overriddenCreatedOn": TimestampAttributeClass, //Date and time that the record was migrated."]),
        "timeZoneRuleVersionNumber": IntegerAttributeClass, //For internal use only."]),
        "utcConversionTimeZoneCode": StringAttributeClass, // Time zone code that was in use when the record was created."]),
        "competitorId": UUIDAttributeClass, // "])
      ])
      .registerPath("crm_competitorsalesliteratures");
  }
}
mixin(EntityCalls!("CRMCompetitorSalesLiterature"));

unittest {
  version(test_model_crm) {
    assert(CRMCompetitorSalesLiterature);

  auto entity = CRMCompetitorSalesLiterature;
  // auto repository = OOPFileRepository("./tests");
/*   repository.create("entities", entity.entityClasses, entity.toJson);
  
  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}