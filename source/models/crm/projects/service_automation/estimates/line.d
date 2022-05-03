module models.crm.projects.service_automation.estimates.line;

@safe:
import uim.entities;

// Estimates on a per day timescale.
class DCRMEstimateLineEntity : DOOPEntity {
  mixin(EntityThis!("CRMEstimateLineEntity"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
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
        "estimateLineId": OOPUUIDAttribute.descriptions(["en":"Shows the entity instances."]),
        "stateCode": OOPStringAttribute.descriptions(["en":"Status of the Estimate Line"]),
        "stateCode_display": OOPStringAttribute.descriptions(["en":""]),
        "statusCode": OOPStringAttribute.descriptions(["en":"Reason for the status of the Estimate Line"]),
        "statusCode_display": OOPStringAttribute.descriptions(["en":""]),
        "accountCustomer": OOPStringAttribute.descriptions(["en":"Shows the customer for the estimate line."]),
        "accountingDate": DateAttributeClass, // 
        "accountVendor": OOPStringAttribute.descriptions(["en":""]),
        "amount": OOPStringAttribute.descriptions(["en":"Shows the amount on the estimate line."]),
        "transactionCurrencyId": OOPLinkAttribute("aplCurrency").descriptions(["en":"Shows the currency associated with the entity."]),
        "exchangeRate": OOPStringAttribute.descriptions(["en":"Exchange rate for the currency associated with the entity with respect to the base currency."]),
        "amountBase": OOPStringAttribute.descriptions(["en":"Value of the Amount in base currency."]),
        "amountMethod": OOPStringAttribute.descriptions(["en":"Shows the calculation method used to determine the amount on the estimate line."]),
        "amountMethod_display": OOPStringAttribute.descriptions(["en":""]),
        "basisAmount": OOPStringAttribute.descriptions(["en":""]),
        "basisAmountBase": OOPStringAttribute.descriptions(["en":"Value of the Basis Amount in base currency."]),
        "basisPrice": OOPStringAttribute.descriptions(["en":""]),
        "basisPriceBase": OOPStringAttribute.descriptions(["en":"Value of the Basis Price in base currency."]),
        "basisQuantity": OOPStringAttribute.descriptions(["en":""]),
        "billingType": OOPStringAttribute.descriptions(["en":"Shows whether this estimate line is charged to the customer. "]),
        "billingType_display": OOPStringAttribute.descriptions(["en":""]),
        "bookableResource": OOPStringAttribute.descriptions(["en":"Shows the bookable resource for which estimates are generated."]),
        "contactCustomer": OOPStringAttribute.descriptions(["en":"Shows the name of the customer contact."]),
        "contactVendor": OOPStringAttribute.descriptions(["en":""]),
        "customerType": OOPStringAttribute.descriptions(["en":"Select the type of customer."]),
        "customerType_display": OOPStringAttribute.descriptions(["en":""]),
        "documentDate": DateAttributeClass, // Shows the transaction date of the estimate line."]),
        "endDateTime": DatetimeAttributeClass, // Enter the end date and time."]),
        "estimate": OOPStringAttribute.descriptions(["en":"Shows the name of the estimate line."]),
        "estimatePerDayLines": OOPStringAttribute.descriptions(["en":"Stores the estimate per day detail lines."]),
        "exchangeRateDate": DateAttributeClass, // 
        "numberOfResources": OOPStringAttribute.descriptions(["en":"Shows the estimate of the number of resources intended to be staffed for this task."]),
        "percent": OOPStringAttribute.descriptions(["en":"Shows the percent for the estimate line."]),
        "price": OOPStringAttribute.descriptions(["en":"Shows the price for this estimate line."]),
        "priceBase": OOPStringAttribute.descriptions(["en":"Value of the Price in base currency."]),
        "priceList": OOPStringAttribute.descriptions(["en":"Shows the price list used in this estimate line."]),
        "product": OOPStringAttribute.descriptions(["en":"Select the product."]),
        "project": OOPStringAttribute.descriptions(["en":"Shows the project for this estimate line."]),
        "quantity": OOPStringAttribute.descriptions(["en":"Enter the estimated quantity of work, cost, and sales."]),
        "resourceCategory": OOPStringAttribute.descriptions(["en":"Shows the role of this resource on the estimate line."]),
        "resourceOrganizationalUnitId": OOPUUIDAttribute.descriptions(["en":"Select the organizational unit at the time the estimate line was registered of the resource who should perform the work."]),
        "startDateTime": DatetimeAttributeClass, // Shows the start date and time for the task for this estimate line."]),
        "task": OOPStringAttribute.descriptions(["en":"Shows the task related to this estimate line."]),
        "transactionCategory": OOPStringAttribute.descriptions(["en":"Select the type of transaction."]),
        "transactionClassification": OOPStringAttribute.descriptions(["en":"Shows the transaction classification for this estimate line."]),
        "transactionClassification_display": OOPStringAttribute.descriptions(["en":""]),
        "transactionTypeCode": OOPStringAttribute.descriptions(["en":"Shows the transaction type for this estimate line."]),
        "transactionTypeCode_display": OOPStringAttribute.descriptions(["en":""]),
        "unit": OOPStringAttribute.descriptions(["en":"Shows the unit of measurement for this estimate line."]),
        "unitSchedule": OOPStringAttribute.descriptions(["en":"Select the unit of measure for the estimate quantity."]),
        "vendorType": OOPStringAttribute.descriptions(["en":""]),
        "vendorType_display": OOPStringAttribute.descriptions(["en":""]),
      ])
      .registerPath("crm_estimatelines");
  }
}
mixin(EntityCalls!("CRMEstimateLineEntity"));

unittest {
  version(test_model_crm) {
    assert(CRMEstimateLineEntity);

  auto entity = CRMEstimateLineEntity;
  // auto repository = OOPFileRepository("./tests");
/* /*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */ 
  }
}