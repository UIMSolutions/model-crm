module models.crm.team_membership;

@safe:
import uim.entities;

// TeamMembership that is attached to one or more objects, including other notes.
 /*  class DCRMTeamMembership : DOOPEntity {
  mixin(OOPEntityThis!("CRMTeamMembership"));

  override void initialize() {
    super.initialize;

    this
      .attributes([
        "systemUserId":OOPUUIDAttribute"datatype":"UUID", "descriptions":{}}`,
        "teamId":OOPUUIDAttribute"datatype":"UUID", "descriptions":{}}`,
      ])
      .registerPath("crm_campaigns");
  }
}
mixin(OOPEntityCalls!("CRMCampaign")); */

unittest {
  version(test_model_crm) {
  /* // auto entity = CRMTeamMembership;
  // auto repository = OOPFileRepository("./tests");
  repository.create("entities", entity.entityClasses, entity.toJson);
  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found"); */
  }
}