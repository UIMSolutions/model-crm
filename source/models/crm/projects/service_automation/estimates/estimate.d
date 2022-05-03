module models.crm.projects.service_automation.estimates.estimate;

@safe:
import uim.entities;

// Labor, cost, and revenue estimates for a project.
class DCRMEstimateEntity : DOOPEntity {
  mixin(EntityThis!("CRMEstimateEntity"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "createdOnBehalfBy": OOPLinkAttribute("aplUser").descriptions(["en":"Shows who created the record on behalf of another user."]),
        "modifiedOnBehalfBy": OOPLinkAttribute("aplUser").descriptions(["en":"Shows who last updated the record on behalf of another user."]),
        "overriddenCreatedOn": OOPTimestampAttribute.descriptions(["en":"Date and time that the record was migrated."]),
        "importSequenceNumber": OOPIntegerAttribute.descriptions(["en":"Sequence number of the import that created this record."]),
        "ownerId": UUIDAttributeClass, // Owner Id"]),
        "ownerIdType": StringAttributeClass, // The type of owner, either User or Team."]),
        "owningBusinessUnitId": OOPLinkAttribute("aplBusinessUnit").descriptions(["en":"Unique identifier for the business unit that owns the record"]),
        "owningUserId": OOPLinkAttribute("aplUser").descriptions(["en":"Unique identifier for the user that owns the record."]),
        "owningTeamId": OOPLinkAttribute("aplTeam").descriptions(["en":"Unique identifier for the team that owns the record."]),
        "timeZoneRuleVersionNumber": OOPIntegerAttribute.descriptions(["en":"For internal use only."]),
        "utcConversionTimeZoneCode": StringAttributeClass, // Time zone code that was in use when the record was created."]),
        "estimateId": UUIDAttributeClass, // Unique identifier for entity instances"]),
        "stateCode": StringAttributeClass, // Status of the Estimate"]),
        "stateCode_display": StringAttributeClass, //
        "statusCode": StringAttributeClass, // Reason for the status of the Estimate"]),
        "statusCode_display": StringAttributeClass, //
        "estimateHeaderType": StringAttributeClass, // Select the type of estimate."]),
        "estimateHeaderType_display": StringAttributeClass, //
        "project": StringAttributeClass, // Select the name of the project."]),
      ])
      .registerPath("crm_estimates");
  }
}
mixin(EntityCalls!("CRMEstimateEntity"));

unittest {
  version(test_model_crm) {
    assert(CRMEstimateEntity);

  auto entity = CRMEstimateEntity;
  // auto repository = OOPFileRepository("./tests");
/* /*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */ 
  }
}