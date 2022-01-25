module models.crm.services.entitlements.entitlement;

@safe:
import uim.entities;

// 
class DAPLEntitlement : DOOPEntity {
  this() { super();
    this.attributes([
      "createdOnBehalfBy": OOPAttributeString.descriptions(["en":"Shows who created the record on behalf of another user."]),
      "modifiedOnBehalfBy": OOPAttributeString.descriptions(["en":"Shows who last updated the record on behalf of another user."]),
      "overriddenCreatedOn": OOPAttributeString.descriptions(["en":"Date and time that the record was migrated."]),
      "importSequenceNumber": OOPAttributeNumber.descriptions(["en":"Sequence number of the import that created this record."]),
      "ownerId": OOPAttributeUUID.descriptions(["en":"Owner Id"]),
      "ownerIdType": OOPAttributeString.descriptions(["en":"The type of owner, either User or Team."]),
      "owningBusinessUnitId": OOPAttributeLink("aplBusinessUnit").descriptions(["en":"Unique identifier for the business unit that owns the record"]),
      "owningUserId": OOPAttributeString.descriptions(["en":"Unique identifier of the user that owns the activity."]),
      "owningTeamId": OOPAttributeString.descriptions(["en":"Unique identifier for the team that owns the record."]),
      "timeZoneRuleVersionNumber": OOPAttributeNumber.descriptions(["en":"For internal use only."]),
      "utcConversionTimeZoneCode": OOPAttributeString.descriptions(["en":"Time zone code that was in use when the record was created."]),
      "entitlementId": OOPAttributeUUID.descriptions(["en":"Unique identifier for entity instances"]),
      "emailAddress": OOPAttributeString.descriptions(["en":"The primary email address for the entity."]),
      "processId": OOPAttributeUUID.descriptions(["en":"Contains the id of the process associated with the entity."]),
      "stageId": OOPAttributeUUID.descriptions(["en":"Contains the id of the stage where the entity is located."]),
      "traversedPath": OOPAttributeString.descriptions(["en":"A comma separated list of string values representing the unique identifiers of stages in a Business Process Flow Instance in the order that they occur."]),
      "allocationTypeCode": OOPAttributeString.descriptions(["en":"Select the type of entitlement terms."]),
      "allocationTypeCode_display": OOPAttributeString.descriptions(["en":""]),
      "customerId": OOPAttributeUUID.descriptions(["en":"The customer account or contact to provide a quick link to additional customer details, such as account information, activities, and opportunities."]),
      "customerIdType": OOPAttributeString.descriptions(["en":"The type of customer, either Account or Contact."]),
      "decreaseRemainingOn": OOPAttributeString.descriptions(["en":"Select whether to decrease the remaining terms when the case is created or when it is resolved."]),
      "decreaseRemainingOn_display": OOPAttributeString.descriptions(["en":""]),
      "endDate": OOPAttributeDate.descriptions(["en":"Enter the date when the entitlement ends."]),
      "entitlementTemplateId": OOPAttributeUUID.descriptions(["en":"Unique identifier for Entitlement Template associated with Entitlement."]),
      "kbAccessLevel": OOPAttributeString.descriptions(["en":"Select the access someone will have to the knowledge base on the portal."]),
      "kbAccessLevel_display": OOPAttributeString.descriptions(["en":""]),
      "remainingTerms": OOPAttributeString.descriptions(["en":"Type the total number of entitlement terms that are left."]),
      "restrictCaseCreation": OOPAttributeString.descriptions(["en":"Tells whether case creation is restricted based on entitlement terms."]),
      "SLAId": OOPAttributeLink("aplSLA").descriptions(["en":"Choose the service level agreement (SLA) associated with the entitlement."]),
      "startDate": OOPAttributeDate.descriptions(["en":"Enter the date when the entitlement starts."]),
      "stateCode": OOPAttributeString.descriptions(["en":"For internal use only."]),
      "stateCode_display": OOPAttributeString.descriptions(["en":""]),
      "statusCode": OOPAttributeString.descriptions(["en":"Select the reason code that explains the status of the entitlement."]),
      "statusCode_display": OOPAttributeString.descriptions(["en":""]),
      "totalTerms": OOPAttributeString.descriptions(["en":"Type the total number of entitlement terms."]),
      "isDefault": OOPAttributeBoolean.descriptions(["en":"Shows whether this entitlement is the default one for the specified customer."]),
      "accountId": OOPAttributeLink("aplAccount").descriptions(["en":"Unique identifier for Account associated with Entitlement."]),
      "contactId": OOPAttributeLink("aplContact").descriptions(["en":"Unique identifier for Contact associated with Entitlement."]),
      "exchangeRate": OOPAttributeString.descriptions(["en":"Exchange rate for the currency associated with the contact with respect to the base currency."]),
      "transactionCurrencyId": OOPAttributeLink("aplCurrency").descriptions(["en":"Unique identifier of the currency associated with the contact."]),
    ]);
  }

  override string entityClass() { return "aplEntitlement"; }
  override string entityClasses() { return "aplEntitlements"; }

  this(UUID myId) { 
    this(); this.id(myId); }
  this(string myName) { 
    this(); this.name(myName); }
  this(UUID myId, string myName) { 
    this(); this.id(myId).name(myName); }
  this(Json aJson) { 
    this(); this.fromJson(aJson); }

  // mixin(GetEntity!("account", "accountId", "APLAccount"));
  // mixin(GetEntity!("contact", "contactId", "APLContact"));

}
auto APLEntitlement() { return new DAPLEntitlement; } 
auto APLEntitlement(Json json) { return new DAPLEntitlement(json); } 

unittest {
  version(uim_entities) {
    assert(APLEntitlement);
  
  auto entity = APLEntitlement;
  // auto repository = OOPFileRepository("./tests");
/* /*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */ 
  }
}