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
        "estimateLineId": UUIDAttributeClass, // Shows the entity instances."]),
        "stateCode": StringAttributeClass, // Status of the Estimate Line"]),
        "stateCode_display": StringAttributeClass, //
        "statusCode": StringAttributeClass, // Reason for the status of the Estimate Line"]),
        "statusCode_display": StringAttributeClass, //
        "accountCustomer": StringAttributeClass, // Shows the customer for the estimate line."]),
        "accountingDate": DateAttributeClass, // 
        "accountVendor": StringAttributeClass, //
        "amount": StringAttributeClass, // Shows the amount on the estimate line."]),
        "transactionCurrencyId": CurrencyIdAttributeClass, // Shows the currency associated with the entity."]),
        "exchangeRate": StringAttributeClass, // Exchange rate for the currency associated with the entity with respect to the base currency."]),
        "amountBase": StringAttributeClass, // Value of the Amount in base currency."]),
        "amountMethod": StringAttributeClass, // Shows the calculation method used to determine the amount on the estimate line."]),
        "amountMethod_display": StringAttributeClass, //
        "basisAmount": StringAttributeClass, //
        "basisAmountBase": StringAttributeClass, // Value of the Basis Amount in base currency."]),
        "basisPrice": StringAttributeClass, //
        "basisPriceBase": StringAttributeClass, // Value of the Basis Price in base currency."]),
        "basisQuantity": StringAttributeClass, //
        "billingType": StringAttributeClass, // Shows whether this estimate line is charged to the customer. "]),
        "billingType_display": StringAttributeClass, //
        "bookableResource": StringAttributeClass, // Shows the bookable resource for which estimates are generated."]),
        "contactCustomer": StringAttributeClass, // Shows the name of the customer contact."]),
        "contactVendor": StringAttributeClass, //
        "customerType": StringAttributeClass, // Select the type of customer."]),
        "customerType_display": StringAttributeClass, //
        "documentDate": DateAttributeClass, // Shows the transaction date of the estimate line."]),
        "endDateTime": DatetimeAttributeClass, // Enter the end date and time."]),
        "estimate": StringAttributeClass, // Shows the name of the estimate line."]),
        "estimatePerDayLines": StringAttributeClass, // Stores the estimate per day detail lines."]),
        "exchangeRateDate": DateAttributeClass, // 
        "numberOfResources": StringAttributeClass, // Shows the estimate of the number of resources intended to be staffed for this task."]),
        "percent": StringAttributeClass, // Shows the percent for the estimate line."]),
        "price": StringAttributeClass, // Shows the price for this estimate line."]),
        "priceBase": StringAttributeClass, // Value of the Price in base currency."]),
        "priceList": StringAttributeClass, // Shows the price list used in this estimate line."]),
        "product": StringAttributeClass, // Select the product."]),
        "project": StringAttributeClass, // Shows the project for this estimate line."]),
        "quantity": StringAttributeClass, // Enter the estimated quantity of work, cost, and sales."]),
        "resourceCategory": StringAttributeClass, // Shows the role of this resource on the estimate line."]),
        "resourceOrganizationalUnitId": UUIDAttributeClass, // Select the organizational unit at the time the estimate line was registered of the resource who should perform the work."]),
        "startDateTime": DatetimeAttributeClass, // Shows the start date and time for the task for this estimate line."]),
        "task": StringAttributeClass, // Shows the task related to this estimate line."]),
        "transactionCategory": StringAttributeClass, // Select the type of transaction."]),
        "transactionClassification": StringAttributeClass, // Shows the transaction classification for this estimate line."]),
        "transactionClassification_display": StringAttributeClass, //
        "transactionTypeCode": StringAttributeClass, // Shows the transaction type for this estimate line."]),
        "transactionTypeCode_display": StringAttributeClass, //
        "unit": StringAttributeClass, // Shows the unit of measurement for this estimate line."]),
        "unitSchedule": StringAttributeClass, // Select the unit of measure for the estimate quantity."]),
        "vendorType": StringAttributeClass, //
        "vendorType_display": StringAttributeClass, //
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