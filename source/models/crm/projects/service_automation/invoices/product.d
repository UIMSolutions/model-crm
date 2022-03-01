module models.crm.projects.service_automation.invoices.product;

@safe:
import uim.entities;

// Line item in an invoice containing detailed billing information for a product.
class DCRMInvoiceProduct : DOOPEntity {
  mixin(OOPEntityThis!("CRMInvoiceProduct"));

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
        "invoiceDetailId": OOPUUIDAttribute.descriptions(["en":"Unique identifier of the invoice product line item."]),
        "actualDeliveryOn": OOPAttributeTimestamp.descriptions(["en":"Enter the date when the invoiced product was delivered to the customer."]),
        "baseAmount": OOPStringAttribute.descriptions(["en":"Shows the total price of the invoice product, based on the price per unit, volume discount, and quantity."]),
        "transactionCurrencyId": OOPAttributeLink("aplCurrency").descriptions(["en":"Choose the local currency for the record to make sure budgets are reported in the correct currency."]),
        "exchangeRate": OOPStringAttribute.descriptions(["en":"Shows the conversion rate of the record's currency. The exchange rate is used to convert all money fields in the record from the local currency to the system's default currency."]),
        "baseAmountBase": OOPStringAttribute.descriptions(["en":"Value of the Amount in base currency."]),
        "extendedAmount": OOPStringAttribute.descriptions(["en":"Shows the total amount due for the invoice product, based on the sum of the unit price, quantity, discounts, and tax."]),
        "extendedAmountBase": OOPStringAttribute.descriptions(["en":"Value of the Extended Amount in base currency."]),
        "invoiceId": OOPUUIDAttribute.descriptions(["en":"Unique identifier of the invoice associated with the invoice product line item."]),
        "invoiceIsPriceLocked": OOPStringAttribute.descriptions(["en":"Information about whether invoice product pricing is locked."]),
        "invoiceStateCode": OOPStringAttribute.descriptions(["en":"Status of the invoice product."]),
        "invoiceStateCode_display": OOPStringAttribute.descriptions(["en":""]),
        "isCopied": OOPAttributeBoolean.descriptions(["en":"Select whether the invoice product is copied from another item or data source."]),
        "isPriceOverridden": OOPAttributeBoolean.descriptions(["en":"Select whether the price per unit is fixed at the value in the specified price list or can be overridden by users who have edit rights to the invoice product."]),
        "isProductOverridden": OOPAttributeBoolean.descriptions(["en":"Select whether the product exists in the Microsoft Dynamics 365 product catalog or is a write-in product specific to the parent invoice."]),
        "lineItemNumber": OOPAttributeNumber.descriptions(["en":"Type the line item number for the invoice product to easily identify the product in the invoice and make sure it's listed in the correct order."]),
        "manualDiscountAmount": OOPStringAttribute.descriptions(["en":"Type the manual discount amount for the invoice product to deduct any negotiated or other savings from the product total."]),
        "manualDiscountAmountBase": OOPStringAttribute.descriptions(["en":"Value of the Manual Discount in base currency."]),
        "parentBundleId": OOPUUIDAttribute.descriptions(["en":"Choose the parent bundle associated with this product"]),
        "productAssociationId": OOPUUIDAttribute.descriptions(["en":"Unique identifier of the product line item association with bundle in the invoice"]),
        "productTypeCode": OOPStringAttribute.descriptions(["en":"Product Type"]),
        "productTypeCode_display": OOPStringAttribute.descriptions(["en":""]),
        "pricePerUnit": OOPStringAttribute.descriptions(["en":"Type the price per unit of the invoice product. The default is the value in the price list specified on the parent invoice for existing products."]),
        "pricePerUnitBase": OOPStringAttribute.descriptions(["en":"Value of the Price Per Unit in base currency."]),
        "pricingErrorCode": OOPStringAttribute.descriptions(["en":"Pricing error for the invoice product line item."]),
        "pricingErrorCode_display": OOPStringAttribute.descriptions(["en":""]),
        "productDescription": OOPStringAttribute.descriptions(["en":"Type a name or description to identify the type of write-in product included in the invoice."]),
        "productName": OOPStringAttribute.descriptions(["en":"Calculated field that will be populated by name and description of the product."]),
        "productId": OOPUUIDAttribute.descriptions(["en":"Choose the product to include on the invoice."]),
        "quantity": OOPStringAttribute.descriptions(["en":"Type the amount or quantity of the product included in the invoice's total amount due."]),
        "quantityBackordered": OOPStringAttribute.descriptions(["en":"Type the amount or quantity of the product that is back ordered for the invoice."]),
        "quantityCancelled": OOPStringAttribute.descriptions(["en":"Type the amount or quantity of the product that was canceled for the invoice line item."]),
        "quantityShipped": OOPStringAttribute.descriptions(["en":"Type the amount or quantity of the product that was shipped."]),
        "salesRepId": OOPUUIDAttribute.descriptions(["en":"Choose the user responsible for the sale of the invoice product."]),
        "shippingTrackingNumber": OOPAttributeNumber.descriptions(["en":"Type a tracking number for shipment of the invoiced product."]),
        "shipToCity": OOPStringAttribute.descriptions(["en":"Type the city for the customer's shipping address."]),
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
        "tax": OOPStringAttribute.descriptions(["en":"Type the tax amount for the invoice product."]),
        "taxBase": OOPStringAttribute.descriptions(["en":"Value of the Tax in base currency."]),
        "uoMId": OOPUUIDAttribute.descriptions(["en":"Choose the unit of measurement for the base unit quantity for this purchase, such as each or dozen."]),
        "volumeDiscountAmount": OOPStringAttribute.descriptions(["en":"Shows the discount amount per unit if a specified volume is purchased. Configure volume discounts in the Product Catalog in the Settings area."]),
        "volumeDiscountAmountBase": OOPStringAttribute.descriptions(["en":"Value of the Volume Discount in base currency."]),
        "willCall": OOPStringAttribute.descriptions(["en":"Select whether the invoice product should be shipped to the specified address or held until the customer calls with further pick up or delivery instructions."]),
        "sequenceNumber": OOPAttributeNumber.descriptions(["en":"Shows the ID of the data that maintains the sequence."]),
        "propertyConfigurationStatus": OOPStringAttribute.descriptions(["en":"Status of the property configuration."]),
        "propertyConfigurationStatus_display": OOPStringAttribute.descriptions(["en":""]),
        "invoiceDetailName": OOPStringAttribute.descriptions(["en":"Invoice Detail Name. Added for 1:n Referential relationship"]),
        "salesOrderDetailId": OOPUUIDAttribute.descriptions(["en":"Unique identifier for Order Line associated with Invoice Line."]),
        "parentBundleIdRef": OOPStringAttribute.descriptions(["en":"Choose the parent bundle associated with this product"]),
        "billingMethod": OOPStringAttribute.descriptions(["en":"Billing method for the project invoice line. Valid values are Time and Material and Fixed Price"]),
        "billingMethod_display": OOPStringAttribute.descriptions(["en":""]),
        "chargeableAmount": OOPStringAttribute.descriptions(["en":"The amount from included line details that is chargeable."]),
        "chargeableAmountBase": OOPStringAttribute.descriptions(["en":"Value of the Chargeable Amount in base currency."]),
        "complimentaryAmount": OOPStringAttribute.descriptions(["en":"The amount from included line details that is complimentary and won't be charged."]),
        "complimentaryAmountBase": OOPStringAttribute.descriptions(["en":"Value of the Complimentary Amount in base currency."]),
        "contractLine": OOPStringAttribute.descriptions(["en":"Deprecated) Shows the project contract line for this invoice line."]),
        "contractLineAmount": OOPStringAttribute.descriptions(["en":"Amount from the related project contract line if present."]),
        "contractLineAmountBase": OOPStringAttribute.descriptions(["en":"Value of the project contract line amount in base currency."]),
        "invoicedTillDate": OOPAttributeDate.descriptions(["en":"Amount already invoiced to customer for the same project contract line."]),
        "invoicedTillDateBase": OOPStringAttribute.descriptions(["en":"Value of the Amount Previously Invoiced in base currency."]),
        "nonChargeableAmount": OOPStringAttribute.descriptions(["en":"The amount from included line details that is non-chargeable."]),
        "nonChargeableAmountBase": OOPStringAttribute.descriptions(["en":"Value of the Non Chargeable Amount in base currency."]),
        "project": OOPStringAttribute.descriptions(["en":"Shows the project for this invoice line."]),
      ])
      .registerPath("crm_invoiceproducts");
  }
}
mixin(OOPEntityCalls!("CRMInvoiceProduct"));

unittest {
  version(uim_entities) {
    assert(CRMInvoiceProduct);

  auto entity = CRMInvoiceProduct;
  // auto repository = OOPFileRepository("./tests");
/* /*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */ 
  }
}