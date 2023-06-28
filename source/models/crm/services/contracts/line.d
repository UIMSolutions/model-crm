module models.crm.services.contracts.line;

@safe:
import uim.entities;

// Line item in a contract that specifies the type of service a customer is entitled to.
class DCRMContractLine : DEntity {
  mixin(EntityThis!("CRMContractLine"));

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
        "versionNumber": IntegerAttribute, //Version Number"]),
        "contractDetailId": UUIDAttribute, // Unique identifier of the contract line."]),
        "title": StringAttribute, // Type a title or name that describes the contract line."]),
        "activeOn": StringAttribute, // Enter the date when the contract line becomes active."]),
        "allotmentsOverage": StringAttribute, // Shows the number of minutes over the Total Allotments field that have been spent on resolved cases related to the contract line."]),
        "allotmentsRemaining": StringAttribute, // Shows the number of cases or minutes remaining, based on the resolved cases logged to the contract line."]),
        "allotmentsUsed": StringAttribute, // Shows the number of cases or minutes used in the resolved cases on the contract line."]),
        "contractId": UUIDAttribute, // Unique identifier of the contract associated with the contract line."]),
        "contractStateCode": StringAttribute, // Status of the contract."]),
        "contractStateCode_display": StringAttribute, //
        "customerId": UUIDAttribute, // The customer account or contact to provide a quick link to additional customer details, such as account information, activities, and opportunities."]),
        "customerIdType": StringAttribute, // The type of customer, either Account or Contact."]),
        "discount": StringAttribute, // Type the discount amount for the contract line to deduct any negotiated or other savings from the net amount due."]),
        "transactionCurrencyId": CurrencyIdAttribute, // Choose the local currency for the record to make sure budgets are reported in the correct currency."]),
        "exchangeRate": StringAttribute, // Shows the conversion rate of the record's currency. The exchange rate is used to convert all money fields in the record from the local currency to the system's default currency."]),
        "discountBase": StringAttribute, // Value of the Discount in base currency."]),
        "discountPercentage": PercentageAttribute, // Type the discount rate that should be applied to the Total Price, for use in calculating the net amount due for the contract line."]),
        "effectivityCalendar": StringAttribute, // Days of the week and times for which the contract line item is effective."]),
        "expiresOn": StringAttribute, // Enter the date when the contract line expires. The date is automatically filled with the contract date, but you can change it if required."]),
        "initialQuantity": StringAttribute, // Type the number of units of the specified product or service that are eligible for support on the contract line."]),
        "lineItemOrder": StringAttribute, // Type the line item number for the contract line to easily identify the contract line and make sure it's listed in the correct order in the parent contract."]),
        "net": StringAttribute, // Shows the total charge to the customer for the contract line, calculated as the Total Price minus any discounts."]),
        "netBase": StringAttribute, // Value of the Net in base currency."]),
        "price": StringAttribute, // Type the total service charge for the contract line before any discounts are credited."]),
        "priceBase": StringAttribute, // Value of the Total Price in base currency."]),
        "productId": UUIDAttribute, // Choose the product that is eligible for services on the contract line."]),
        "productSerialNumber": IntegerAttribute, //Type the serial number for the product that is eligible for services on the contract line."]),
        "rate": StringAttribute, // Shows the cost per case or minute, calculated by dividing the Total Price value by the total number of cases or minutes allocated to the contract line."]),
        "rateBase": StringAttribute, // Value of the Rate in base currency."]),
        "serviceAddress": StringAttribute, // Choose the address for the customer account or contact where the services are provided."]),
        "serviceContractUnitsCode": StringAttribute, // Select the unit type allotted in the contract line, such as cases or minutes, to determine the level of support."]),
        "serviceContractUnitsCode_display": StringAttribute, //
        "stateCode": StringAttribute, // Shows whether the contract line is existing, renewed, canceled, or expired. You can't edit a contract line after it is saved, regardless of the status."]),
        "stateCode_display": StringAttribute, //
        "statusCode": StringAttribute, // Select the contract line's status."]),
        "statusCode_display": StringAttribute, //
        "totalAllotments": StringAttribute, // Type the total number of minutes or cases allowed for the contract line."]),
        "uoMId": UUIDAttribute, // Choose the unit of measurement for the base unit quantity for this purchase, such as each or dozen."]),
        "uoMScheduleId": UUIDAttribute, // Unique identifier of the unit group associated with the contract line."]),
        "accountId": UUIDAttribute, // Unique identifier of the account with which the contract is associated."]),
        "contactId": UUIDAttribute, // Unique identifier for the contact associated with the contract line."]),
      ])
      .registerPath("crm_contractlines");
  }
}
mixin(EntityCalls!("CRMContractLine"));

unittest {
  version(test_model_crm) {
    assert(CRMContractLine);
  
  auto entity = CRMContractLine;
  // auto repository = OOPFileRepository("./tests");
/* /*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */ 
  }
}