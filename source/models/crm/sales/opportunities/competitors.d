module models.crm.sales.opportunities.competitor;

@safe:
import uim.entities;

// Association between a competitor and a product offered by the competitor.
class DCRMOpportunityCompetitors : DOOPEntity {
  mixin(EntityThis!("CRMOpportunityCompetitor"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "opportunityCompetitorId": UUIDAttributeClass, // Unique identifier of the opportunity competitor."]),
        "importSequenceNumber": IntegerAttributeClass, //Sequence number of the import that created this record."]),
        "overriddenCreatedOn": TimestampAttributeClass, //Date and time that the record was migrated."]),
        "timeZoneRuleVersionNumber": IntegerAttributeClass, //For internal use only."]),
        "utcConversionTimeZoneCode": StringAttributeClass, // Time zone code that was in use when the record was created."]),
        "competitorId": UUIDAttributeClass, //
        "opportunityId": UUIDAttributeClass, //
      ])
      .registerPath("crm_opportunitycompetitors");
  }
}
mixin(EntityCalls!("CRMOpportunityCompetitor")); 

unittest {
  version(test_model_crm) {
    assert(CRMOpportunityCompetitors);

  auto entity = CRMOpportunityCompetitors;
  // auto repository = OOPFileRepository("./tests");
/*   repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");
  
  repository.cleanupConnections; */
  }
}