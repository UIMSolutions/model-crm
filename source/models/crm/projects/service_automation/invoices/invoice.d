module models.crm.projects.service_automation.invoices.invoice;

@safe:
import uim.entities;

// Order that has been billed.
class DCRMInvoiceEntity : DOOPEntity {
  mixin(EntityThis!("CRMInvoiceEntity"));

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
        "invoiceId": UUIDAttributeClass, // Unique identifier of the invoice."]),
        "emailAddress": StringAttributeClass, // The primary email address for the entity."]),
        "processId": UUIDAttributeClass, // Contains the id of the process associated with the entity."]),
        "stageId": UUIDAttributeClass, // Contains the id of the stage where the entity is located."]),
        "traversedPath": StringAttributeClass, // A comma separated list of string values representing the unique identifiers of stages in a Business Process Flow Instance in the order that they occur."]),
        "billToCity": StringAttributeClass, // Type the city for the customer's billing address."]),
        "billToComposite": StringAttributeClass, // Shows the complete Bill To address."]),
        "billToCountry": StringAttributeClass, // Type the country or region for the customer's billing address."]),
        "billToFax": StringAttributeClass, // Type the fax number for the customer's billing address."]),
        "billToLine1": StringAttributeClass, // Type the first line of the customer's billing address."]),
        "billToLine2": StringAttributeClass, // Type the second line of the customer's billing address."]),
        "billToLine3": StringAttributeClass, // Type the third line of the billing address."]),
        "billToName": StringAttributeClass, // Type a name for the customer's billing address, such as 'Headquarters' or 'Field office', to identify the address."]),
        "billToPostalCode": StringAttributeClass, // Type the ZIP Code or postal code for the billing address."]),
        "billToStateOrProvince": StringAttributeClass, // Type the state or province for the billing address."]),
        "billToTelephone": StringAttributeClass, // Type the phone number for the customer's billing address."]),
        "customerId": UUIDAttributeClass, // The customer account or contact to provide a quick link to additional customer details, such as account information, activities, and opportunities."]),
        "customerIdType": StringAttributeClass, // The type of customer, either Account or Contact."]),
        "dateDelivered": StringAttributeClass, // Enter the date when the products included in the invoice were delivered."]),
        "discountAmount": StringAttributeClass, // Type the discount amount for the invoice if the customer is eligible for special savings."]),
        "transactionCurrencyId": CurrencyIdAttributeClass, // Choose the local currency for the record to make sure budgets are reported in the correct currency."]),
        "exchangeRate": StringAttributeClass, // Shows the conversion rate of the record's currency. The exchange rate is used to convert all money fields in the record from the local currency to the system's default currency."]),
        "discountAmountBase": StringAttributeClass, // Value of the Invoice Discount Amount in base currency."]),
        "discountPercentage": PercentageAttributeClass, // Type the discount rate that should be applied to the Detail Amount field, for use in calculating the Pre-Freight Amount and Total Amount values for the invoice."]),
        "dueDate": DateAttributeClass, // Enter the date by which the invoice should be paid by the customer."]),
        "freightAmount": StringAttributeClass, // Type the cost of freight or shipping for the products included in the invoice for use in calculating the total amount due."]),
        "freightAmountBase": StringAttributeClass, // Value of the Freight Amount in base currency."]),
        "invoiceNumber": IntegerAttributeClass, //Shows the identifying number or code of the invoice."]),
        "isPriceLocked": BooleanAttributeClass, // Select whether prices specified on the invoice are locked from any further updates."]),
        "lastBackofficeSubmit": StringAttributeClass, // Enter the date and time when the invoice was last submitted to an accounting or ERP system for processing."]),
        "opportunityId": UUIDAttributeClass, // Choose the opportunity that the invoice is related to for reporting and analytics."]),
        "paymentTermsCode": StringAttributeClass, // Select the payment terms to indicate when the customer needs to pay the total amount."]),
        "paymentTermsCode_display": StringAttributeClass, //
        "priceLevelId": UUIDAttributeClass, // Choose the price list associated with this record to make sure the products associated with the campaign are offered at the correct prices."]),
        "pricingErrorCode": StringAttributeClass, // Type of pricing error for the invoice."]),
        "pricingErrorCode_display": StringAttributeClass, //
        "priorityCode": StringAttributeClass, // Select the priority so that preferred customers or critical issues are handled quickly."]),
        "priorityCode_display": StringAttributeClass, //
        "salesOrderId": UUIDAttributeClass, // Choose the order related to the invoice to make sure the order is fulfilled and invoiced correctly."]),
        "shippingMethodCode": StringAttributeClass, // Select a shipping method for deliveries sent to this address."]),
        "shippingMethodCode_display": StringAttributeClass, //
        "shipToCity": StringAttributeClass, // Type the city for the customer's shipping address."]),
        "shipToComposite": StringAttributeClass, // Shows the complete Ship To address."]),
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
        "stateCode": StringAttributeClass, // Shows whether the invoice is active, paid, or canceled. Paid and canceled invoices are read-only and can't be edited unless they are reactivated."]),
        "stateCode_display": StringAttributeClass, //
        "statusCode": StringAttributeClass, // Select the invoice's status."]),
        "statusCode_display": StringAttributeClass, //
        "totalAmount": StringAttributeClass, // Shows the total amount due, calculated as the sum of the products, discount, freight, and taxes for the invoice."]),
        "totalAmountBase": StringAttributeClass, // Value of the Total Amount in base currency."]),
        "totalAmountLessFreight": StringAttributeClass, // Shows the total product amount due, minus any discounts. This value is added to freight and tax amounts in the calculation for the total amount due for the invoice."]),
        "totalAmountLessFreightBase": StringAttributeClass, // Value of the Total Pre-Freight Amount in base currency."]),
        "totalDiscountAmount": StringAttributeClass, // Shows the total discount amount, based on the discount price and rate entered on the invoice."]),
        "totalDiscountAmountBase": StringAttributeClass, // Value of the Total Discount Amount in base currency."]),
        "totalLineItemAmount": StringAttributeClass, // Shows the sum of all existing and write-in products included on the invoice, based on the specified price list and quantities."]),
        "totalLineItemAmountBase": StringAttributeClass, // Value of the Total Detail Amount in base currency."]),
        "totalLineItemDiscountAmount": StringAttributeClass, // Shows the Manual Discount amounts specified on all products included in the invoice. This value is reflected in the Detail Amount field on the invoice and is added to any discount amount or rate specified on the invoice."]),
        "totalLineItemDiscountAmountBase": StringAttributeClass, // Value of the Total Line Item Discount Amount in base currency."]),
        "totalTax": StringAttributeClass, // Shows the total of the Tax amounts specified on all products included in the invoice, included in the Total Amount due calculation for the invoice."]),
        "totalTaxBase": StringAttributeClass, // Value of the Total Tax in base currency."]),
        "willCall": StringAttributeClass, // Select whether the products included in the invoice should be shipped to the specified address or held until the customer calls with further pick up or delivery instructions."]),
        "SLAId": UUIDAttributeClass, // aplSLA").descriptions(["en":"Choose the service level agreement (SLA) that you want to apply to the invoice record."]),
        "SLAInvokedId": UUIDAttributeClass, // Last SLA that was applied to this invoice. This field is for internal use only."]),
        "onHoldTime": TimeAttributeClass, // Shows the duration in minutes for which the invoice was on hold."]),
        "lastOnHoldTime": TimeAttributeClass, // Contains the date time stamp of the last on hold time."]),
        "entityImageId": UUIDAttributeClass, //
        "accountId": UUIDAttributeClass, // Unique identifier of the account with which the invoice is associated."]),
        "contactId": UUIDAttributeClass, // Unique identifier of the contact associated with the invoice."]),
        "billToContactName": StringAttributeClass, // Type the primary contact name at the customer's billing address."]),
        "hasCorrections": StringAttributeClass, // Indicates if this invoice contains corrections to previous invoices."]),
        "orderType": StringAttributeClass, // Whether the invoice is for an Item- based Order or a Work-based Project Contract"]),
        "orderType_display": StringAttributeClass, //
        "projectInvoiceStatus": StringAttributeClass, // Project specific status"]),
        "projectInvoiceStatus_display": StringAttributeClass, //
      ])
      .registerPath("crm_invoices");
  }
}
mixin(EntityCalls!("CRMInvoiceEntity"));

unittest {
  version(test_model_crm) {
    assert(CRMInvoiceEntity);

  auto entity = CRMInvoiceEntity;
  // auto repository = OOPFileRepository("./tests");
/* /*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */ 
  }
}