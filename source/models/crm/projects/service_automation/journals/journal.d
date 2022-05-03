module models.crm.projects.service_automation.journals.journal;

@safe:
import uim.entities;

// Unposted business transactions, for example, time and expense.
class DCRMJournalEntity : DOOPEntity {
  mixin(EntityThis!("CRMJournalEntity"));

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
        "journalId": UUIDAttributeClass, // Unique identifier for entity instances"]),
        "stateCode": StringAttributeClass, // Status of the Journal"]),
        "stateCode_display": StringAttributeClass, //
        "statusCode": StringAttributeClass, // Reason for the status of the Journal"]),
        "statusCode_display": StringAttributeClass, //
        "processId": UUIDAttributeClass, // Contains the id of the process associated with the entity."]),
        "stageId": UUIDAttributeClass, // Contains the id of the stage where the entity is located."]),
        "traversedPath": StringAttributeClass, // A comma separated list of string values representing the unique identifiers of stages in a Business Process Flow Instance in the order that they occur."]),
        "defaultProject": StringAttributeClass, //
        "isPosted": BooleanAttributeClass, // Shows if the journal has been submitted."]),
      ])
      .registerPath("crm_journals");
  }
}
mixin(EntityCalls!("CRMJournalEntity"));

unittest {
  version(test_model_crm) {
    assert(CRMJournalEntity);

  auto entity = CRMJournalEntity;
  // auto repository = OOPFileRepository("./tests");
/* /*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */ 
  }
}