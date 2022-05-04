module models.crm.projects.service_automation.journals.line;

@safe:
import uim.entities;

// nposted business transaction line details.
class DCRMJournalLineEntity : DOOPEntity {
  mixin(EntityThis!("CRMJournalLineEntity"));

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
      "journalLineId": UUIDAttributeClass, // Unique identifier for entity instances"]),
      "stateCode": StringAttributeClass, // Status of the Journal Line"]),
      "stateCode_display": StringAttributeClass, //
      "statusCode": StringAttributeClass, // Reason for the status of the Journal Line"]),
      "statusCode_display": StringAttributeClass, //
      "accountCustomer": StringAttributeClass, // Shows the customer for the journal line."]),
      "accountingDate": DateAttributeClass, // 
      "accountVendor": StringAttributeClass, //
      "amount": StringAttributeClass, // Shows the amount of the journal line."]),
      "transactionCurrencyId": OOPLinkAttribute("aplCurrency").descriptions(["en":"Shows the currency associated with the entity."]),
      "exchangeRate": StringAttributeClass, // Exchange rate for the currency associated with the entity with respect to the base currency."]),
      "amountBase": StringAttributeClass, // Value of the Amount in base currency."]),
      "amountMethod": StringAttributeClass, // Select the calculation method for the amount."]),
      "amountMethod_display": StringAttributeClass, //
      "basisAmount": StringAttributeClass, // Enter the basis amount of the journal line."]),
      "basisAmountBase": StringAttributeClass, // Value of the Basis Amount in base currency."]),
      "basisPrice": StringAttributeClass, // Enter the basis price of the journal line."]),
      "basisPriceBase": StringAttributeClass, // Value of the Basis Price in base currency."]),
      "basisQuantity": StringAttributeClass, // Enter the basis quantity of the journal line."]),
      "billingStatus": StringAttributeClass, //
      "billingStatus_display": StringAttributeClass, //
      "billingType": StringAttributeClass, // Select the billing type for the journal line."]),
      "billingType_display": StringAttributeClass, //
      "bookableResource": StringAttributeClass, // Shows the resource."]),
      "contactCustomer": StringAttributeClass, //
      "contactVendor": StringAttributeClass, //
      "contractingUnit": StringAttributeClass, // Unique identifier for Organizational Unit associated with Journal Line."]),
      "customerType": StringAttributeClass, // Shows the type of customer."]),
      "customerType_display": StringAttributeClass, //
      "documentDate": DateAttributeClass, // Enter the transaction date of the journal line."]),
      "endDateTime": DatetimeAttributeClass, // Enter the end date and time."]),
      "exchangeRateDate": DateAttributeClass, // 
      "externalDescription": StringAttributeClass, // The external description of the journal line."]),
      "isPosted": BooleanAttributeClass, // Shows whether the journal has been submitted."]),
      "journal": StringAttributeClass, // Shows the name of the journal."]),
      "percent": StringAttributeClass, // Enter the percent."]),
      "price": StringAttributeClass, // Enter the price."]),
      "priceBase": StringAttributeClass, // Value of the Price in base currency."]),
      "priceList": StringAttributeClass, // Shows the price list used for the journal line."]),
      "product": StringAttributeClass, // Select the product."]),
      "project": StringAttributeClass, // Select the project."]),
      "quantity": StringAttributeClass, // Enter the quantity."]),
      "resourceCategory": StringAttributeClass, // Select the resource role."]),
      "resourceOrganizationalUnitId": UUIDAttributeClass, // Organizational unit at the time the entry was registered of the resource who performed the work."]),
      "salesContract": StringAttributeClass, // Shows the project contract."]),
      "salesContractLine": StringAttributeClass, // Deprecated) Shows the project contract line."]),
      "salesContractLineId": UUIDAttributeClass, // Unique identifier for Project Contract Line associated with Journal Line."]),
      "startDateTime": DatetimeAttributeClass, // Enter the start date and time."]),
      "task": StringAttributeClass, // Select the project task."]),
      "transactionCategory": StringAttributeClass, // Select the transaction category."]),
      "transactionClassification": StringAttributeClass, // Select the transaction class."]),
      "transactionClassification_display": StringAttributeClass, //
      "transactionTypeCode": StringAttributeClass, //
      "transactionTypeCode_display": StringAttributeClass, //
      "unit": StringAttributeClass, // Shows the unit of measurement."]),
      "unitSchedule": StringAttributeClass, // Shows the unit schedule."]),
      "vendorType": StringAttributeClass, //
      "vendorType_display": StringAttributeClass, //
      ])
      .registerPath("crm_journallines");
  }
}
mixin(EntityCalls!("CRMJournalLineEntity"));

unittest {
  version(test_model_crm) {
    assert(CRMJournalLineEntity);

  auto entity = CRMJournalLineEntity;
  // auto repository = OOPFileRepository("./tests");
/* /*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */ 
  }
}