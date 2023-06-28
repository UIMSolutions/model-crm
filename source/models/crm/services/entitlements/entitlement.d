module models.crm.services.entitlements.entitlement;

@safe:
import uim.entities;

// 
class DCRMEntitlement : DEntity {
  mixin(EntityThis!("CRMEntitlement"));

  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([
        "createdOnBehalfBy": StringAttribute, // Shows who created the record on behalf of another user."]),
        "modifiedOnBehalfBy": StringAttribute, // Shows who last updated the record on behalf of another user."]),
        "overriddenCreatedOn": StringAttribute, // Date and time that the record was migrated."]),
        "importSequenceNumber": IntegerAttribute, //Sequence number of the import that created this record."]),
        "ownerId": UUIDAttribute, // Owner Id"]),
        "ownerIdType": StringAttribute, // The type of owner, either User or Team."]),
        "owningBusinessUnitId": UUIDAttribute, //Unique identifier for the business unit that owns the record"]),
        "owningUserId": UUIDAttribute, // Unique identifier of the user that owns the activity."]),
        "owningTeamId": UUIDAttribute, // Unique identifier for the team that owns the record."]),
        "timeZoneRuleVersionNumber": IntegerAttribute, //For internal use only."]),
        "utcConversionTimeZoneCode": StringAttribute, // Time zone code that was in use when the record was created."]),
        "entitlementId": UUIDAttribute, // Unique identifier for entity instances"]),
        "emailAddress": StringAttribute, // The primary email address for the entity."]),
        "processId": UUIDAttribute, // Contains the id of the process associated with the entity."]),
        "stageId": UUIDAttribute, // Contains the id of the stage where the entity is located."]),
        "traversedPath": StringAttribute, // A comma separated list of string values representing the unique identifiers of stages in a Business Process Flow Instance in the order that they occur."]),
        "allocationTypeCode": StringAttribute, // Select the type of entitlement terms."]),
        "allocationTypeCode_display": StringAttribute, //
        "customerId": UUIDAttribute, // The customer account or contact to provide a quick link to additional customer details, such as account information, activities, and opportunities."]),
        "customerIdType": StringAttribute, // The type of customer, either Account or Contact."]),
        "decreaseRemainingOn": StringAttribute, // Select whether to decrease the remaining terms when the case is created or when it is resolved."]),
        "decreaseRemainingOn_display": StringAttribute, //
        "endDate": DateAttribute, // Enter the date when the entitlement ends."]),
        "entitlementTemplateId": UUIDAttribute, // Unique identifier for Entitlement Template associated with Entitlement."]),
        "kbAccessLevel": StringAttribute, // Select the access someone will have to the knowledge base on the portal."]),
        "kbAccessLevel_display": StringAttribute, //
        "remainingTerms": StringAttribute, // Type the total number of entitlement terms that are left."]),
        "restrictCaseCreation": StringAttribute, // Tells whether case creation is restricted based on entitlement terms."]),
        "SLAId": UUIDAttribute, // aplSLA").descriptions(["en":"Choose the service level agreement (SLA) associated with the entitlement."]),
        "startDate": DateAttribute, // Enter the date when the entitlement starts."]),
        "stateCode": StringAttribute, // For internal use only."]),
        "stateCode_display": StringAttribute, //
        "statusCode": StringAttribute, // Select the reason code that explains the status of the entitlement."]),
        "statusCode_display": StringAttribute, //
        "totalTerms": StringAttribute, // Type the total number of entitlement terms."]),
        "isDefault": BooleanAttribute, // Shows whether this entitlement is the default one for the specified customer."]),
        "accountId": UUIDAttribute, // Unique identifier for Account associated with Entitlement."]),
        "contactId": UUIDAttribute, // Unique identifier for Contact associated with Entitlement."]),
        "exchangeRate": StringAttribute, // Exchange rate for the currency associated with the contact with respect to the base currency."]),
        "transactionCurrencyId": CurrencyIdAttribute, // Unique identifier of the currency associated with the contact."]),
      ])
      .registerPath("crm_entitlements");
  }
}
mixin(EntityCalls!("CRMEntitlement"));

unittest {
  version(test_model_crm) {
    assert(CRMEntitlement);
  
  auto entity = CRMEntitlement;
  // auto repository = OOPFileRepository("./tests");
/* /*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */ 
  }
}