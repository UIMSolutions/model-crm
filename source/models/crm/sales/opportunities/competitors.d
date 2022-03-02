module models.crm.sales.opportunities.competitor;

@safe:
import uim.entities;

// Association between a competitor and a product offered by the competitor.
class DCRMOpportunityCompetitors : DOOPEntity {
  mixin(OOPEntityThis!("CRMOpportunityCompetitor"));

  override void initialize() {
    super.initialize;

    this
      .addAttributes([
        "opportunityCompetitorId": OOPUUIDAttribute.descriptions(["en":"Unique identifier of the opportunity competitor."]),
        "importSequenceNumber": OOPIntegerAttribute.descriptions(["en":"Sequence number of the import that created this record."]),
        "overriddenCreatedOn": OOPTimestampAttribute.descriptions(["en":"Date and time that the record was migrated."]),
        "timeZoneRuleVersionNumber": OOPIntegerAttribute.descriptions(["en":"For internal use only."]),
        "utcConversionTimeZoneCode": OOPStringAttribute.descriptions(["en":"Time zone code that was in use when the record was created."]),
        "competitorId": OOPUUIDAttribute.descriptions(["en":""]),
        "opportunityId": OOPUUIDAttribute.descriptions(["en":""]),
      ])
      .registerPath("crm_opportunitycompetitors");
  }
}
mixin(OOPEntityCalls!("CRMOpportunityCompetitor")); 

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