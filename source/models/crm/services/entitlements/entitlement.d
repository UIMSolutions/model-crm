module models.crm.services.entitlements.entitlement;

@safe:
import uim.entities;

// 
class DCRMEntitlement : DOOPEntity {
  mixin(OOPEntityThis!("CRMEntitlement"));

  override void initialize() {
    super.initialize;

    this
      .addAttributes([
        "createdOnBehalfBy": OOPStringAttribute.descriptions(["en":"Shows who created the record on behalf of another user."]),
        "modifiedOnBehalfBy": OOPStringAttribute.descriptions(["en":"Shows who last updated the record on behalf of another user."]),
        "overriddenCreatedOn": OOPStringAttribute.descriptions(["en":"Date and time that the record was migrated."]),
        "importSequenceNumber": OOPIntegerAttribute.descriptions(["en":"Sequence number of the import that created this record."]),
        "ownerId": OOPUUIDAttribute.descriptions(["en":"Owner Id"]),
        "ownerIdType": OOPStringAttribute.descriptions(["en":"The type of owner, either User or Team."]),
        "owningBusinessUnitId": OOPLinkAttribute("aplBusinessUnit").descriptions(["en":"Unique identifier for the business unit that owns the record"]),
        "owningUserId": OOPStringAttribute.descriptions(["en":"Unique identifier of the user that owns the activity."]),
        "owningTeamId": OOPStringAttribute.descriptions(["en":"Unique identifier for the team that owns the record."]),
        "timeZoneRuleVersionNumber": OOPIntegerAttribute.descriptions(["en":"For internal use only."]),
        "utcConversionTimeZoneCode": OOPStringAttribute.descriptions(["en":"Time zone code that was in use when the record was created."]),
        "entitlementId": OOPUUIDAttribute.descriptions(["en":"Unique identifier for entity instances"]),
        "emailAddress": OOPStringAttribute.descriptions(["en":"The primary email address for the entity."]),
        "processId": OOPUUIDAttribute.descriptions(["en":"Contains the id of the process associated with the entity."]),
        "stageId": OOPUUIDAttribute.descriptions(["en":"Contains the id of the stage where the entity is located."]),
        "traversedPath": OOPStringAttribute.descriptions(["en":"A comma separated list of string values representing the unique identifiers of stages in a Business Process Flow Instance in the order that they occur."]),
        "allocationTypeCode": OOPStringAttribute.descriptions(["en":"Select the type of entitlement terms."]),
        "allocationTypeCode_display": OOPStringAttribute.descriptions(["en":""]),
        "customerId": OOPUUIDAttribute.descriptions(["en":"The customer account or contact to provide a quick link to additional customer details, such as account information, activities, and opportunities."]),
        "customerIdType": OOPStringAttribute.descriptions(["en":"The type of customer, either Account or Contact."]),
        "decreaseRemainingOn": OOPStringAttribute.descriptions(["en":"Select whether to decrease the remaining terms when the case is created or when it is resolved."]),
        "decreaseRemainingOn_display": OOPStringAttribute.descriptions(["en":""]),
        "endDate": OOPAttributeDate.descriptions(["en":"Enter the date when the entitlement ends."]),
        "entitlementTemplateId": OOPUUIDAttribute.descriptions(["en":"Unique identifier for Entitlement Template associated with Entitlement."]),
        "kbAccessLevel": OOPStringAttribute.descriptions(["en":"Select the access someone will have to the knowledge base on the portal."]),
        "kbAccessLevel_display": OOPStringAttribute.descriptions(["en":""]),
        "remainingTerms": OOPStringAttribute.descriptions(["en":"Type the total number of entitlement terms that are left."]),
        "restrictCaseCreation": OOPStringAttribute.descriptions(["en":"Tells whether case creation is restricted based on entitlement terms."]),
        "SLAId": OOPLinkAttribute("aplSLA").descriptions(["en":"Choose the service level agreement (SLA) associated with the entitlement."]),
        "startDate": OOPAttributeDate.descriptions(["en":"Enter the date when the entitlement starts."]),
        "stateCode": OOPStringAttribute.descriptions(["en":"For internal use only."]),
        "stateCode_display": OOPStringAttribute.descriptions(["en":""]),
        "statusCode": OOPStringAttribute.descriptions(["en":"Select the reason code that explains the status of the entitlement."]),
        "statusCode_display": OOPStringAttribute.descriptions(["en":""]),
        "totalTerms": OOPStringAttribute.descriptions(["en":"Type the total number of entitlement terms."]),
        "isDefault": OOPBooleanAttribute.descriptions(["en":"Shows whether this entitlement is the default one for the specified customer."]),
        "accountId": OOPLinkAttribute("aplAccount").descriptions(["en":"Unique identifier for Account associated with Entitlement."]),
        "contactId": OOPLinkAttribute("aplContact").descriptions(["en":"Unique identifier for Contact associated with Entitlement."]),
        "exchangeRate": OOPStringAttribute.descriptions(["en":"Exchange rate for the currency associated with the contact with respect to the base currency."]),
        "transactionCurrencyId": OOPLinkAttribute("aplCurrency").descriptions(["en":"Unique identifier of the currency associated with the contact."]),
      ])
      .registerPath("crm_entitlements");
  }
}
mixin(OOPEntityCalls!("CRMEntitlement"));

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