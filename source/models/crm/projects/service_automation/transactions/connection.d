module models.crm.projects.service_automation.transactions.connection;

@safe:
import uim.entities;

// TransactionConnection of a user in the hierarchy
class DCRMTransactionConnection : DOOPEntity {
  mixin(OOPEntityThis!("CRMTransactionConnection"));

  override void initialize() {
    super.initialize;

    this
      .attributes([
        "createdOnBehalfBy": OOPAttributeLink("aplUser").descriptions(["en":"Shows who created the record on behalf of another user."]),
        "modifiedOnBehalfBy": OOPAttributeLink("aplUser").descriptions(["en":"Shows who last updated the record on behalf of another user."]),
        "overriddenCreatedOn": OOPAttributeTimestamp.descriptions(["en":"Date and time that the record was migrated."]),
        "importSequenceNumber": OOPAttributeNumber.descriptions(["en":"Sequence number of the import that created this record."]),
        "ownerId": OOPUUIDAttribute.descriptions(["en":"Owner Id"]),
        "ownerIdType": OOPStringAttribute.descriptions(["en":"The type of owner, either User or Team."]),
        "owningBusinessUnitId": OOPAttributeLink("aplBusinessUnit").descriptions(["en":"Unique identifier for the business unit that owns the record"]),
        "owningUserId": OOPAttributeLink("aplUser").descriptions(["en":"Unique identifier for the user that owns the record."]),
        "owningTeamId": OOPAttributeLink("aplTeam").descriptions(["en":"Unique identifier for the team that owns the record."]),
        "timeZoneRuleVersionNumber": OOPAttributeNumber.descriptions(["en":"For internal use only."]),
        "utcConversionTimeZoneCode": OOPStringAttribute.descriptions(["en":"Time zone code that was in use when the record was created."]),
        "transactionConnectionId": OOPUUIDAttribute.descriptions(["en":"Unique identifier for entity instances"]),
        "stateCode": OOPStringAttribute.descriptions(["en":"Status of the Transaction Connection"]),
        "stateCode_display": OOPStringAttribute.descriptions(["en":""]),
        "statusCode": OOPStringAttribute.descriptions(["en":"Reason for the status of the Transaction Connection"]),
        "statusCode_display": OOPStringAttribute.descriptions(["en":""]),
        "transaction1": OOPStringAttribute.descriptions(["en":""]),
        "transaction1Role": OOPStringAttribute.descriptions(["en":""]),
        "transaction1Type": OOPStringAttribute.descriptions(["en":""]),
        "transaction2": OOPStringAttribute.descriptions(["en":""]),
        "transaction2Role": OOPStringAttribute.descriptions(["en":""]),
        "transaction2Type": OOPStringAttribute.descriptions(["en":""]),
      ])
      .registerPath("crm_transactionconnections");
  }
}
mixin(OOPEntityCalls!("CRMTransactionConnection"));

unittest {
  version(uim_entities) {
    assert(CRMTransactionConnection);

  auto entity = CRMTransactionConnection;
  // auto repository = OOPFileRepository("./tests");
/* /*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */ 
  }
}