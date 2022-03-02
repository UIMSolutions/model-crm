module models.crm.sales.quotes.quote;

@safe:
import uim.entities;

// Formal offer for products and/or services, proposed at specific prices and related payment terms, which is sent to a prospective customer.
class DCRMQuote : DOOPEntity {
  mixin(OOPEntityThis!("CRMQuote"));

  override void initialize() {
    super.initialize;

    this
      .attributes([
        "createdOnBehalfBy": OOPLinkAttribute("aplUser").descriptions(["en":"Shows who created the record on behalf of another user."]),
        "modifiedOnBehalfBy": OOPLinkAttribute("aplUser").descriptions(["en":"Shows who last updated the record on behalf of another user."]),
        "overriddenCreatedOn": OOPTimestampAttribute.descriptions(["en":"Date and time that the record was migrated."]),
        "importSequenceNumber": OOPIntegerAttribute.descriptions(["en":"Sequence number of the import that created this record."]),
        "ownerId": OOPUUIDAttribute.descriptions(["en":"Owner Id"]),
        "ownerIdType": OOPStringAttribute.descriptions(["en":"The type of owner, either User or Team."]),
        "owningBusinessUnitId": OOPLinkAttribute("aplBusinessUnit").descriptions(["en":"Unique identifier for the business unit that owns the record"]),
        "owningUserId": OOPLinkAttribute("aplUser").descriptions(["en":"Unique identifier of the user that owns the activity."]),
        "owningTeamId": OOPLinkAttribute("aplTeam").descriptions(["en":"Unique identifier for the team that owns the record."]),
        "timeZoneRuleVersionNumber": OOPIntegerAttribute.descriptions(["en":"For internal use only."]),
        "utcConversionTimeZoneCode": OOPStringAttribute.descriptions(["en":"Time zone code that was in use when the record was created."]),
        "quoteId": OOPUUIDAttribute.descriptions(["en":"Unique identifier of the quote."]),
        "emailAddress": OOPStringAttribute.descriptions(["en":"The primary email address for the entity."]),
        "processId": OOPUUIDAttribute.descriptions(["en":"Contains the id of the process associated with the entity."]),
        "stageId": OOPUUIDAttribute.descriptions(["en":"Contains the id of the stage where the entity is located."]),
        "traversedPath": OOPStringAttribute.descriptions(["en":"A comma separated list of string values representing the unique identifiers of stages in a Business Process Flow Instance in the order that they occur."]),
        "billToAddressId": OOPLinkAttribute("address").descriptions(["en":"Unique identifier of the billing address."]),
        "billToCity": OOPStringAttribute.descriptions(["en":"Type the city for the customer's billing address."]),
        "billToComposite": OOPStringAttribute.descriptions(["en":"Shows the complete Bill To address."]),
        "billToContactName": OOPStringAttribute.descriptions(["en":"Type the primary contact name at the customer's billing address."]),
        "billToCountry": OOPStringAttribute.descriptions(["en":"Type the country or region for the customer's billing address."]),
        "billToFax": OOPStringAttribute.descriptions(["en":"Type the fax number for the customer's billing address."]),
        "billToLine1": OOPStringAttribute.descriptions(["en":"Type the first line of the customer's billing address."]),
        "billToLine2": OOPStringAttribute.descriptions(["en":"Type the second line of the customer's billing address."]),
        "billToLine3": OOPStringAttribute.descriptions(["en":"Type the third line of the billing address."]),
        "billToName": OOPStringAttribute.descriptions(["en":"Type a name for the customer's billing address, such as 'Headquarters' or 'Field office', to identify the address."]),
        "billToPostalCode": OOPStringAttribute.descriptions(["en":"Type the ZIP Code or postal code for the billing address."]),
        "billToStateOrProvince": OOPStringAttribute.descriptions(["en":"Type the state or province for the billing address."]),
        "billToTelephone": OOPStringAttribute.descriptions(["en":"Type the phone number for the customer's billing address."]),
        "closedOn": OOPTimestampAttribute.descriptions(["en":"Enter the date when the quote was closed to indicate the expiration, revision, or cancellation date."]),
        "customerId": OOPUUIDAttribute.descriptions(["en":"The customer account or contact to provide a quick link to additional customer details, such as account information, activities, and opportunities."]),
        "customerIdType": OOPStringAttribute.descriptions(["en":"The type of customer, either Account or Contact."]),
        "discountAmount": OOPStringAttribute.descriptions(["en":"Type the discount amount for the quote if the customer is eligible for special savings."]),
        "transactionCurrencyId": OOPLinkAttribute("aplCurrency").descriptions(["en":"Choose the local currency for the record to make sure budgets are reported in the correct currency."]),
        "exchangeRate": OOPStringAttribute.descriptions(["en":"Shows the conversion rate of the record's currency. The exchange rate is used to convert all money fields in the record from the local currency to the system's default currency."]),
        "discountAmountBase": OOPStringAttribute.descriptions(["en":"Value of the Quote Discount Amount in base currency."]),
        "discountPercentage": OOPPercentageAttribute.descriptions(["en":"Type the discount rate that should be applied to the Detail Amount field to include additional savings for the customer in the quote."]),
        "effectiveFrom": OOPStringAttribute.descriptions(["en":"Enter the date when the quote pricing is effective or was first communicated to the customer."]),
        "effectiveTo": OOPStringAttribute.descriptions(["en":"Enter the expiration date or last day the quote pricing is effective for the customer."]),
        "expiresOn": OOPTimestampAttribute.descriptions(["en":"Enter the date a decision or order is due from the customer to indicate the expiration date of the quote."]),
        "freightAmount": OOPStringAttribute.descriptions(["en":"Type the cost of freight or shipping for the products included in the quote for use in calculating the Total Amount field."]),
        "freightAmountBase": OOPStringAttribute.descriptions(["en":"Value of the Freight Amount in base currency."]),
        "freightTermsCode": OOPStringAttribute.descriptions(["en":"Select the freight terms to make sure shipping charges are processed correctly."]),
        "freightTermsCode_display": OOPStringAttribute.descriptions(["en":""]),
        "opportunityId": OOPUUIDAttribute.descriptions(["en":"Choose the opportunity that the quote is related to for reporting and analytics."]),
        "paymentTermsCode": OOPStringAttribute.descriptions(["en":"Select the payment terms to indicate when the customer needs to pay the total amount."]),
        "paymentTermsCode_display": OOPStringAttribute.descriptions(["en":""]),
        "priceLevelId": OOPUUIDAttribute.descriptions(["en":"Choose the price list associated with this record to make sure the products associated with the campaign are offered at the correct prices."]),
        "pricingErrorCode": OOPStringAttribute.descriptions(["en":"Pricing error for the quote."]),
        "pricingErrorCode_display": OOPStringAttribute.descriptions(["en":""]),
        "quoteNumber": OOPIntegerAttribute.descriptions(["en":"Shows the quote number for customer reference and searching capabilities. The number cannot be modified."]),
        "requestDeliveryBy": OOPLinkAttribute("aplUser").descriptions(["en":"Enter the delivery date requested by the customer for all products in the quote."]),
        "revisionNumber": OOPIntegerAttribute.descriptions(["en":"Shows the version number of the quote for revision history tracking."]),
        "shippingMethodCode": OOPStringAttribute.descriptions(["en":"Select a shipping method for deliveries sent to this address."]),
        "shippingMethodCode_display": OOPStringAttribute.descriptions(["en":""]),
        "shipToAddressId": OOPLinkAttribute("address").descriptions(["en":"Unique identifier of the shipping address."]),
        "shipToCity": OOPStringAttribute.descriptions(["en":"Type the city for the customer's shipping address."]),
        "shipToComposite": OOPStringAttribute.descriptions(["en":"Shows the complete Ship To address."]),
        "shipToContactName": OOPStringAttribute.descriptions(["en":"Type the primary contact name at the customer's shipping address."]),
        "shipToCountry": OOPStringAttribute.descriptions(["en":"Type the country or region for the customer's shipping address."]),
        "shipToFax": OOPStringAttribute.descriptions(["en":"Type the fax number for the customer's shipping address."]),
        "shipToFreightTermsCode": OOPStringAttribute.descriptions(["en":"Select the freight terms to make sure shipping orders are processed correctly."]),
        "shipToFreightTermsCode_display": OOPStringAttribute.descriptions(["en":""]),
        "shipToLine1": OOPStringAttribute.descriptions(["en":"Type the first line of the customer's shipping address."]),
        "shipToLine2": OOPStringAttribute.descriptions(["en":"Type the second line of the customer's shipping address."]),
        "shipToLine3": OOPStringAttribute.descriptions(["en":"Type the third line of the shipping address."]),
        "shipToName": OOPStringAttribute.descriptions(["en":"Type a name for the customer's shipping address, such as 'Headquarters' or 'Field office', to identify the address."]),
        "shipToPostalCode": OOPStringAttribute.descriptions(["en":"Type the ZIP Code or postal code for the shipping address."]),
        "shipToStateOrProvince": OOPStringAttribute.descriptions(["en":"Type the state or province for the shipping address."]),
        "shipToTelephone": OOPStringAttribute.descriptions(["en":"Type the phone number for the customer's shipping address."]),
        "stateCode": OOPStringAttribute.descriptions(["en":"Shows whether the quote is draft, active, won, or closed. Only draft quotes can be edited."]),
        "stateCode_display": OOPStringAttribute.descriptions(["en":""]),
        "statusCode": OOPStringAttribute.descriptions(["en":"Select the quote's status."]),
        "statusCode_display": OOPStringAttribute.descriptions(["en":""]),
        "totalAmount": OOPStringAttribute.descriptions(["en":"Shows the total amount due, calculated as the sum of the products, discounts, freight, and taxes for the quote."]),
        "totalAmountBase": OOPStringAttribute.descriptions(["en":"Value of the Total Amount in base currency."]),
        "totalAmountLessFreight": OOPStringAttribute.descriptions(["en":"Shows the total product amount for the quote, minus any discounts. This value is added to freight and tax amounts in the calculation for the total amount due for the quote."]),
        "totalAmountLessFreightBase": OOPStringAttribute.descriptions(["en":"Value of the Total Pre-Freight Amount in base currency."]),
        "totalDiscountAmount": OOPStringAttribute.descriptions(["en":"Shows the total discount amount, based on the discount price and rate entered on the quote."]),
        "totalDiscountAmountBase": OOPStringAttribute.descriptions(["en":"Value of the Total Discount Amount in base currency."]),
        "totalLineItemAmount": OOPStringAttribute.descriptions(["en":"Shows the sum of all existing and write-in products included on the quote, based on the specified price list and quantities."]),
        "totalLineItemAmountBase": OOPStringAttribute.descriptions(["en":"Value of the Total Detail Amount in base currency."]),
        "totalLineItemDiscountAmount": OOPStringAttribute.descriptions(["en":"Shows the total of the Manual Discount amounts specified on all products included in the quote. This value is reflected in the Detail Amount field on the quote and is added to any discount amount or rate specified on the quote"]),
        "totalLineItemDiscountAmountBase": OOPStringAttribute.descriptions(["en":"Value of the Total Line Item Discount Amount in base currency."]),
        "totalTax": OOPStringAttribute.descriptions(["en":"Shows the total of the Tax amounts specified on all products included in the quote, included in the Total Amount due calculation for the quote."]),
        "totalTaxBase": OOPStringAttribute.descriptions(["en":"Value of the Total Tax in base currency."]),
        "willCall": OOPStringAttribute.descriptions(["en":"Select whether the products included in the quote should be shipped to the specified address or held until the customer calls with further pick up or delivery instructions."]),
        "onHoldTime": OOPAttributeTime.descriptions(["en":"Shows the duration in minutes for which the quote was on hold."]),
        "lastOnHoldTime": OOPAttributeTime.descriptions(["en":"Contains the date time stamp of the last on hold time."]),
        "SLAId": OOPLinkAttribute("aplSLA").descriptions(["en":"Choose the service level agreement (SLA) that you want to apply to the quote record."]),
        "SLAInvokedId": OOPUUIDAttribute.descriptions(["en":"Last SLA that was applied to this quote. This field is for internal use only."]),
        "accountId": OOPLinkAttribute("aplAccount").descriptions(["en":"Unique identifier of the account with which the quote is associated."]),
        "contactId": OOPLinkAttribute("aplContact").descriptions(["en":"Unique identifier of the contact associated with the quote."]),
        "campaignId": OOPUUIDAttribute.descriptions(["en":"Shows the campaign that the order was created from."]),
      ])
      .registerPath("crm_quotes");
  }
}
mixin(OOPEntityCalls!("CRMQuote"));

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