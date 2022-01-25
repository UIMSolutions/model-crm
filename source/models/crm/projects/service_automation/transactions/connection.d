module models.crm.projects.service_automation.transactions.connection;

@safe:
import uim.entities;

// TransactionConnection of a user in the hierarchy
class DAPLTransactionConnection : DOOPEntity {
  this() { super();
    this.attributes([
      "createdOnBehalfBy": OOPAttributeLink("aplUser").descriptions(["en":"Shows who created the record on behalf of another user."]),
      "modifiedOnBehalfBy": OOPAttributeLink("aplUser").descriptions(["en":"Shows who last updated the record on behalf of another user."]),
      "overriddenCreatedOn": OOPAttributeTimestamp.descriptions(["en":"Date and time that the record was migrated."]),
      "importSequenceNumber": OOPAttributeNumber.descriptions(["en":"Sequence number of the import that created this record."]),
      "ownerId": OOPAttributeUUID.descriptions(["en":"Owner Id"]),
      "ownerIdType": OOPAttributeString.descriptions(["en":"The type of owner, either User or Team."]),
      "owningBusinessUnitId": OOPAttributeLink("aplBusinessUnit").descriptions(["en":"Unique identifier for the business unit that owns the record"]),
      "owningUserId": OOPAttributeLink("aplUser").descriptions(["en":"Unique identifier for the user that owns the record."]),
      "owningTeamId": OOPAttributeLink("aplTeam").descriptions(["en":"Unique identifier for the team that owns the record."]),
      "timeZoneRuleVersionNumber": OOPAttributeNumber.descriptions(["en":"For internal use only."]),
      "utcConversionTimeZoneCode": OOPAttributeString.descriptions(["en":"Time zone code that was in use when the record was created."]),
      "transactionConnectionId": OOPAttributeUUID.descriptions(["en":"Unique identifier for entity instances"]),
      "stateCode": OOPAttributeString.descriptions(["en":"Status of the Transaction Connection"]),
      "stateCode_display": OOPAttributeString.descriptions(["en":""]),
      "statusCode": OOPAttributeString.descriptions(["en":"Reason for the status of the Transaction Connection"]),
      "statusCode_display": OOPAttributeString.descriptions(["en":""]),
      "transaction1": OOPAttributeString.descriptions(["en":""]),
      "transaction1Role": OOPAttributeString.descriptions(["en":""]),
      "transaction1Type": OOPAttributeString.descriptions(["en":""]),
      "transaction2": OOPAttributeString.descriptions(["en":""]),
      "transaction2Role": OOPAttributeString.descriptions(["en":""]),
      "transaction2Type": OOPAttributeString.descriptions(["en":""]),
    ]);
  }

  override string entityClass() { return "aplTransactionConnection"; }
  override string entityClasses() { return "aplTransactionConnections"; }

  this(UUID myId) { 
    this(); this.id(myId); }
  this(string myName) { 
    this(); this.name(myName); }
  this(UUID myId, string myName) { 
    this(); this.id(myId).name(myName); }
  this(Json aJson) { 
    this(); this.fromJson(aJson); }
}
auto APLTransactionConnection() { return new DAPLTransactionConnection; } 
auto APLTransactionConnection(Json json) { return new DAPLTransactionConnection(json); } 

unittest {
  version(uim_entities) {
    assert(APLTransactionConnection);

  auto entity = APLTransactionConnection;
  // auto repository = OOPFileRepository("./tests");
/* /*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */ 
  }
}