module models.crm.services.contracts.contract;

@safe:
import uim.entities;

// Agreement to provide customer service during a specified amount of time or number of cases.
class DCRMContract : DOOPEntity {
  mixin(EntityThis!("CRMContract"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "createdOnBehalfBy": UUIDAttributeClass, //Shows who created the record on behalf of another user."]),
        "modifiedOnBehalfBy": UUIDAttributeClass, //Shows who last updated the record on behalf of another user."]),
        "overriddenCreatedOn": UserIdAttributeClass, // Date and time that the record was migrated."]),
        "importSequenceNumber": UserIdAttributeClass, // Sequence number of the import that created this record."]),
        "ownerId": UserIdAttributeClass, // Owner Id"]),
        "ownerIdType": UserIdAttributeClass, // The type of owner, either User or Team."]),
        "owningBusinessUnit": UserIdAttributeClass, // Unique identifier for the business unit that owns the record"]),
        "owningUserId": UUIDAttributeClass, //Unique identifier of the user that owns the activity."]),
        "owningTeamId": UserIdAttributeClass, // Unique identifier for the team that owns the record."]),
        "timeZoneRuleVersionNumber": UserIdAttributeClass, // For internal use only."]),
        "utcConversionTimeZoneCode": UserIdAttributeClass, // Time zone code that was in use when the record was created."]),
        "contractId": UserIdAttributeClass, // Unique identifier of the contract."]),
        "emailAddress": UserIdAttributeClass, // The primary email address for the entity."]),
        "title": UserIdAttributeClass, // Type a title or name for the contract that indicates the purpose of the contract."]),
        "activeOn": UserIdAttributeClass, // Enter the date when the contract becomes active."]),
        "allotmentTypeCode": UserIdAttributeClass, // Type of allotment that the contract supports."]),
        "allotmentTypeCode_display": UserIdAttributeClass, // 
        "billingCustomerId": UserIdAttributeClass, // Select the customer account or contact to which the contract should be billed to provide a quick link to address and other customer details."]),
        "billingCustomerIdType": UserIdAttributeClass, // The type of billing customer, either Account or Contact."]),
        "billingEndOn": UserIdAttributeClass, // Enter the end date for the contract's billing period to indicate the period for which the customer must pay for a service."]),
        "billingFrequencyCode": UserIdAttributeClass, // Select the billing schedule of the contract to indicate how often the customer should be invoiced."]),
        "billingFrequencyCode_display": UserIdAttributeClass, // 
        "billingStartOn": UserIdAttributeClass, // Enter the start date for the contract's billing period to indicate the period for which the customer must pay for a service. This defaults to the same date that is selected in the Contract Start Date field."]),
        "billToAddress": UserIdAttributeClass, // Choose which address to send the invoice to."]),
        "cancelOn": UserIdAttributeClass, // Shows the date and time when the contract was canceled."]),
        "contractLanguage": UserIdAttributeClass, // Type additional information about the contract, such as the products or services provided to the customer."]),
        "contractNumber": UserIdAttributeClass, // Shows the number for the contract for customer reference and searching capabilities. You cannot modify this number."]),
        "contractServiceLevelCode": UserIdAttributeClass, // Select the level of service that should be provided for the contract based on your company's definition of bronze, silver, or gold."]),
        "contractServiceLevelCode_display": UserIdAttributeClass, // 
        "contractTemplateAbbreviation": UserIdAttributeClass, // Shows the abbreviation of the contract template selected when the contract is created."]),
        "contractTemplateId": UserIdAttributeClass, // Choose the contract template that should be used to determine the terms of the contract, such as allotment type, available hours, and billing frequency."]),
        "customerId": UserIdAttributeClass, // The customer account or contact to provide a quick link to additional customer details, such as account information, activities, and opportunities."]),
        "customerIdType": UserIdAttributeClass, // The type of customer, either Account or Contact."]),
        "duration": UserIdAttributeClass, // Shows for the duration of the contract, in days, based on the contract start and end dates."]),
        "effectivityCalendar": UserIdAttributeClass, // Days of the week and times during which customer service support is available for the duration of the contract."]),
        "expiresOn": UserIdAttributeClass, // Enter the date when the contract expires."]),
        "netPrice": UserIdAttributeClass, // Shows the total charge to the customer for the service contract, calculated as the sum of values in the Net field for each existing contract line related to the contract."]),
        "transactionCurrencyId": UserIdAttributeClass, // Choose the local currency for the record to make sure budgets are reported in the correct currency."]),
        "exchangeRate": UserIdAttributeClass, // Shows the conversion rate of the record's currency. The exchange rate is used to convert all money fields in the record from the local currency to the system's default currency."]),
        "netPriceBase": UserIdAttributeClass, // Value of the Net Price in base currency."]),
        "originatingContract": UserIdAttributeClass, // Choose the original contract that this contract was created from. This information is used to track renewal history."]),
        "serviceAddress": UserIdAttributeClass, // Choose the address for the customer account or contact where the services are provided."]),
        "stateCode": UserIdAttributeClass, // Shows whether the contract is in draft, invoiced, active, on hold, canceled, or expired. You can edit only the contracts that are in draft status."]),
        "stateCode_display": UserIdAttributeClass, // 
        "statusCode": UserIdAttributeClass, // Select the contract's status."]),
        "statusCode_display": UserIdAttributeClass, // 
        "totalDiscount": UserIdAttributeClass, // Shows the total discount applied to the contract's service charges, calculated as the sum of values in the Discount fields for each existing contract line related to the contract."]),
        "totalDiscountBase": UserIdAttributeClass, // Value of the Total Discount in base currency."]),
        "totalPrice": UserIdAttributeClass, // Shows the total service charge for the contract, before any discounts are credited. This is calculated as the sum of values in the Total Price field for each existing contract line related to the contract."]),
        "totalPriceBase": UserIdAttributeClass, // Value of the Total Price in base currency."]),
        "useDiscountAsPercentage": UserIdAttributeClass, // Select whether the discounts entered on contract lines for this contract should be entered as a percentage or a fixed dollar value."]),
        "entityImageId": UserIdAttributeClass, // 
        "accountId": UserIdAttributeClass, // Unique identifier of the account with which the contract is associated."]),
        "billingAccountId": UserIdAttributeClass, // Unique identifier of the account to which the contract is to be billed."]),
        "billingContactId": UserIdAttributeClass, // Unique identifier of the contact to whom the contract is to be billed."]),
        "contactId": UserIdAttributeClass, // Unique identifier of the contact specified for the contract."]),
      ])
      .registerPath("crm_contracts");
  }
}
mixin(EntityCalls!("CRMContract"));
unittest {
  version(test_model_crm) {
    assert(CRMContract);
  
  auto entity = CRMContract;
  // auto repository = OOPFileRepository("./tests");
/* /*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */ 
  }
}