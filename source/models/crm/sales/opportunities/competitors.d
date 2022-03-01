module models.crm.sales.opportunities.competitors;

@safe:
import uim.entities;

// Association between a competitor and a product offered by the competitor.
class DCRMOpportunityCompetitors : DOOPEntity {
  this() { super();
    this.attributes([
      "opportunityCompetitorId": OOPUUIDAttribute.descriptions(["en":"Unique identifier of the opportunity competitor."]),
      "importSequenceNumber": OOPAttributeNumber.descriptions(["en":"Sequence number of the import that created this record."]),
      "overriddenCreatedOn": OOPAttributeTimestamp.descriptions(["en":"Date and time that the record was migrated."]),
      "timeZoneRuleVersionNumber": OOPAttributeNumber.descriptions(["en":"For internal use only."]),
      "utcConversionTimeZoneCode": OOPStringAttribute.descriptions(["en":"Time zone code that was in use when the record was created."]),
      "competitorId": OOPUUIDAttribute.descriptions(["en":""]),
      "opportunityId": OOPUUIDAttribute.descriptions(["en":""]),
    ]);
  }

  override string entityClass() { return "aplOpportunityCompetitors"; }
  override string entityClasses() { return "aplOpportunityCompetitorss"; }

  this(UUID myId) { 
    this(); this.id(myId); }
  this(string myName) { 
    this(); this.name(myName); }
  this(UUID myId, string myName) { 
    this(); this.id(myId).name(myName); }
  this(Json aJson) { 
    this(); this.fromJson(aJson); }
}
auto CRMOpportunityCompetitors() { return new DCRMOpportunityCompetitors; } 
auto CRMOpportunityCompetitors(Json json) { return new DCRMOpportunityCompetitors(json); } 

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