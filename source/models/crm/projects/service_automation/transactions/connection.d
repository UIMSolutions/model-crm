module models.crm.projects.service_automation.transactions.connection;

@safe:
import uim.entities;

// TransactionConnection of a user in the hierarchy
class DCRMTransactionConnectionEntity : DOOPEntity {
  mixin(EntityThis!("CRMTransactionConnectionEntity"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "createdOnBehalfBy": UUIDAttributeClass, //Shows who created the record on behalf of another user."]),
        "modifiedOnBehalfBy": UUIDAttributeClass, //Shows who last updated the record on behalf of another user."]),
        "overriddenCreatedOn": TimestampAttributeClass, //Date and time that the record was migrated."]),
        "importSequenceNumber": IntegerAttributeClass, //Sequence number of the import that created this record."]),
        "ownerId": UUIDAttributeClass, // Owner Id"]),
        "ownerIdType": StringAttributeClass, // The type of owner, either User or Team."]),
        "owningBusinessUnitId": UUIDAttributeClass, //Unique identifier for the business unit that owns the record"]),
        "owningUserId": UUIDAttributeClass, //Unique identifier for the user that owns the record."]),
        "owningTeamId": UUIDAttributeClass, //Unique identifier for the team that owns the record."]),
        "timeZoneRuleVersionNumber": IntegerAttributeClass, //For internal use only."]),
        "utcConversionTimeZoneCode": StringAttributeClass, // Time zone code that was in use when the record was created."]),
        "transactionConnectionId": UUIDAttributeClass, // Unique identifier for entity instances"]),
        "stateCode": StringAttributeClass, // Status of the Transaction Connection"]),
        "stateCode_display": StringAttributeClass, //
        "statusCode": StringAttributeClass, // Reason for the status of the Transaction Connection"]),
        "statusCode_display": StringAttributeClass, //
        "transaction1": StringAttributeClass, //
        "transaction1Role": StringAttributeClass, //
        "transaction1Type": StringAttributeClass, //
        "transaction2": StringAttributeClass, //
        "transaction2Role": StringAttributeClass, //
        "transaction2Type": StringAttributeClass, //
      ])
      .registerPath("crm_transactionconnections");
  }
}
mixin(EntityCalls!("CRMTransactionConnectionEntity"));

unittest {
  version(test_model_crm) {
    assert(CRMTransactionConnectionEntity);

  auto entity = CRMTransactionConnectionEntity;
  // auto repository = OOPFileRepository("./tests");
/* /*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */ 
  }
}