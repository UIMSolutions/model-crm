module models.crm.projects.service_automation.invoices.invoice;

@safe:
import uim.entities;

// Order that has been billed.
class DAPLInvoice : DOOPEntity {
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
        "invoiceId": OOPAttributeUUID.descriptions(["en":"Unique identifier of the invoice."]),
        "emailAddress": OOPAttributeString.descriptions(["en":"The primary email address for the entity."]),
        "processId": OOPAttributeUUID.descriptions(["en":"Contains the id of the process associated with the entity."]),
        "stageId": OOPAttributeUUID.descriptions(["en":"Contains the id of the stage where the entity is located."]),
        "traversedPath": OOPAttributeString.descriptions(["en":"A comma separated list of string values representing the unique identifiers of stages in a Business Process Flow Instance in the order that they occur."]),
        "billToCity": OOPAttributeString.descriptions(["en":"Type the city for the customer's billing address."]),
        "billToComposite": OOPAttributeString.descriptions(["en":"Shows the complete Bill To address."]),
        "billToCountry": OOPAttributeString.descriptions(["en":"Type the country or region for the customer's billing address."]),
        "billToFax": OOPAttributeString.descriptions(["en":"Type the fax number for the customer's billing address."]),
        "billToLine1": OOPAttributeString.descriptions(["en":"Type the first line of the customer's billing address."]),
        "billToLine2": OOPAttributeString.descriptions(["en":"Type the second line of the customer's billing address."]),
        "billToLine3": OOPAttributeString.descriptions(["en":"Type the third line of the billing address."]),
        "billToName": OOPAttributeString.descriptions(["en":"Type a name for the customer's billing address, such as 'Headquarters' or 'Field office', to identify the address."]),
        "billToPostalCode": OOPAttributeString.descriptions(["en":"Type the ZIP Code or postal code for the billing address."]),
        "billToStateOrProvince": OOPAttributeString.descriptions(["en":"Type the state or province for the billing address."]),
        "billToTelephone": OOPAttributeString.descriptions(["en":"Type the phone number for the customer's billing address."]),
        "customerId": OOPAttributeUUID.descriptions(["en":"The customer account or contact to provide a quick link to additional customer details, such as account information, activities, and opportunities."]),
        "customerIdType": OOPAttributeString.descriptions(["en":"The type of customer, either Account or Contact."]),
        "dateDelivered": OOPAttributeString.descriptions(["en":"Enter the date when the products included in the invoice were delivered."]),
        "discountAmount": OOPAttributeString.descriptions(["en":"Type the discount amount for the invoice if the customer is eligible for special savings."]),
        "transactionCurrencyId": OOPAttributeLink("aplCurrency").descriptions(["en":"Choose the local currency for the record to make sure budgets are reported in the correct currency."]),
        "exchangeRate": OOPAttributeString.descriptions(["en":"Shows the conversion rate of the record's currency. The exchange rate is used to convert all money fields in the record from the local currency to the system's default currency."]),
        "discountAmountBase": OOPAttributeString.descriptions(["en":"Value of the Invoice Discount Amount in base currency."]),
        "discountPercentage": OOPAttributePercentage.descriptions(["en":"Type the discount rate that should be applied to the Detail Amount field, for use in calculating the Pre-Freight Amount and Total Amount values for the invoice."]),
        "dueDate": OOPAttributeDate.descriptions(["en":"Enter the date by which the invoice should be paid by the customer."]),
        "freightAmount": OOPAttributeString.descriptions(["en":"Type the cost of freight or shipping for the products included in the invoice for use in calculating the total amount due."]),
        "freightAmountBase": OOPAttributeString.descriptions(["en":"Value of the Freight Amount in base currency."]),
        "invoiceNumber": OOPAttributeNumber.descriptions(["en":"Shows the identifying number or code of the invoice."]),
        "isPriceLocked": OOPAttributeBoolean.descriptions(["en":"Select whether prices specified on the invoice are locked from any further updates."]),
        "lastBackofficeSubmit": OOPAttributeString.descriptions(["en":"Enter the date and time when the invoice was last submitted to an accounting or ERP system for processing."]),
        "opportunityId": OOPAttributeUUID.descriptions(["en":"Choose the opportunity that the invoice is related to for reporting and analytics."]),
        "paymentTermsCode": OOPAttributeString.descriptions(["en":"Select the payment terms to indicate when the customer needs to pay the total amount."]),
        "paymentTermsCode_display": OOPAttributeString.descriptions(["en":""]),
        "priceLevelId": OOPAttributeUUID.descriptions(["en":"Choose the price list associated with this record to make sure the products associated with the campaign are offered at the correct prices."]),
        "pricingErrorCode": OOPAttributeString.descriptions(["en":"Type of pricing error for the invoice."]),
        "pricingErrorCode_display": OOPAttributeString.descriptions(["en":""]),
        "priorityCode": OOPAttributeString.descriptions(["en":"Select the priority so that preferred customers or critical issues are handled quickly."]),
        "priorityCode_display": OOPAttributeString.descriptions(["en":""]),
        "salesOrderId": OOPAttributeUUID.descriptions(["en":"Choose the order related to the invoice to make sure the order is fulfilled and invoiced correctly."]),
        "shippingMethodCode": OOPAttributeString.descriptions(["en":"Select a shipping method for deliveries sent to this address."]),
        "shippingMethodCode_display": OOPAttributeString.descriptions(["en":""]),
        "shipToCity": OOPAttributeString.descriptions(["en":"Type the city for the customer's shipping address."]),
        "shipToComposite": OOPAttributeString.descriptions(["en":"Shows the complete Ship To address."]),
        "shipToCountry": OOPAttributeString.descriptions(["en":"Type the country or region for the customer's shipping address."]),
        "shipToFax": OOPAttributeString.descriptions(["en":"Type the fax number for the customer's shipping address."]),
        "shipToFreightTermsCode": OOPAttributeString.descriptions(["en":"Select the freight terms to make sure shipping orders are processed correctly."]),
        "shipToFreightTermsCode_display": OOPAttributeString.descriptions(["en":""]),
        "shipToLine1": OOPAttributeString.descriptions(["en":"Type the first line of the customer's shipping address."]),
        "shipToLine2": OOPAttributeString.descriptions(["en":"Type the second line of the customer's shipping address."]),
        "shipToLine3": OOPAttributeString.descriptions(["en":"Type the third line of the shipping address."]),
        "shipToName": OOPAttributeString.descriptions(["en":"Type a name for the customer's shipping address, such as 'Headquarters' or 'Field office', to identify the address."]),
        "shipToPostalCode": OOPAttributeString.descriptions(["en":"Type the ZIP Code or postal code for the shipping address."]),
        "shipToStateOrProvince": OOPAttributeString.descriptions(["en":"Type the state or province for the shipping address."]),
        "shipToTelephone": OOPAttributeString.descriptions(["en":"Type the phone number for the customer's shipping address."]),
        "stateCode": OOPAttributeString.descriptions(["en":"Shows whether the invoice is active, paid, or canceled. Paid and canceled invoices are read-only and can't be edited unless they are reactivated."]),
        "stateCode_display": OOPAttributeString.descriptions(["en":""]),
        "statusCode": OOPAttributeString.descriptions(["en":"Select the invoice's status."]),
        "statusCode_display": OOPAttributeString.descriptions(["en":""]),
        "totalAmount": OOPAttributeString.descriptions(["en":"Shows the total amount due, calculated as the sum of the products, discount, freight, and taxes for the invoice."]),
        "totalAmountBase": OOPAttributeString.descriptions(["en":"Value of the Total Amount in base currency."]),
        "totalAmountLessFreight": OOPAttributeString.descriptions(["en":"Shows the total product amount due, minus any discounts. This value is added to freight and tax amounts in the calculation for the total amount due for the invoice."]),
        "totalAmountLessFreightBase": OOPAttributeString.descriptions(["en":"Value of the Total Pre-Freight Amount in base currency."]),
        "totalDiscountAmount": OOPAttributeString.descriptions(["en":"Shows the total discount amount, based on the discount price and rate entered on the invoice."]),
        "totalDiscountAmountBase": OOPAttributeString.descriptions(["en":"Value of the Total Discount Amount in base currency."]),
        "totalLineItemAmount": OOPAttributeString.descriptions(["en":"Shows the sum of all existing and write-in products included on the invoice, based on the specified price list and quantities."]),
        "totalLineItemAmountBase": OOPAttributeString.descriptions(["en":"Value of the Total Detail Amount in base currency."]),
        "totalLineItemDiscountAmount": OOPAttributeString.descriptions(["en":"Shows the Manual Discount amounts specified on all products included in the invoice. This value is reflected in the Detail Amount field on the invoice and is added to any discount amount or rate specified on the invoice."]),
        "totalLineItemDiscountAmountBase": OOPAttributeString.descriptions(["en":"Value of the Total Line Item Discount Amount in base currency."]),
        "totalTax": OOPAttributeString.descriptions(["en":"Shows the total of the Tax amounts specified on all products included in the invoice, included in the Total Amount due calculation for the invoice."]),
        "totalTaxBase": OOPAttributeString.descriptions(["en":"Value of the Total Tax in base currency."]),
        "willCall": OOPAttributeString.descriptions(["en":"Select whether the products included in the invoice should be shipped to the specified address or held until the customer calls with further pick up or delivery instructions."]),
        "SLAId": OOPAttributeLink("aplSLA").descriptions(["en":"Choose the service level agreement (SLA) that you want to apply to the invoice record."]),
        "SLAInvokedId": OOPAttributeUUID.descriptions(["en":"Last SLA that was applied to this invoice. This field is for internal use only."]),
        "onHoldTime": OOPAttributeTime.descriptions(["en":"Shows the duration in minutes for which the invoice was on hold."]),
        "lastOnHoldTime": OOPAttributeTime.descriptions(["en":"Contains the date time stamp of the last on hold time."]),
        "entityImageId": OOPAttributeUUID.descriptions(["en":""]),
        "accountId": OOPAttributeLink("aplAccount").descriptions(["en":"Unique identifier of the account with which the invoice is associated."]),
        "contactId": OOPAttributeLink("aplContact").descriptions(["en":"Unique identifier of the contact associated with the invoice."]),
        "billToContactName": OOPAttributeString.descriptions(["en":"Type the primary contact name at the customer's billing address."]),
        "hasCorrections": OOPAttributeString.descriptions(["en":"Indicates if this invoice contains corrections to previous invoices."]),
        "orderType": OOPAttributeString.descriptions(["en":"Whether the invoice is for an Item- based Order or a Work-based Project Contract"]),
        "orderType_display": OOPAttributeString.descriptions(["en":""]),
        "projectInvoiceStatus": OOPAttributeString.descriptions(["en":"Project specific status"]),
        "projectInvoiceStatus_display": OOPAttributeString.descriptions(["en":""]),
    ]);
  }

  override string entityClass() { return "aplInvoice"; }
  override string entityClasses() { return "aplInvoices"; }

  this(UUID myId) { 
    this(); this.id(myId); }
  this(string myName) { 
    this(); this.name(myName); }
  this(UUID myId, string myName) { 
    this(); this.id(myId).name(myName); }
  this(Json aJson) { 
    this(); this.fromJson(aJson); }

  // mixin(GetEntity!("account", "accountId", "APLAccount"));
  // mixin(GetEntity!("contact", "contactId", "APLContact"));
}
auto APLInvoice() { return new DAPLInvoice; } 
auto APLInvoice(Json json) { return new DAPLInvoice(json); } 

unittest {
  version(uim_entities) {
    assert(APLInvoice);

  auto entity = APLInvoice;
  // auto repository = OOPFileRepository("./tests");
/* /*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */ 
  }
}