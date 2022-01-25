module models.crm.sales.opportunities.competitors;

@safe:
import uim.entities;

// Association between a competitor and a product offered by the competitor.
class DAPLOpportunityCompetitors : DOOPEntity {
  this() { super();
    this.attributes([
      "opportunityCompetitorId": OOPAttributeUUID.descriptions(["en":"Unique identifier of the opportunity competitor."]),
      "importSequenceNumber": OOPAttributeNumber.descriptions(["en":"Sequence number of the import that created this record."]),
      "overriddenCreatedOn": OOPAttributeTimestamp.descriptions(["en":"Date and time that the record was migrated."]),
      "timeZoneRuleVersionNumber": OOPAttributeNumber.descriptions(["en":"For internal use only."]),
      "utcConversionTimeZoneCode": OOPAttributeString.descriptions(["en":"Time zone code that was in use when the record was created."]),
      "competitorId": OOPAttributeUUID.descriptions(["en":""]),
      "opportunityId": OOPAttributeUUID.descriptions(["en":""]),
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
auto APLOpportunityCompetitors() { return new DAPLOpportunityCompetitors; } 
auto APLOpportunityCompetitors(Json json) { return new DAPLOpportunityCompetitors(json); } 

unittest {
  version(uim_entities) {
    assert(APLOpportunityCompetitors);

  auto entity = APLOpportunityCompetitors;
  // auto repository = OOPFileRepository("./tests");
/*   repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");
  
  repository.cleanupConnections; */
  }
}