module models.crm.projects.service_automation.invoices.product;

@safe:
import uim.entities;

// Line item in an invoice containing detailed billing information for a product.
class DCRMInvoiceProductEntity : DOOPEntity {
  mixin(EntityThis!("CRMInvoiceProductEntity"));

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
        "invoiceDetailId": UUIDAttributeClass, // Unique identifier of the invoice product line item."]),
        "actualDeliveryOn": TimestampAttributeClass, //Enter the date when the invoiced product was delivered to the customer."]),
        "baseAmount": StringAttributeClass, // Shows the total price of the invoice product, based on the price per unit, volume discount, and quantity."]),
        "transactionCurrencyId": CurrencyIdAttributeClass, // Choose the local currency for the record to make sure budgets are reported in the correct currency."]),
        "exchangeRate": StringAttributeClass, // Shows the conversion rate of the record's currency. The exchange rate is used to convert all money fields in the record from the local currency to the system's default currency."]),
        "baseAmountBase": StringAttributeClass, // Value of the Amount in base currency."]),
        "extendedAmount": StringAttributeClass, // Shows the total amount due for the invoice product, based on the sum of the unit price, quantity, discounts, and tax."]),
        "extendedAmountBase": StringAttributeClass, // Value of the Extended Amount in base currency."]),
        "invoiceId": UUIDAttributeClass, // Unique identifier of the invoice associated with the invoice product line item."]),
        "invoiceIsPriceLocked": StringAttributeClass, // Information about whether invoice product pricing is locked."]),
        "invoiceStateCode": StringAttributeClass, // Status of the invoice product."]),
        "invoiceStateCode_display": StringAttributeClass, //
        "isCopied": BooleanAttributeClass, // Select whether the invoice product is copied from another item or data source."]),
        "isPriceOverridden": BooleanAttributeClass, // Select whether the price per unit is fixed at the value in the specified price list or can be overridden by users who have edit rights to the invoice product."]),
        "isProductOverridden": BooleanAttributeClass, // Select whether the product exists in the Microsoft Dynamics 365 product catalog or is a write-in product specific to the parent invoice."]),
        "lineItemNumber": IntegerAttributeClass, //Type the line item number for the invoice product to easily identify the product in the invoice and make sure it's listed in the correct order."]),
        "manualDiscountAmount": StringAttributeClass, // Type the manual discount amount for the invoice product to deduct any negotiated or other savings from the product total."]),
        "manualDiscountAmountBase": StringAttributeClass, // Value of the Manual Discount in base currency."]),
        "parentBundleId": UUIDAttributeClass, // Choose the parent bundle associated with this product"]),
        "productAssociationId": UUIDAttributeClass, // Unique identifier of the product line item association with bundle in the invoice"]),
        "productTypeCode": StringAttributeClass, // Product Type"]),
        "productTypeCode_display": StringAttributeClass, //
        "pricePerUnit": StringAttributeClass, // Type the price per unit of the invoice product. The default is the value in the price list specified on the parent invoice for existing products."]),
        "pricePerUnitBase": StringAttributeClass, // Value of the Price Per Unit in base currency."]),
        "pricingErrorCode": StringAttributeClass, // Pricing error for the invoice product line item."]),
        "pricingErrorCode_display": StringAttributeClass, //
        "productDescription": StringAttributeClass, // Type a name or description to identify the type of write-in product included in the invoice."]),
        "productName": StringAttributeClass, // Calculated field that will be populated by name and description of the product."]),
        "productId": UUIDAttributeClass, // Choose the product to include on the invoice."]),
        "quantity": StringAttributeClass, // Type the amount or quantity of the product included in the invoice's total amount due."]),
        "quantityBackordered": StringAttributeClass, // Type the amount or quantity of the product that is back ordered for the invoice."]),
        "quantityCancelled": StringAttributeClass, // Type the amount or quantity of the product that was canceled for the invoice line item."]),
        "quantityShipped": StringAttributeClass, // Type the amount or quantity of the product that was shipped."]),
        "salesRepId": UUIDAttributeClass, // Choose the user responsible for the sale of the invoice product."]),
        "shippingTrackingNumber": IntegerAttributeClass, //Type a tracking number for shipment of the invoiced product."]),
        "shipToCity": StringAttributeClass, // Type the city for the customer's shipping address."]),
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
        "tax": StringAttributeClass, // Type the tax amount for the invoice product."]),
        "taxBase": StringAttributeClass, // Value of the Tax in base currency."]),
        "uoMId": UUIDAttributeClass, // Choose the unit of measurement for the base unit quantity for this purchase, such as each or dozen."]),
        "volumeDiscountAmount": StringAttributeClass, // Shows the discount amount per unit if a specified volume is purchased. Configure volume discounts in the Product Catalog in the Settings area."]),
        "volumeDiscountAmountBase": StringAttributeClass, // Value of the Volume Discount in base currency."]),
        "willCall": StringAttributeClass, // Select whether the invoice product should be shipped to the specified address or held until the customer calls with further pick up or delivery instructions."]),
        "sequenceNumber": IntegerAttributeClass, //Shows the ID of the data that maintains the sequence."]),
        "propertyConfigurationStatus": StringAttributeClass, // Status of the property configuration."]),
        "propertyConfigurationStatus_display": StringAttributeClass, //
        "invoiceDetailName": StringAttributeClass, // Invoice Detail Name. Added for 1:n Referential relationship"]),
        "salesOrderDetailId": UUIDAttributeClass, // Unique identifier for Order Line associated with Invoice Line."]),
        "parentBundleIdRef": StringAttributeClass, // Choose the parent bundle associated with this product"]),
        "billingMethod": StringAttributeClass, // Billing method for the project invoice line. Valid values are Time and Material and Fixed Price"]),
        "billingMethod_display": StringAttributeClass, //
        "chargeableAmount": StringAttributeClass, // The amount from included line details that is chargeable."]),
        "chargeableAmountBase": StringAttributeClass, // Value of the Chargeable Amount in base currency."]),
        "complimentaryAmount": StringAttributeClass, // The amount from included line details that is complimentary and won't be charged."]),
        "complimentaryAmountBase": StringAttributeClass, // Value of the Complimentary Amount in base currency."]),
        "contractLine": StringAttributeClass, // Deprecated) Shows the project contract line for this invoice line."]),
        "contractLineAmount": StringAttributeClass, // Amount from the related project contract line if present."]),
        "contractLineAmountBase": StringAttributeClass, // Value of the project contract line amount in base currency."]),
        "invoicedTillDate": DateAttributeClass, // Amount already invoiced to customer for the same project contract line."]),
        "invoicedTillDateBase": StringAttributeClass, // Value of the Amount Previously Invoiced in base currency."]),
        "nonChargeableAmount": StringAttributeClass, // The amount from included line details that is non-chargeable."]),
        "nonChargeableAmountBase": StringAttributeClass, // Value of the Non Chargeable Amount in base currency."]),
        "project": StringAttributeClass, // Shows the project for this invoice line."]),
      ])
      .registerPath("crm_invoiceproducts");
  }
}
mixin(EntityCalls!("CRMInvoiceProductEntity"));

unittest {
  version(test_model_crm) {
    assert(CRMInvoiceProductEntity);

  auto entity = CRMInvoiceProductEntity;
  // auto repository = OOPFileRepository("./tests");
/* /*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */ 
  }
}