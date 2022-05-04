module models.crm.sales.quotes.quote;

@safe:
import uim.entities;

// Formal offer for products and/or services, proposed at specific prices and related payment terms, which is sent to a prospective customer.
class DCRMQuote : DOOPEntity {
  mixin(EntityThis!("CRMQuote"));

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
        "owningUserId": UUIDAttributeClass, //Unique identifier of the user that owns the activity."]),
        "owningTeamId": UUIDAttributeClass, //Unique identifier for the team that owns the record."]),
        "timeZoneRuleVersionNumber": IntegerAttributeClass, //For internal use only."]),
        "utcConversionTimeZoneCode": StringAttributeClass, // Time zone code that was in use when the record was created."]),
        "quoteId": UUIDAttributeClass, // Unique identifier of the quote."]),
        "emailAddress": StringAttributeClass, // The primary email address for the entity."]),
        "processId": UUIDAttributeClass, // Contains the id of the process associated with the entity."]),
        "stageId": UUIDAttributeClass, // Contains the id of the stage where the entity is located."]),
        "traversedPath": StringAttributeClass, // A comma separated list of string values representing the unique identifiers of stages in a Business Process Flow Instance in the order that they occur."]),
        "billToAddressId": OOPLinkAttribute("address").descriptions(["en":"Unique identifier of the billing address."]),
        "billToCity": StringAttributeClass, // Type the city for the customer's billing address."]),
        "billToComposite": StringAttributeClass, // Shows the complete Bill To address."]),
        "billToContactName": StringAttributeClass, // Type the primary contact name at the customer's billing address."]),
        "billToCountry": StringAttributeClass, // Type the country or region for the customer's billing address."]),
        "billToFax": StringAttributeClass, // Type the fax number for the customer's billing address."]),
        "billToLine1": StringAttributeClass, // Type the first line of the customer's billing address."]),
        "billToLine2": StringAttributeClass, // Type the second line of the customer's billing address."]),
        "billToLine3": StringAttributeClass, // Type the third line of the billing address."]),
        "billToName": StringAttributeClass, // Type a name for the customer's billing address, such as 'Headquarters' or 'Field office', to identify the address."]),
        "billToPostalCode": StringAttributeClass, // Type the ZIP Code or postal code for the billing address."]),
        "billToStateOrProvince": StringAttributeClass, // Type the state or province for the billing address."]),
        "billToTelephone": StringAttributeClass, // Type the phone number for the customer's billing address."]),
        "closedOn": TimestampAttributeClass, //Enter the date when the quote was closed to indicate the expiration, revision, or cancellation date."]),
        "customerId": UUIDAttributeClass, // The customer account or contact to provide a quick link to additional customer details, such as account information, activities, and opportunities."]),
        "customerIdType": StringAttributeClass, // The type of customer, either Account or Contact."]),
        "discountAmount": StringAttributeClass, // Type the discount amount for the quote if the customer is eligible for special savings."]),
        "transactionCurrencyId": OOPLinkAttribute("aplCurrency").descriptions(["en":"Choose the local currency for the record to make sure budgets are reported in the correct currency."]),
        "exchangeRate": StringAttributeClass, // Shows the conversion rate of the record's currency. The exchange rate is used to convert all money fields in the record from the local currency to the system's default currency."]),
        "discountAmountBase": StringAttributeClass, // Value of the Quote Discount Amount in base currency."]),
        "discountPercentage": OOPPercentageAttribute.descriptions(["en":"Type the discount rate that should be applied to the Detail Amount field to include additional savings for the customer in the quote."]),
        "effectiveFrom": StringAttributeClass, // Enter the date when the quote pricing is effective or was first communicated to the customer."]),
        "effectiveTo": StringAttributeClass, // Enter the expiration date or last day the quote pricing is effective for the customer."]),
        "expiresOn": TimestampAttributeClass, //Enter the date a decision or order is due from the customer to indicate the expiration date of the quote."]),
        "freightAmount": StringAttributeClass, // Type the cost of freight or shipping for the products included in the quote for use in calculating the Total Amount field."]),
        "freightAmountBase": StringAttributeClass, // Value of the Freight Amount in base currency."]),
        "freightTermsCode": StringAttributeClass, // Select the freight terms to make sure shipping charges are processed correctly."]),
        "freightTermsCode_display": StringAttributeClass, //
        "opportunityId": UUIDAttributeClass, // Choose the opportunity that the quote is related to for reporting and analytics."]),
        "paymentTermsCode": StringAttributeClass, // Select the payment terms to indicate when the customer needs to pay the total amount."]),
        "paymentTermsCode_display": StringAttributeClass, //
        "priceLevelId": UUIDAttributeClass, // Choose the price list associated with this record to make sure the products associated with the campaign are offered at the correct prices."]),
        "pricingErrorCode": StringAttributeClass, // Pricing error for the quote."]),
        "pricingErrorCode_display": StringAttributeClass, //
        "quoteNumber": IntegerAttributeClass, //Shows the quote number for customer reference and searching capabilities. The number cannot be modified."]),
        "requestDeliveryBy": UUIDAttributeClass, //Enter the delivery date requested by the customer for all products in the quote."]),
        "revisionNumber": IntegerAttributeClass, //Shows the version number of the quote for revision history tracking."]),
        "shippingMethodCode": StringAttributeClass, // Select a shipping method for deliveries sent to this address."]),
        "shippingMethodCode_display": StringAttributeClass, //
        "shipToAddressId": OOPLinkAttribute("address").descriptions(["en":"Unique identifier of the shipping address."]),
        "shipToCity": StringAttributeClass, // Type the city for the customer's shipping address."]),
        "shipToComposite": StringAttributeClass, // Shows the complete Ship To address."]),
        "shipToContactName": StringAttributeClass, // Type the primary contact name at the customer's shipping address."]),
        "shipToCountry": StringAttributeClass, // Type the country or region for the customer's shipping address."]),
        "shipToFax": StringAttributeClass, // Type the fax number for the customer's shipping address."]),
        "shipToFreightTermsCode": StringAttributeClass, // Select the freight terms to make sure shipping orders are processed correctly."]),
        "shipToFreightTermsCode_display": StringAttributeClass, //
        "shipToLine1": StringAttributeClass, // Type the first line of the customer's shipping address."]),
        "shipToLine2": StringAttributeClass, // Type the second line of the customer's shipping address."]),
        "shipToLine3": StringAttributeClass, // Type the third line of the shipping address."]),
        "shipToName": StringAttributeClass, // Type a name for the customer's shipping address, such as 'Headquarters' or 'Field office', to identify the address."]),
        "shipToPostalCode": StringAttributeClass, // Type the ZIP Code or postal code for the shipping address."]),
        "shipToStateOrProvince": StringAttributeClass, // Type the state or province for the shipping address."]),
        "shipToTelephone": StringAttributeClass, // Type the phone number for the customer's shipping address."]),
        "stateCode": StringAttributeClass, // Shows whether the quote is draft, active, won, or closed. Only draft quotes can be edited."]),
        "stateCode_display": StringAttributeClass, //
        "statusCode": StringAttributeClass, // Select the quote's status."]),
        "statusCode_display": StringAttributeClass, //
        "totalAmount": StringAttributeClass, // Shows the total amount due, calculated as the sum of the products, discounts, freight, and taxes for the quote."]),
        "totalAmountBase": StringAttributeClass, // Value of the Total Amount in base currency."]),
        "totalAmountLessFreight": StringAttributeClass, // Shows the total product amount for the quote, minus any discounts. This value is added to freight and tax amounts in the calculation for the total amount due for the quote."]),
        "totalAmountLessFreightBase": StringAttributeClass, // Value of the Total Pre-Freight Amount in base currency."]),
        "totalDiscountAmount": StringAttributeClass, // Shows the total discount amount, based on the discount price and rate entered on the quote."]),
        "totalDiscountAmountBase": StringAttributeClass, // Value of the Total Discount Amount in base currency."]),
        "totalLineItemAmount": StringAttributeClass, // Shows the sum of all existing and write-in products included on the quote, based on the specified price list and quantities."]),
        "totalLineItemAmountBase": StringAttributeClass, // Value of the Total Detail Amount in base currency."]),
        "totalLineItemDiscountAmount": StringAttributeClass, // Shows the total of the Manual Discount amounts specified on all products included in the quote. This value is reflected in the Detail Amount field on the quote and is added to any discount amount or rate specified on the quote"]),
        "totalLineItemDiscountAmountBase": StringAttributeClass, // Value of the Total Line Item Discount Amount in base currency."]),
        "totalTax": StringAttributeClass, // Shows the total of the Tax amounts specified on all products included in the quote, included in the Total Amount due calculation for the quote."]),
        "totalTaxBase": StringAttributeClass, // Value of the Total Tax in base currency."]),
        "willCall": StringAttributeClass, // Select whether the products included in the quote should be shipped to the specified address or held until the customer calls with further pick up or delivery instructions."]),
        "onHoldTime": TimeAttributeClass, // Shows the duration in minutes for which the quote was on hold."]),
        "lastOnHoldTime": TimeAttributeClass, // Contains the date time stamp of the last on hold time."]),
        "SLAId": OOPLinkAttribute("aplSLA").descriptions(["en":"Choose the service level agreement (SLA) that you want to apply to the quote record."]),
        "SLAInvokedId": UUIDAttributeClass, // Last SLA that was applied to this quote. This field is for internal use only."]),
        "accountId": UUIDAttributeClass, // Unique identifier of the account with which the quote is associated."]),
        "contactId": UUIDAttributeClass, // Unique identifier of the contact associated with the quote."]),
        "campaignId": UUIDAttributeClass, // Shows the campaign that the order was created from."]),
      ])
      .registerPath("crm_quotes");
  }
}
mixin(EntityCalls!("CRMQuote"));

unittest {
  version(test_model_crm) {
    assert(CRMQuote);

  auto entity = CRMQuote; 
    
  // auto repository = OOPFileRepository("./tests");
/* /*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */ 
  }
}