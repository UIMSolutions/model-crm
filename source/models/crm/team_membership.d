module models.crm.team_membership;

@safe:
import uim.entities;

// TeamMembership that is attached to one or more objects, including other notes.
 /*  class DCRMTeamMembership : DOOPEntity {
  this() { super();
    this.attributes([
      "systemUserId":OOPUUIDAttribute"datatype":"UUID", "descriptions":{}}`,
      "teamId":OOPUUIDAttribute"datatype":"UUID", "descriptions":{}}`,
    ]);
  }

  override string entityClass() { return "aplTeamMembership"; }
  override string entityClasses() { return "aplTeamMemberships"; }

  this(UUID myId) { 
    this(); this.id(myId); }
  this(string myName) { 
    this(); this.name(myName); }
  this(UUID myId, string myName) { 
    this(); this.id(myId).name(myName); }
  this(Json aJson) { 
    this(); this.fromJson(aJson); }
}
auto CRMTeamMembership() { return new DCRMTeamMembership; } 
auto CRMTeamMembership(Json json) { return new DCRMTeamMembership(json); }  */

unittest {
  version(test_model_crm) {
  /* // auto entity = CRMTeamMembership;
  // auto repository = OOPFileRepository("./tests");
  repository.create("entities", entity.entityClasses, entity.toJson);
  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found"); */
  }
}