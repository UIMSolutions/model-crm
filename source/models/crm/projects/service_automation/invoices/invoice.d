module models.crm.projects.service_automation.invoices.invoice;

@safe:
import uim.entities;

// Order that has been billed.
class DCRMInvoice : DOOPEntity {
  mixin(OOPEntityThis!("CRMInvoice"));

  override void initialize() {
    super.initialize;

    this
      .attributes([
        "createdOnBehalfBy": OOPAttributeLink("aplUser").descriptions(["en":"Shows who created the record on behalf of another user."]),
        "modifiedOnBehalfBy": OOPAttributeLink("aplUser").descriptions(["en":"Shows who last updated the record on behalf of another user."]),
        "overriddenCreatedOn": OOPAttributeTimestamp.descriptions(["en":"Date and time that the record was migrated."]),
        "importSequenceNumber": OOPAttributeNumber.descriptions(["en":"Sequence number of the import that created this record."]),
        "ownerId": OOPUUIDAttribute.descriptions(["en":"Owner Id"]),
        "ownerIdType": OOPStringAttribute.descriptions(["en":"The type of owner, either User or Team."]),
        "owningBusinessUnitId": OOPAttributeLink("aplBusinessUnit").descriptions(["en":"Unique identifier for the business unit that owns the record"]),
        "owningUserId": OOPAttributeLink("aplUser").descriptions(["en":"Unique identifier for the user that owns the record."]),
        "owningTeamId": OOPAttributeLink("aplTeam").descriptions(["en":"Unique identifier for the team that owns the record."]),
        "timeZoneRuleVersionNumber": OOPAttributeNumber.descriptions(["en":"For internal use only."]),
        "utcConversionTimeZoneCode": OOPStringAttribute.descriptions(["en":"Time zone code that was in use when the record was created."]),
        "invoiceId": OOPUUIDAttribute.descriptions(["en":"Unique identifier of the invoice."]),
        "emailAddress": OOPStringAttribute.descriptions(["en":"The primary email address for the entity."]),
        "processId": OOPUUIDAttribute.descriptions(["en":"Contains the id of the process associated with the entity."]),
        "stageId": OOPUUIDAttribute.descriptions(["en":"Contains the id of the stage where the entity is located."]),
        "traversedPath": OOPStringAttribute.descriptions(["en":"A comma separated list of string values representing the unique identifiers of stages in a Business Process Flow Instance in the order that they occur."]),
        "billToCity": OOPStringAttribute.descriptions(["en":"Type the city for the customer's billing address."]),
        "billToComposite": OOPStringAttribute.descriptions(["en":"Shows the complete Bill To address."]),
        "billToCountry": OOPStringAttribute.descriptions(["en":"Type the country or region for the customer's billing address."]),
        "billToFax": OOPStringAttribute.descriptions(["en":"Type the fax number for the customer's billing address."]),
        "billToLine1": OOPStringAttribute.descriptions(["en":"Type the first line of the customer's billing address."]),
        "billToLine2": OOPStringAttribute.descriptions(["en":"Type the second line of the customer's billing address."]),
        "billToLine3": OOPStringAttribute.descriptions(["en":"Type the third line of the billing address."]),
        "billToName": OOPStringAttribute.descriptions(["en":"Type a name for the customer's billing address, such as 'Headquarters' or 'Field office', to identify the address."]),
        "billToPostalCode": OOPStringAttribute.descriptions(["en":"Type the ZIP Code or postal code for the billing address."]),
        "billToStateOrProvince": OOPStringAttribute.descriptions(["en":"Type the state or province for the billing address."]),
        "billToTelephone": OOPStringAttribute.descriptions(["en":"Type the phone number for the customer's billing address."]),
        "customerId": OOPUUIDAttribute.descriptions(["en":"The customer account or contact to provide a quick link to additional customer details, such as account information, activities, and opportunities."]),
        "customerIdType": OOPStringAttribute.descriptions(["en":"The type of customer, either Account or Contact."]),
        "dateDelivered": OOPStringAttribute.descriptions(["en":"Enter the date when the products included in the invoice were delivered."]),
        "discountAmount": OOPStringAttribute.descriptions(["en":"Type the discount amount for the invoice if the customer is eligible for special savings."]),
        "transactionCurrencyId": OOPAttributeLink("aplCurrency").descriptions(["en":"Choose the local currency for the record to make sure budgets are reported in the correct currency."]),
        "exchangeRate": OOPStringAttribute.descriptions(["en":"Shows the conversion rate of the record's currency. The exchange rate is used to convert all money fields in the record from the local currency to the system's default currency."]),
        "discountAmountBase": OOPStringAttribute.descriptions(["en":"Value of the Invoice Discount Amount in base currency."]),
        "discountPercentage": OOPAttributePercentage.descriptions(["en":"Type the discount rate that should be applied to the Detail Amount field, for use in calculating the Pre-Freight Amount and Total Amount values for the invoice."]),
        "dueDate": OOPAttributeDate.descriptions(["en":"Enter the date by which the invoice should be paid by the customer."]),
        "freightAmount": OOPStringAttribute.descriptions(["en":"Type the cost of freight or shipping for the products included in the invoice for use in calculating the total amount due."]),
        "freightAmountBase": OOPStringAttribute.descriptions(["en":"Value of the Freight Amount in base currency."]),
        "invoiceNumber": OOPAttributeNumber.descriptions(["en":"Shows the identifying number or code of the invoice."]),
        "isPriceLocked": OOPAttributeBoolean.descriptions(["en":"Select whether prices specified on the invoice are locked from any further updates."]),
        "lastBackofficeSubmit": OOPStringAttribute.descriptions(["en":"Enter the date and time when the invoice was last submitted to an accounting or ERP system for processing."]),
        "opportunityId": OOPUUIDAttribute.descriptions(["en":"Choose the opportunity that the invoice is related to for reporting and analytics."]),
        "paymentTermsCode": OOPStringAttribute.descriptions(["en":"Select the payment terms to indicate when the customer needs to pay the total amount."]),
        "paymentTermsCode_display": OOPStringAttribute.descriptions(["en":""]),
        "priceLevelId": OOPUUIDAttribute.descriptions(["en":"Choose the price list associated with this record to make sure the products associated with the campaign are offered at the correct prices."]),
        "pricingErrorCode": OOPStringAttribute.descriptions(["en":"Type of pricing error for the invoice."]),
        "pricingErrorCode_display": OOPStringAttribute.descriptions(["en":""]),
        "priorityCode": OOPStringAttribute.descriptions(["en":"Select the priority so that preferred customers or critical issues are handled quickly."]),
        "priorityCode_display": OOPStringAttribute.descriptions(["en":""]),
        "salesOrderId": OOPUUIDAttribute.descriptions(["en":"Choose the order related to the invoice to make sure the order is fulfilled and invoiced correctly."]),
        "shippingMethodCode": OOPStringAttribute.descriptions(["en":"Select a shipping method for deliveries sent to this address."]),
        "shippingMethodCode_display": OOPStringAttribute.descriptions(["en":""]),
        "shipToCity": OOPStringAttribute.descriptions(["en":"Type the city for the customer's shipping address."]),
        "shipToComposite": OOPStringAttribute.descriptions(["en":"Shows the complete Ship To address."]),
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
        "stateCode": OOPStringAttribute.descriptions(["en":"Shows whether the invoice is active, paid, or canceled. Paid and canceled invoices are read-only and can't be edited unless they are reactivated."]),
        "stateCode_display": OOPStringAttribute.descriptions(["en":""]),
        "statusCode": OOPStringAttribute.descriptions(["en":"Select the invoice's status."]),
        "statusCode_display": OOPStringAttribute.descriptions(["en":""]),
        "totalAmount": OOPStringAttribute.descriptions(["en":"Shows the total amount due, calculated as the sum of the products, discount, freight, and taxes for the invoice."]),
        "totalAmountBase": OOPStringAttribute.descriptions(["en":"Value of the Total Amount in base currency."]),
        "totalAmountLessFreight": OOPStringAttribute.descriptions(["en":"Shows the total product amount due, minus any discounts. This value is added to freight and tax amounts in the calculation for the total amount due for the invoice."]),
        "totalAmountLessFreightBase": OOPStringAttribute.descriptions(["en":"Value of the Total Pre-Freight Amount in base currency."]),
        "totalDiscountAmount": OOPStringAttribute.descriptions(["en":"Shows the total discount amount, based on the discount price and rate entered on the invoice."]),
        "totalDiscountAmountBase": OOPStringAttribute.descriptions(["en":"Value of the Total Discount Amount in base currency."]),
        "totalLineItemAmount": OOPStringAttribute.descriptions(["en":"Shows the sum of all existing and write-in products included on the invoice, based on the specified price list and quantities."]),
        "totalLineItemAmountBase": OOPStringAttribute.descriptions(["en":"Value of the Total Detail Amount in base currency."]),
        "totalLineItemDiscountAmount": OOPStringAttribute.descriptions(["en":"Shows the Manual Discount amounts specified on all products included in the invoice. This value is reflected in the Detail Amount field on the invoice and is added to any discount amount or rate specified on the invoice."]),
        "totalLineItemDiscountAmountBase": OOPStringAttribute.descriptions(["en":"Value of the Total Line Item Discount Amount in base currency."]),
        "totalTax": OOPStringAttribute.descriptions(["en":"Shows the total of the Tax amounts specified on all products included in the invoice, included in the Total Amount due calculation for the invoice."]),
        "totalTaxBase": OOPStringAttribute.descriptions(["en":"Value of the Total Tax in base currency."]),
        "willCall": OOPStringAttribute.descriptions(["en":"Select whether the products included in the invoice should be shipped to the specified address or held until the customer calls with further pick up or delivery instructions."]),
        "SLAId": OOPAttributeLink("aplSLA").descriptions(["en":"Choose the service level agreement (SLA) that you want to apply to the invoice record."]),
        "SLAInvokedId": OOPUUIDAttribute.descriptions(["en":"Last SLA that was applied to this invoice. This field is for internal use only."]),
        "onHoldTime": OOPAttributeTime.descriptions(["en":"Shows the duration in minutes for which the invoice was on hold."]),
        "lastOnHoldTime": OOPAttributeTime.descriptions(["en":"Contains the date time stamp of the last on hold time."]),
        "entityImageId": OOPUUIDAttribute.descriptions(["en":""]),
        "accountId": OOPAttributeLink("aplAccount").descriptions(["en":"Unique identifier of the account with which the invoice is associated."]),
        "contactId": OOPAttributeLink("aplContact").descriptions(["en":"Unique identifier of the contact associated with the invoice."]),
        "billToContactName": OOPStringAttribute.descriptions(["en":"Type the primary contact name at the customer's billing address."]),
        "hasCorrections": OOPStringAttribute.descriptions(["en":"Indicates if this invoice contains corrections to previous invoices."]),
        "orderType": OOPStringAttribute.descriptions(["en":"Whether the invoice is for an Item- based Order or a Work-based Project Contract"]),
        "orderType_display": OOPStringAttribute.descriptions(["en":""]),
        "projectInvoiceStatus": OOPStringAttribute.descriptions(["en":"Project specific status"]),
        "projectInvoiceStatus_display": OOPStringAttribute.descriptions(["en":""]),
      ])
      .registerPath("crm_invoices");
  }
}
mixin(OOPEntityCalls!("CRMInvoice"));

unittest {
  version(test_model_crm) {
    assert(CRMInvoice);

  auto entity = CRMInvoice;
  // auto repository = OOPFileRepository("./tests");
/* /*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */ 
  }
}