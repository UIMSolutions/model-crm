module models.crm.services.entitlements.entitlement;

@safe:
import uim.entities;

// 
class DCRMEntitlement : DOOPEntity {
  mixin(EntityThis!("CRMEntitlement"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "createdOnBehalfBy": StringAttributeClass, // Shows who created the record on behalf of another user."]),
        "modifiedOnBehalfBy": StringAttributeClass, // Shows who last updated the record on behalf of another user."]),
        "overriddenCreatedOn": StringAttributeClass, // Date and time that the record was migrated."]),
        "importSequenceNumber": OOPIntegerAttribute.descriptions(["en":"Sequence number of the import that created this record."]),
        "ownerId": UUIDAttributeClass, // Owner Id"]),
        "ownerIdType": StringAttributeClass, // The type of owner, either User or Team."]),
        "owningBusinessUnitId": OOPLinkAttribute("aplBusinessUnit").descriptions(["en":"Unique identifier for the business unit that owns the record"]),
        "owningUserId": StringAttributeClass, // Unique identifier of the user that owns the activity."]),
        "owningTeamId": StringAttributeClass, // Unique identifier for the team that owns the record."]),
        "timeZoneRuleVersionNumber": OOPIntegerAttribute.descriptions(["en":"For internal use only."]),
        "utcConversionTimeZoneCode": StringAttributeClass, // Time zone code that was in use when the record was created."]),
        "entitlementId": UUIDAttributeClass, // Unique identifier for entity instances"]),
        "emailAddress": StringAttributeClass, // The primary email address for the entity."]),
        "processId": UUIDAttributeClass, // Contains the id of the process associated with the entity."]),
        "stageId": UUIDAttributeClass, // Contains the id of the stage where the entity is located."]),
        "traversedPath": StringAttributeClass, // A comma separated list of string values representing the unique identifiers of stages in a Business Process Flow Instance in the order that they occur."]),
        "allocationTypeCode": StringAttributeClass, // Select the type of entitlement terms."]),
        "allocationTypeCode_display": StringAttributeClass, //
        "customerId": UUIDAttributeClass, // The customer account or contact to provide a quick link to additional customer details, such as account information, activities, and opportunities."]),
        "customerIdType": StringAttributeClass, // The type of customer, either Account or Contact."]),
        "decreaseRemainingOn": StringAttributeClass, // Select whether to decrease the remaining terms when the case is created or when it is resolved."]),
        "decreaseRemainingOn_display": StringAttributeClass, //
        "endDate": DateAttributeClass, // Enter the date when the entitlement ends."]),
        "entitlementTemplateId": UUIDAttributeClass, // Unique identifier for Entitlement Template associated with Entitlement."]),
        "kbAccessLevel": StringAttributeClass, // Select the access someone will have to the knowledge base on the portal."]),
        "kbAccessLevel_display": StringAttributeClass, //
        "remainingTerms": StringAttributeClass, // Type the total number of entitlement terms that are left."]),
        "restrictCaseCreation": StringAttributeClass, // Tells whether case creation is restricted based on entitlement terms."]),
        "SLAId": OOPLinkAttribute("aplSLA").descriptions(["en":"Choose the service level agreement (SLA) associated with the entitlement."]),
        "startDate": DateAttributeClass, // Enter the date when the entitlement starts."]),
        "stateCode": StringAttributeClass, // For internal use only."]),
        "stateCode_display": StringAttributeClass, //
        "statusCode": StringAttributeClass, // Select the reason code that explains the status of the entitlement."]),
        "statusCode_display": StringAttributeClass, //
        "totalTerms": StringAttributeClass, // Type the total number of entitlement terms."]),
        "isDefault": BooleanAttributeClass, // Shows whether this entitlement is the default one for the specified customer."]),
        "accountId": OOPLinkAttribute("aplAccount").descriptions(["en":"Unique identifier for Account associated with Entitlement."]),
        "contactId": OOPLinkAttribute("aplContact").descriptions(["en":"Unique identifier for Contact associated with Entitlement."]),
        "exchangeRate": StringAttributeClass, // Exchange rate for the currency associated with the contact with respect to the base currency."]),
        "transactionCurrencyId": OOPLinkAttribute("aplCurrency").descriptions(["en":"Unique identifier of the currency associated with the contact."]),
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