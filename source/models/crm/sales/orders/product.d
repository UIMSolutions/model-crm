module models.crm.sales.orders.product;

@safe:
import uim.entities;

// Line item in a sales order.
class DCRMOrderProduct : DOOPEntity {
  mixin(EntityThis!("CRMOrderProduct"));

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
        "salesOrderDetailId": UUIDAttributeClass, // Unique identifier of the product specified in the order."]),
        "baseAmount": StringAttributeClass, // Shows the total price of the order product, based on the price per unit, volume discount, and quantity."]),
        "transactionCurrencyId": CurrencyIdAttributeClass, // Choose the local currency for the record to make sure budgets are reported in the correct currency."]),
        "exchangeRate": StringAttributeClass, // Shows the conversion rate of the record's currency. The exchange rate is used to convert all money fields in the record from the local currency to the system's default currency."]),
        "baseAmountBase": StringAttributeClass, // Value of the Amount in base currency."]),
        "extendedAmount": StringAttributeClass, // Shows the total amount due for the order product, based on the sum of the unit price, quantity, discounts, and tax."]),
        "extendedAmountBase": StringAttributeClass, // Value of the Extended Amount in base currency."]),
        "isCopied": BooleanAttributeClass, // Select whether the invoice line item is copied from another item or data source."]),
        "isPriceOverridden": BooleanAttributeClass, // Select whether the price per unit is fixed at the value in the specified price list or can be overridden by users who have edit rights to the order product."]),
        "isProductOverridden": BooleanAttributeClass, // Select whether the product exists in the Microsoft Dynamics 365 product catalog or is a write-in product specific to the order."]),
        "lineItemNumber": IntegerAttributeClass, //Type the line item number for the order product to easily identify the product in the order and make sure it's listed in the correct sequence."]),
        "manualDiscountAmount": StringAttributeClass, // Type the manual discount amount for the order product to deduct any negotiated or other savings from the product total on the order."]),
        "manualDiscountAmountBase": StringAttributeClass, // Value of the Manual Discount in base currency."]),
        "parentBundleId": UUIDAttributeClass, // Choose the parent bundle associated with this product"]),
        "productAssociationId": UUIDAttributeClass, // Unique identifier of the product line item association with bundle in the sales order"]),
        "productTypeCode": StringAttributeClass, // Product Type"]),
        "productTypeCode_display": StringAttributeClass, //
        "pricePerUnit": StringAttributeClass, // Type the price per unit of the order product. The default is the value in the price list specified on the order for existing products."]),
        "pricePerUnitBase": StringAttributeClass, // Value of the Price Per Unit in base currency."]),
        "pricingErrorCode": StringAttributeClass, // Select the type of pricing error, such as a missing or invalid product, or missing quantity."]),
        "pricingErrorCode_display": StringAttributeClass, //
        "productDescription": StringAttributeClass, // Type a name or description to identify the type of write-in product included in the order."]),
        "productName": StringAttributeClass, // Calculated field that will be populated by name and description of the product."]),
        "productId": UUIDAttributeClass, // Choose the product to include on the order to link the product's pricing and other information to the parent order."]),
        "quantity": StringAttributeClass, // Type the amount or quantity of the product ordered by the customer."]),
        "quantityBackordered": StringAttributeClass, // Type the amount or quantity of the product that is back ordered for the order."]),
        "quantityCancelled": StringAttributeClass, // Type the amount or quantity of the product that was canceled."]),
        "quantityShipped": StringAttributeClass, // Type the amount or quantity of the product that was shipped for the order."]),
        "requestDeliveryBy": UUIDAttributeClass, //Enter the delivery date requested by the customer for the order product."]),
        "salesOrderId": UUIDAttributeClass, // Shows the order for the product. The ID is used to link product pricing and other details to the total amounts and other information on the order."]),
        "salesOrderIsPriceLocked": StringAttributeClass, // Tells whether product pricing is locked for the order."]),
        "salesOrderStateCode": StringAttributeClass, // Shows the status of the order that the order detail is associated with."]),
        "salesOrderStateCode_display": StringAttributeClass, //
        "salesRepId": UUIDAttributeClass, // Choose the user responsible for the sale of the order product."]),
        "shipToAddressId": UUIDAttributeClass, // address").descriptions(["en":"Unique identifier of the shipping address."]),
        "shipToCity": StringAttributeClass, // Type the city for the customer's shipping address."]),
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
        "tax": StringAttributeClass, // Type the tax amount for the order product."]),
        "taxBase": StringAttributeClass, // Value of the Tax in base currency."]),
        "uoMId": UUIDAttributeClass, // Choose the unit of measurement for the base unit quantity for this purchase, such as each or dozen."]),
        "volumeDiscountAmount": StringAttributeClass, // Shows the discount amount per unit if a specified volume is purchased. Configure volume discounts in the Product Catalog in the Settings area."]),
        "volumeDiscountAmountBase": StringAttributeClass, // Value of the Volume Discount in base currency."]),
        "willCall": StringAttributeClass, // Select whether the order product should be shipped to the specified address or held until the customer calls with further pick up or delivery instructions."]),
        "sequenceNumber": IntegerAttributeClass, //Shows the ID of the data that maintains the sequence."]),
        "propertyConfigurationStatus": StringAttributeClass, // Status of the property configuration."]),
        "propertyConfigurationStatus_display": StringAttributeClass, //
        "quoteDetailId": UUIDAttributeClass, // Unique identifier for Quote Line associated with Order Line."]),
        "salesOrderDetailName": StringAttributeClass, // Sales Order Detail Name. Added for 1:n Referential relationship"]),
        "parentBundleIdRef": StringAttributeClass, // Choose the parent bundle associated with this product"]),
      ])
      .registerPath("crm_orderproducts");
  }
}
mixin(EntityCalls!("CRMOrderProduct"));

unittest {
  version(test_model_crm) {
    assert(CRMOrderProduct);

  auto entity = CRMOrderProduct;
  // auto repository = OOPFileRepository("./tests");
/* /*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */ 
  }
}