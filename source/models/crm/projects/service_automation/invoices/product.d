module models.crm.projects.service_automation.invoices.product;

@safe:
import uim.entities;

// Line item in an invoice containing detailed billing information for a product.
class DAPLInvoiceProduct : DOOPEntity {
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
      "invoiceDetailId": OOPAttributeUUID.descriptions(["en":"Unique identifier of the invoice product line item."]),
      "actualDeliveryOn": OOPAttributeTimestamp.descriptions(["en":"Enter the date when the invoiced product was delivered to the customer."]),
      "baseAmount": OOPAttributeString.descriptions(["en":"Shows the total price of the invoice product, based on the price per unit, volume discount, and quantity."]),
      "transactionCurrencyId": OOPAttributeLink("aplCurrency").descriptions(["en":"Choose the local currency for the record to make sure budgets are reported in the correct currency."]),
      "exchangeRate": OOPAttributeString.descriptions(["en":"Shows the conversion rate of the record's currency. The exchange rate is used to convert all money fields in the record from the local currency to the system's default currency."]),
      "baseAmountBase": OOPAttributeString.descriptions(["en":"Value of the Amount in base currency."]),
      "extendedAmount": OOPAttributeString.descriptions(["en":"Shows the total amount due for the invoice product, based on the sum of the unit price, quantity, discounts, and tax."]),
      "extendedAmountBase": OOPAttributeString.descriptions(["en":"Value of the Extended Amount in base currency."]),
      "invoiceId": OOPAttributeUUID.descriptions(["en":"Unique identifier of the invoice associated with the invoice product line item."]),
      "invoiceIsPriceLocked": OOPAttributeString.descriptions(["en":"Information about whether invoice product pricing is locked."]),
      "invoiceStateCode": OOPAttributeString.descriptions(["en":"Status of the invoice product."]),
      "invoiceStateCode_display": OOPAttributeString.descriptions(["en":""]),
      "isCopied": OOPAttributeBoolean.descriptions(["en":"Select whether the invoice product is copied from another item or data source."]),
      "isPriceOverridden": OOPAttributeBoolean.descriptions(["en":"Select whether the price per unit is fixed at the value in the specified price list or can be overridden by users who have edit rights to the invoice product."]),
      "isProductOverridden": OOPAttributeBoolean.descriptions(["en":"Select whether the product exists in the Microsoft Dynamics 365 product catalog or is a write-in product specific to the parent invoice."]),
      "lineItemNumber": OOPAttributeNumber.descriptions(["en":"Type the line item number for the invoice product to easily identify the product in the invoice and make sure it's listed in the correct order."]),
      "manualDiscountAmount": OOPAttributeString.descriptions(["en":"Type the manual discount amount for the invoice product to deduct any negotiated or other savings from the product total."]),
      "manualDiscountAmountBase": OOPAttributeString.descriptions(["en":"Value of the Manual Discount in base currency."]),
      "parentBundleId": OOPAttributeUUID.descriptions(["en":"Choose the parent bundle associated with this product"]),
      "productAssociationId": OOPAttributeUUID.descriptions(["en":"Unique identifier of the product line item association with bundle in the invoice"]),
      "productTypeCode": OOPAttributeString.descriptions(["en":"Product Type"]),
      "productTypeCode_display": OOPAttributeString.descriptions(["en":""]),
      "pricePerUnit": OOPAttributeString.descriptions(["en":"Type the price per unit of the invoice product. The default is the value in the price list specified on the parent invoice for existing products."]),
      "pricePerUnitBase": OOPAttributeString.descriptions(["en":"Value of the Price Per Unit in base currency."]),
      "pricingErrorCode": OOPAttributeString.descriptions(["en":"Pricing error for the invoice product line item."]),
      "pricingErrorCode_display": OOPAttributeString.descriptions(["en":""]),
      "productDescription": OOPAttributeString.descriptions(["en":"Type a name or description to identify the type of write-in product included in the invoice."]),
      "productName": OOPAttributeString.descriptions(["en":"Calculated field that will be populated by name and description of the product."]),
      "productId": OOPAttributeUUID.descriptions(["en":"Choose the product to include on the invoice."]),
      "quantity": OOPAttributeString.descriptions(["en":"Type the amount or quantity of the product included in the invoice's total amount due."]),
      "quantityBackordered": OOPAttributeString.descriptions(["en":"Type the amount or quantity of the product that is back ordered for the invoice."]),
      "quantityCancelled": OOPAttributeString.descriptions(["en":"Type the amount or quantity of the product that was canceled for the invoice line item."]),
      "quantityShipped": OOPAttributeString.descriptions(["en":"Type the amount or quantity of the product that was shipped."]),
      "salesRepId": OOPAttributeUUID.descriptions(["en":"Choose the user responsible for the sale of the invoice product."]),
      "shippingTrackingNumber": OOPAttributeNumber.descriptions(["en":"Type a tracking number for shipment of the invoiced product."]),
      "shipToCity": OOPAttributeString.descriptions(["en":"Type the city for the customer's shipping address."]),
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
      "tax": OOPAttributeString.descriptions(["en":"Type the tax amount for the invoice product."]),
      "taxBase": OOPAttributeString.descriptions(["en":"Value of the Tax in base currency."]),
      "uoMId": OOPAttributeUUID.descriptions(["en":"Choose the unit of measurement for the base unit quantity for this purchase, such as each or dozen."]),
      "volumeDiscountAmount": OOPAttributeString.descriptions(["en":"Shows the discount amount per unit if a specified volume is purchased. Configure volume discounts in the Product Catalog in the Settings area."]),
      "volumeDiscountAmountBase": OOPAttributeString.descriptions(["en":"Value of the Volume Discount in base currency."]),
      "willCall": OOPAttributeString.descriptions(["en":"Select whether the invoice product should be shipped to the specified address or held until the customer calls with further pick up or delivery instructions."]),
      "sequenceNumber": OOPAttributeNumber.descriptions(["en":"Shows the ID of the data that maintains the sequence."]),
      "propertyConfigurationStatus": OOPAttributeString.descriptions(["en":"Status of the property configuration."]),
      "propertyConfigurationStatus_display": OOPAttributeString.descriptions(["en":""]),
      "invoiceDetailName": OOPAttributeString.descriptions(["en":"Invoice Detail Name. Added for 1:n Referential relationship"]),
      "salesOrderDetailId": OOPAttributeUUID.descriptions(["en":"Unique identifier for Order Line associated with Invoice Line."]),
      "parentBundleIdRef": OOPAttributeString.descriptions(["en":"Choose the parent bundle associated with this product"]),
      "billingMethod": OOPAttributeString.descriptions(["en":"Billing method for the project invoice line. Valid values are Time and Material and Fixed Price"]),
      "billingMethod_display": OOPAttributeString.descriptions(["en":""]),
      "chargeableAmount": OOPAttributeString.descriptions(["en":"The amount from included line details that is chargeable."]),
      "chargeableAmountBase": OOPAttributeString.descriptions(["en":"Value of the Chargeable Amount in base currency."]),
      "complimentaryAmount": OOPAttributeString.descriptions(["en":"The amount from included line details that is complimentary and won't be charged."]),
      "complimentaryAmountBase": OOPAttributeString.descriptions(["en":"Value of the Complimentary Amount in base currency."]),
      "contractLine": OOPAttributeString.descriptions(["en":"Deprecated) Shows the project contract line for this invoice line."]),
      "contractLineAmount": OOPAttributeString.descriptions(["en":"Amount from the related project contract line if present."]),
      "contractLineAmountBase": OOPAttributeString.descriptions(["en":"Value of the project contract line amount in base currency."]),
      "invoicedTillDate": OOPAttributeDate.descriptions(["en":"Amount already invoiced to customer for the same project contract line."]),
      "invoicedTillDateBase": OOPAttributeString.descriptions(["en":"Value of the Amount Previously Invoiced in base currency."]),
      "nonChargeableAmount": OOPAttributeString.descriptions(["en":"The amount from included line details that is non-chargeable."]),
      "nonChargeableAmountBase": OOPAttributeString.descriptions(["en":"Value of the Non Chargeable Amount in base currency."]),
      "project": OOPAttributeString.descriptions(["en":"Shows the project for this invoice line."]),
    ]);
  }

  override string entityClass() { return "aplInvoiceProduct"; }
  override string entityClasses() { return "aplInvoiceProducts"; }

  this(UUID myId) { 
    this(); this.id(myId); }
  this(string myName) { 
    this(); this.name(myName); }
  this(UUID myId, string myName) { 
    this(); this.id(myId).name(myName); }
  this(Json aJson) { 
    this(); this.fromJson(aJson); }
}
auto APLInvoiceProduct() { return new DAPLInvoiceProduct; } 
auto APLInvoiceProduct(Json json) { return new DAPLInvoiceProduct(json); } 

unittest {
  version(uim_entities) {
    assert(APLInvoiceProduct);

  auto entity = APLInvoiceProduct;
  // auto repository = OOPFileRepository("./tests");
/* /*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */ 
  }
}