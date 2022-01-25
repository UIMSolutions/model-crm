module models.crm.projects.service_automation.estimates.line;

@safe:
import uim.entities;

// Estimates on a per day timescale.
class DAPLEstimateLine : DOOPEntity {
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
      "estimateLineId": OOPAttributeUUID.descriptions(["en":"Shows the entity instances."]),
      "stateCode": OOPAttributeString.descriptions(["en":"Status of the Estimate Line"]),
      "stateCode_display": OOPAttributeString.descriptions(["en":""]),
      "statusCode": OOPAttributeString.descriptions(["en":"Reason for the status of the Estimate Line"]),
      "statusCode_display": OOPAttributeString.descriptions(["en":""]),
      "accountCustomer": OOPAttributeString.descriptions(["en":"Shows the customer for the estimate line."]),
      "accountingDate": OOPAttributeDate.descriptions(["en":""]),
      "accountVendor": OOPAttributeString.descriptions(["en":""]),
      "amount": OOPAttributeString.descriptions(["en":"Shows the amount on the estimate line."]),
      "transactionCurrencyId": OOPAttributeLink("aplCurrency").descriptions(["en":"Shows the currency associated with the entity."]),
      "exchangeRate": OOPAttributeString.descriptions(["en":"Exchange rate for the currency associated with the entity with respect to the base currency."]),
      "amountBase": OOPAttributeString.descriptions(["en":"Value of the Amount in base currency."]),
      "amountMethod": OOPAttributeString.descriptions(["en":"Shows the calculation method used to determine the amount on the estimate line."]),
      "amountMethod_display": OOPAttributeString.descriptions(["en":""]),
      "basisAmount": OOPAttributeString.descriptions(["en":""]),
      "basisAmountBase": OOPAttributeString.descriptions(["en":"Value of the Basis Amount in base currency."]),
      "basisPrice": OOPAttributeString.descriptions(["en":""]),
      "basisPriceBase": OOPAttributeString.descriptions(["en":"Value of the Basis Price in base currency."]),
      "basisQuantity": OOPAttributeString.descriptions(["en":""]),
      "billingType": OOPAttributeString.descriptions(["en":"Shows whether this estimate line is charged to the customer. "]),
      "billingType_display": OOPAttributeString.descriptions(["en":""]),
      "bookableResource": OOPAttributeString.descriptions(["en":"Shows the bookable resource for which estimates are generated."]),
      "contactCustomer": OOPAttributeString.descriptions(["en":"Shows the name of the customer contact."]),
      "contactVendor": OOPAttributeString.descriptions(["en":""]),
      "customerType": OOPAttributeString.descriptions(["en":"Select the type of customer."]),
      "customerType_display": OOPAttributeString.descriptions(["en":""]),
      "documentDate": OOPAttributeDate.descriptions(["en":"Shows the transaction date of the estimate line."]),
      "endDateTime": OOPAttributeDatetime.descriptions(["en":"Enter the end date and time."]),
      "estimate": OOPAttributeString.descriptions(["en":"Shows the name of the estimate line."]),
      "estimatePerDayLines": OOPAttributeString.descriptions(["en":"Stores the estimate per day detail lines."]),
      "exchangeRateDate": OOPAttributeDate.descriptions(["en":""]),
      "numberOfResources": OOPAttributeString.descriptions(["en":"Shows the estimate of the number of resources intended to be staffed for this task."]),
      "percent": OOPAttributeString.descriptions(["en":"Shows the percent for the estimate line."]),
      "price": OOPAttributeString.descriptions(["en":"Shows the price for this estimate line."]),
      "priceBase": OOPAttributeString.descriptions(["en":"Value of the Price in base currency."]),
      "priceList": OOPAttributeString.descriptions(["en":"Shows the price list used in this estimate line."]),
      "product": OOPAttributeString.descriptions(["en":"Select the product."]),
      "project": OOPAttributeString.descriptions(["en":"Shows the project for this estimate line."]),
      "quantity": OOPAttributeString.descriptions(["en":"Enter the estimated quantity of work, cost, and sales."]),
      "resourceCategory": OOPAttributeString.descriptions(["en":"Shows the role of this resource on the estimate line."]),
      "resourceOrganizationalUnitId": OOPAttributeUUID.descriptions(["en":"Select the organizational unit at the time the estimate line was registered of the resource who should perform the work."]),
      "startDateTime": OOPAttributeDatetime.descriptions(["en":"Shows the start date and time for the task for this estimate line."]),
      "task": OOPAttributeString.descriptions(["en":"Shows the task related to this estimate line."]),
      "transactionCategory": OOPAttributeString.descriptions(["en":"Select the type of transaction."]),
      "transactionClassification": OOPAttributeString.descriptions(["en":"Shows the transaction classification for this estimate line."]),
      "transactionClassification_display": OOPAttributeString.descriptions(["en":""]),
      "transactionTypeCode": OOPAttributeString.descriptions(["en":"Shows the transaction type for this estimate line."]),
      "transactionTypeCode_display": OOPAttributeString.descriptions(["en":""]),
      "unit": OOPAttributeString.descriptions(["en":"Shows the unit of measurement for this estimate line."]),
      "unitSchedule": OOPAttributeString.descriptions(["en":"Select the unit of measure for the estimate quantity."]),
      "vendorType": OOPAttributeString.descriptions(["en":""]),
      "vendorType_display": OOPAttributeString.descriptions(["en":""]),
    ]);
  }

  override string entityClass() { return "aplEstimateLine"; }
  override string entityClasses() { return "aplEstimateLines"; }

  this(UUID myId) { 
    this(); this.id(myId); }
  this(string myName) { 
    this(); this.name(myName); }
  this(UUID myId, string myName) { 
    this(); this.id(myId).name(myName); }
  this(Json aJson) { 
    this(); this.fromJson(aJson); }
}
auto APLEstimateLine() { return new DAPLEstimateLine; } 
auto APLEstimateLine(Json json) { return new DAPLEstimateLine(json); } 

unittest {
  version(uim_entities) {
    assert(APLEstimateLine);

  auto entity = APLEstimateLine;
  // auto repository = OOPFileRepository("./tests");
/* /*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */ 
  }
}