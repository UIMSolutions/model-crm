module models.crm.services.contracts.line;

@safe:
import uim.entities;

// Line item in a contract that specifies the type of service a customer is entitled to.
class DCRMContractLine : DOOPEntity {
  mixin(EntityThis!("CRMContractLine"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "createdOnBehalfBy": StringAttributeClass, // Shows who created the record on behalf of another user."]),
        "modifiedOnBehalfBy": StringAttributeClass, // Shows who last updated the record on behalf of another user."]),
        "overriddenCreatedOn": StringAttributeClass, // Date and time that the record was migrated."]),
        "importSequenceNumber": IntegerAttributeClass, //Sequence number of the import that created this record."]),
        "ownerId": UUIDAttributeClass, // Owner Id"]),
        "ownerIdType": StringAttributeClass, // The type of owner, either User or Team."]),
        "owningBusinessUnitId": UUIDAttributeClass, //Unique identifier for the business unit that owns the record"]),
        "owningUserId": StringAttributeClass, // Unique identifier of the user that owns the activity."]),
        "owningTeamId": StringAttributeClass, // Unique identifier for the team that owns the record."]),
        "timeZoneRuleVersionNumber": IntegerAttributeClass, //For internal use only."]),
        "utcConversionTimeZoneCode": StringAttributeClass, // Time zone code that was in use when the record was created."]),
        "versionNumber": IntegerAttributeClass, //Version Number"]),
        "contractDetailId": UUIDAttributeClass, // Unique identifier of the contract line."]),
        "title": StringAttributeClass, // Type a title or name that describes the contract line."]),
        "activeOn": StringAttributeClass, // Enter the date when the contract line becomes active."]),
        "allotmentsOverage": StringAttributeClass, // Shows the number of minutes over the Total Allotments field that have been spent on resolved cases related to the contract line."]),
        "allotmentsRemaining": StringAttributeClass, // Shows the number of cases or minutes remaining, based on the resolved cases logged to the contract line."]),
        "allotmentsUsed": StringAttributeClass, // Shows the number of cases or minutes used in the resolved cases on the contract line."]),
        "contractId": UUIDAttributeClass, // Unique identifier of the contract associated with the contract line."]),
        "contractStateCode": StringAttributeClass, // Status of the contract."]),
        "contractStateCode_display": StringAttributeClass, //
        "customerId": UUIDAttributeClass, // The customer account or contact to provide a quick link to additional customer details, such as account information, activities, and opportunities."]),
        "customerIdType": StringAttributeClass, // The type of customer, either Account or Contact."]),
        "discount": StringAttributeClass, // Type the discount amount for the contract line to deduct any negotiated or other savings from the net amount due."]),
        "transactionCurrencyId": OOPLinkAttribute("aplCurrency").descriptions(["en":"Choose the local currency for the record to make sure budgets are reported in the correct currency."]),
        "exchangeRate": StringAttributeClass, // Shows the conversion rate of the record's currency. The exchange rate is used to convert all money fields in the record from the local currency to the system's default currency."]),
        "discountBase": StringAttributeClass, // Value of the Discount in base currency."]),
        "discountPercentage": OOPPercentageAttribute.descriptions(["en":"Type the discount rate that should be applied to the Total Price, for use in calculating the net amount due for the contract line."]),
        "effectivityCalendar": StringAttributeClass, // Days of the week and times for which the contract line item is effective."]),
        "expiresOn": StringAttributeClass, // Enter the date when the contract line expires. The date is automatically filled with the contract date, but you can change it if required."]),
        "initialQuantity": StringAttributeClass, // Type the number of units of the specified product or service that are eligible for support on the contract line."]),
        "lineItemOrder": StringAttributeClass, // Type the line item number for the contract line to easily identify the contract line and make sure it's listed in the correct order in the parent contract."]),
        "net": StringAttributeClass, // Shows the total charge to the customer for the contract line, calculated as the Total Price minus any discounts."]),
        "netBase": StringAttributeClass, // Value of the Net in base currency."]),
        "price": StringAttributeClass, // Type the total service charge for the contract line before any discounts are credited."]),
        "priceBase": StringAttributeClass, // Value of the Total Price in base currency."]),
        "productId": UUIDAttributeClass, // Choose the product that is eligible for services on the contract line."]),
        "productSerialNumber": IntegerAttributeClass, //Type the serial number for the product that is eligible for services on the contract line."]),
        "rate": StringAttributeClass, // Shows the cost per case or minute, calculated by dividing the Total Price value by the total number of cases or minutes allocated to the contract line."]),
        "rateBase": StringAttributeClass, // Value of the Rate in base currency."]),
        "serviceAddress": StringAttributeClass, // Choose the address for the customer account or contact where the services are provided."]),
        "serviceContractUnitsCode": StringAttributeClass, // Select the unit type allotted in the contract line, such as cases or minutes, to determine the level of support."]),
        "serviceContractUnitsCode_display": StringAttributeClass, //
        "stateCode": StringAttributeClass, // Shows whether the contract line is existing, renewed, canceled, or expired. You can't edit a contract line after it is saved, regardless of the status."]),
        "stateCode_display": StringAttributeClass, //
        "statusCode": StringAttributeClass, // Select the contract line's status."]),
        "statusCode_display": StringAttributeClass, //
        "totalAllotments": StringAttributeClass, // Type the total number of minutes or cases allowed for the contract line."]),
        "uoMId": UUIDAttributeClass, // Choose the unit of measurement for the base unit quantity for this purchase, such as each or dozen."]),
        "uoMScheduleId": UUIDAttributeClass, // Unique identifier of the unit group associated with the contract line."]),
        "accountId": UUIDAttributeClass, // Unique identifier of the account with which the contract is associated."]),
        "contactId": UUIDAttributeClass, // Unique identifier for the contact associated with the contract line."]),
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