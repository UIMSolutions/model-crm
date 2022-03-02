module models.crm.projects.service_automation.journals.line;

@safe:
import uim.entities;

// nposted business transaction line details.
class DCRMJournalLine : DOOPEntity {
  mixin(OOPEntityThis!("CRMJournalLine"));

  override void initialize() {
    super.initialize;

    this
      .addAttributes([
      "createdOnBehalfBy": OOPLinkAttribute("aplUser").descriptions(["en":"Shows who created the record on behalf of another user."]),
      "modifiedOnBehalfBy": OOPLinkAttribute("aplUser").descriptions(["en":"Shows who last updated the record on behalf of another user."]),
      "overriddenCreatedOn": OOPTimestampAttribute.descriptions(["en":"Date and time that the record was migrated."]),
      "importSequenceNumber": OOPIntegerAttribute.descriptions(["en":"Sequence number of the import that created this record."]),
      "ownerId": OOPUUIDAttribute.descriptions(["en":"Owner Id"]),
      "ownerIdType": OOPStringAttribute.descriptions(["en":"The type of owner, either User or Team."]),
      "owningBusinessUnitId": OOPLinkAttribute("aplBusinessUnit").descriptions(["en":"Unique identifier for the business unit that owns the record"]),
      "owningUserId": OOPLinkAttribute("aplUser").descriptions(["en":"Unique identifier for the user that owns the record."]),
      "owningTeamId": OOPLinkAttribute("aplTeam").descriptions(["en":"Unique identifier for the team that owns the record."]),
      "timeZoneRuleVersionNumber": OOPIntegerAttribute.descriptions(["en":"For internal use only."]),
      "utcConversionTimeZoneCode": OOPStringAttribute.descriptions(["en":"Time zone code that was in use when the record was created."]),
      "journalLineId": OOPUUIDAttribute.descriptions(["en":"Unique identifier for entity instances"]),
      "stateCode": OOPStringAttribute.descriptions(["en":"Status of the Journal Line"]),
      "stateCode_display": OOPStringAttribute.descriptions(["en":""]),
      "statusCode": OOPStringAttribute.descriptions(["en":"Reason for the status of the Journal Line"]),
      "statusCode_display": OOPStringAttribute.descriptions(["en":""]),
      "accountCustomer": OOPStringAttribute.descriptions(["en":"Shows the customer for the journal line."]),
      "accountingDate": OOPAttributeDate.descriptions(["en":""]),
      "accountVendor": OOPStringAttribute.descriptions(["en":""]),
      "amount": OOPStringAttribute.descriptions(["en":"Shows the amount of the journal line."]),
      "transactionCurrencyId": OOPLinkAttribute("aplCurrency").descriptions(["en":"Shows the currency associated with the entity."]),
      "exchangeRate": OOPStringAttribute.descriptions(["en":"Exchange rate for the currency associated with the entity with respect to the base currency."]),
      "amountBase": OOPStringAttribute.descriptions(["en":"Value of the Amount in base currency."]),
      "amountMethod": OOPStringAttribute.descriptions(["en":"Select the calculation method for the amount."]),
      "amountMethod_display": OOPStringAttribute.descriptions(["en":""]),
      "basisAmount": OOPStringAttribute.descriptions(["en":"Enter the basis amount of the journal line."]),
      "basisAmountBase": OOPStringAttribute.descriptions(["en":"Value of the Basis Amount in base currency."]),
      "basisPrice": OOPStringAttribute.descriptions(["en":"Enter the basis price of the journal line."]),
      "basisPriceBase": OOPStringAttribute.descriptions(["en":"Value of the Basis Price in base currency."]),
      "basisQuantity": OOPStringAttribute.descriptions(["en":"Enter the basis quantity of the journal line."]),
      "billingStatus": OOPStringAttribute.descriptions(["en":""]),
      "billingStatus_display": OOPStringAttribute.descriptions(["en":""]),
      "billingType": OOPStringAttribute.descriptions(["en":"Select the billing type for the journal line."]),
      "billingType_display": OOPStringAttribute.descriptions(["en":""]),
      "bookableResource": OOPStringAttribute.descriptions(["en":"Shows the resource."]),
      "contactCustomer": OOPStringAttribute.descriptions(["en":""]),
      "contactVendor": OOPStringAttribute.descriptions(["en":""]),
      "contractingUnit": OOPStringAttribute.descriptions(["en":"Unique identifier for Organizational Unit associated with Journal Line."]),
      "customerType": OOPStringAttribute.descriptions(["en":"Shows the type of customer."]),
      "customerType_display": OOPStringAttribute.descriptions(["en":""]),
      "documentDate": OOPAttributeDate.descriptions(["en":"Enter the transaction date of the journal line."]),
      "endDateTime": OOPAttributeDatetime.descriptions(["en":"Enter the end date and time."]),
      "exchangeRateDate": OOPAttributeDate.descriptions(["en":""]),
      "externalDescription": OOPStringAttribute.descriptions(["en":"The external description of the journal line."]),
      "isPosted": OOPBooleanAttribute.descriptions(["en":"Shows whether the journal has been submitted."]),
      "journal": OOPStringAttribute.descriptions(["en":"Shows the name of the journal."]),
      "percent": OOPStringAttribute.descriptions(["en":"Enter the percent."]),
      "price": OOPStringAttribute.descriptions(["en":"Enter the price."]),
      "priceBase": OOPStringAttribute.descriptions(["en":"Value of the Price in base currency."]),
      "priceList": OOPStringAttribute.descriptions(["en":"Shows the price list used for the journal line."]),
      "product": OOPStringAttribute.descriptions(["en":"Select the product."]),
      "project": OOPStringAttribute.descriptions(["en":"Select the project."]),
      "quantity": OOPStringAttribute.descriptions(["en":"Enter the quantity."]),
      "resourceCategory": OOPStringAttribute.descriptions(["en":"Select the resource role."]),
      "resourceOrganizationalUnitId": OOPUUIDAttribute.descriptions(["en":"Organizational unit at the time the entry was registered of the resource who performed the work."]),
      "salesContract": OOPStringAttribute.descriptions(["en":"Shows the project contract."]),
      "salesContractLine": OOPStringAttribute.descriptions(["en":"Deprecated) Shows the project contract line."]),
      "salesContractLineId": OOPUUIDAttribute.descriptions(["en":"Unique identifier for Project Contract Line associated with Journal Line."]),
      "startDateTime": OOPAttributeDatetime.descriptions(["en":"Enter the start date and time."]),
      "task": OOPStringAttribute.descriptions(["en":"Select the project task."]),
      "transactionCategory": OOPStringAttribute.descriptions(["en":"Select the transaction category."]),
      "transactionClassification": OOPStringAttribute.descriptions(["en":"Select the transaction class."]),
      "transactionClassification_display": OOPStringAttribute.descriptions(["en":""]),
      "transactionTypeCode": OOPStringAttribute.descriptions(["en":""]),
      "transactionTypeCode_display": OOPStringAttribute.descriptions(["en":""]),
      "unit": OOPStringAttribute.descriptions(["en":"Shows the unit of measurement."]),
      "unitSchedule": OOPStringAttribute.descriptions(["en":"Shows the unit schedule."]),
      "vendorType": OOPStringAttribute.descriptions(["en":""]),
      "vendorType_display": OOPStringAttribute.descriptions(["en":""]),
      ])
      .registerPath("crm_journallines");
  }
}
mixin(OOPEntityCalls!("CRMJournalLine"));

unittest {
  version(test_model_crm) {
    assert(CRMJournalLine);

  auto entity = CRMJournalLine;
  // auto repository = OOPFileRepository("./tests");
/* /*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */ 
  }
}