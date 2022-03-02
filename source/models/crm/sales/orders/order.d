module models.crm.sales.orders.order;

@safe:
import uim.entities;

// Quote that has been accepted.
class DCRMOrder : DOOPEntity {
  mixin(OOPEntityThis!("CRMOrder"));

  override void initialize() {
    super.initialize;

    this
      .attributes([
        "createdOnBehalfBy": OOPLinkAttribute("aplUser").descriptions(["en":"Shows who created the record on behalf of another user."]),
        "modifiedOnBehalfBy": OOPLinkAttribute("aplUser").descriptions(["en":"Shows who last updated the record on behalf of another user."]),
        "overriddenCreatedOn": OOPTimestampAttribute.descriptions(["en":"Date and time that the record was migrated."]),
        "importSequenceNumber": OOPIntegerAttribute.descriptions(["en":"Sequence number of the import that created this record."]),
        "ownerId": OOPUUIDAttribute.descriptions(["en":"Owner Id"]),
        "ownerIdTypeCode": OOPStringAttribute.descriptions(["en":"The type of owner, either User or Team."]),
        "owningBusinessUnitId": OOPLinkAttribute("aplBusinessUnit").descriptions(["en":"Unique identifier for the business unit that owns the record"]),
        "owningUserId": OOPLinkAttribute("aplUser").descriptions(["en":"Unique identifier of the user that owns the activity."]),
        "owningTeamId": OOPLinkAttribute("aplTeam").descriptions(["en":"Unique identifier for the team that owns the record."]),
        "timeZoneRuleVersionNumber": OOPIntegerAttribute.descriptions(["en":"For internal use only."]),
        "utcConversionTimeZoneCode": OOPStringAttribute.descriptions(["en":"Time zone code that was in use when the record was created."]),
        "salesOrderId": OOPUUIDAttribute.descriptions(["en":"Unique identifier of the order."]),
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
        "customerId": OOPUUIDAttribute.descriptions(["en":"The customer account or contact to provide a quick link to additional customer details, such as account information, activities, and opportunities."]),
        "customerIdType": OOPStringAttribute.descriptions(["en":"The type of customer, either Account or Contact."]),
        "dateFulfilled": OOPStringAttribute.descriptions(["en":"Enter the date that all or part of the order was shipped to the customer."]),
        "discountAmount": OOPStringAttribute.descriptions(["en":"Type the discount amount for the order if the customer is eligible for special savings."]),
        "transactionCurrencyId": OOPLinkAttribute("aplCurrency").descriptions(["en":"Choose the local currency for the record to make sure budgets are reported in the correct currency."]),
        "exchangeRate": OOPStringAttribute.descriptions(["en":"Shows the conversion rate of the record's currency. The exchange rate is used to convert all money fields in the record from the local currency to the system's default currency."]),
        "discountAmountBase": OOPStringAttribute.descriptions(["en":"Value of the Order Discount Amount in base currency."]),
        "discountPercentage": OOPPercentageAttribute.descriptions(["en":"Type the discount rate that should be applied to the Detail Amount field to include additional savings for the customer in the order."]),
        "freightAmount": OOPStringAttribute.descriptions(["en":"Type the cost of freight or shipping for the products included in the order for use in calculating the Total Amount field."]),
        "freightAmountBase": OOPStringAttribute.descriptions(["en":"Value of the Freight Amount in base currency."]),
        "freightTermsCode": OOPStringAttribute.descriptions(["en":"Select the freight terms to make sure shipping charges are processed correctly."]),
        "freightTermsCode_display": OOPStringAttribute.descriptions(["en":""]),
        "isPriceLocked": OOPBooleanAttribute.descriptions(["en":"Select whether prices specified on the invoice are locked from any further updates."]),
        "lastBackofficeSubmit": OOPStringAttribute.descriptions(["en":"Enter the date and time when the order was last submitted to an accounting or ERP system for processing."]),
        "opportunityId": OOPUUIDAttribute.descriptions(["en":"Choose the related opportunity so that the data for the order and opportunity are linked for reporting and analytics."]),
        "orderNumber": OOPIntegerAttribute.descriptions(["en":"Shows the order number for customer reference and to use in search. The number cannot be modified."]),
        "paymentTermsCode": OOPStringAttribute.descriptions(["en":"Select the payment terms to indicate when the customer needs to pay the total amount."]),
        "paymentTermsCode_display": OOPStringAttribute.descriptions(["en":""]),
        "priceLevelId": OOPUUIDAttribute.descriptions(["en":"Choose the price list associated with this record to make sure the products associated with the campaign are offered at the correct prices."]),
        "pricingErrorCode": OOPStringAttribute.descriptions(["en":"Select the type of pricing error, such as a missing or invalid product, or missing quantity."]),
        "pricingErrorCode_display": OOPStringAttribute.descriptions(["en":""]),
        "priorityCode": OOPStringAttribute.descriptions(["en":"Select the priority so that preferred customers or critical issues are handled quickly."]),
        "priorityCode_display": OOPStringAttribute.descriptions(["en":""]),
        "quoteId": OOPUUIDAttribute.descriptions(["en":"Choose the related quote so that order data and quote data are linked for reporting and analytics."]),
        "requestDeliveryBy": OOPLinkAttribute("aplUser").descriptions(["en":"Enter the delivery date requested by the customer for all products in the order."]),
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
        "stateCode": OOPStringAttribute.descriptions(["en":"Shows whether the order is active, submitted, fulfilled, canceled, or invoiced. Only active orders can be edited."]),
        "stateCode_display": OOPStringAttribute.descriptions(["en":""]),
        "statusCode": OOPStringAttribute.descriptions(["en":"Select the order's status."]),
        "statusCode_display": OOPStringAttribute.descriptions(["en":""]),
        "submitDate": OOPAttributeDate.descriptions(["en":"Enter the date when the order was submitted to the fulfillment or shipping center."]),
        "submitStatus": OOPStringAttribute.descriptions(["en":"Type the code for the submitted status in the fulfillment or shipping center system."]),
        "submitStatusDescription": OOPStringAttribute.descriptions(["en":"Type additional details or notes about the order for the fulfillment or shipping center."]),
        "totalAmount": OOPStringAttribute.descriptions(["en":"Shows the total amount due, calculated as the sum of the products, discounts, freight, and taxes for the order."]),
        "totalAmountBase": OOPStringAttribute.descriptions(["en":"Value of the Total Amount in base currency."]),
        "totalAmountLessFreight": OOPStringAttribute.descriptions(["en":"Shows the total product amount for the order, minus any discounts. This value is added to freight and tax amounts in the calculation for the total amount due for the order."]),
        "totalAmountLessFreightBase": OOPStringAttribute.descriptions(["en":"Value of the Total Pre-Freight Amount in base currency."]),
        "totalDiscountAmount": OOPStringAttribute.descriptions(["en":"Shows the total discount amount, based on the discount price and rate entered on the order."]),
        "totalDiscountAmountBase": OOPStringAttribute.descriptions(["en":"Value of the Total Discount Amount in base currency."]),
        "totalLineItemAmount": OOPStringAttribute.descriptions(["en":"Shows the sum of all existing and write-in products included on the order, based on the specified price list and quantities."]),
        "totalLineItemAmountBase": OOPStringAttribute.descriptions(["en":"Value of the Total Detail Amount in base currency."]),
        "totalLineItemDiscountAmount": OOPStringAttribute.descriptions(["en":"Shows the total of the Manual Discount amounts specified on all products included in the order. This value is reflected in the Detail Amount field on the order and is added to any discount amount or rate specified on the order."]),
        "totalLineItemDiscountAmountBase": OOPStringAttribute.descriptions(["en":"Value of the Total Line Item Discount Amount in base currency."]),
        "totalTax": OOPStringAttribute.descriptions(["en":"Shows the Tax amounts specified on all products included in the order, included in the Total Amount due calculation for the order."]),
        "totalTaxBase": OOPStringAttribute.descriptions(["en":"Value of the Total Tax in base currency."]),
        "willCall": OOPStringAttribute.descriptions(["en":"Select whether the products included in the order should be shipped to the specified address or held until the customer calls with further pick-up or delivery instructions."]),
        "onHoldTime": OOPAttributeTime.descriptions(["en":"Shows the duration in minutes for which the order was on hold."]),
        "lastOnHoldTime": OOPAttributeTime.descriptions(["en":"Contains the date time stamp of the last on hold time."]),
        "SLAId": OOPLinkAttribute("aplSLA").descriptions(["en":"Choose the service level agreement (SLA) that you want to apply to the sales order record."]),
        "SLAInvokedId": OOPUUIDAttribute.descriptions(["en":"Last SLA that was applied to this sales order. This field is for internal use only."]),
        "entityImageId": OOPUUIDAttribute.descriptions(["en":""]),
        "accountId": OOPLinkAttribute("aplAccount").descriptions(["en":"Shows the parent account related to the record. This information is used to link the sales order to the account selected in the Customer field for reporting and analytics."]),
        "contactId": OOPLinkAttribute("aplContact").descriptions(["en":"Shows the parent contact related to the record. This information is used to link the contract to the contact selected in the Customer field for reporting and analytics."]),
        "campaignId": OOPUUIDAttribute.descriptions(["en":"Shows the campaign that the order was created from."]),
      ])
      .registerPath("crm_orders");
  }
}
mixin(OOPEntityCalls!("CRMOrder"));

unittest {
  version(test_model_crm) {
    assert(CRMOrder);

  auto entity = CRMOrder;
  // auto repository = OOPFileRepository("./tests");
/* /*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */ 
  }
}