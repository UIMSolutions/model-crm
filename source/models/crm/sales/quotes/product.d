module models.crm.sales.quotes.product;

@safe:
import uim.entities;

// Product line item in a quote. The details include such information as product ID, description, quantity, and cost.
class DCRMQuoteProduct : DEntity {
  mixin(EntityThis!("CRMQuoteProduct"));

  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([
        "createdOnBehalfBy": UUIDAttribute, //Shows who created the record on behalf of another user."]),
        "modifiedOnBehalfBy": UUIDAttribute, //Shows who last updated the record on behalf of another user."]),
        "overriddenCreatedOn": TimestampAttribute, //Date and time that the record was migrated."]),
        "importSequenceNumber": IntegerAttribute, //Sequence number of the import that created this record."]),
        "ownerId": UUIDAttribute, // Owner Id"]),
        "ownerIdType": StringAttribute, // The type of owner, either User or Team."]),
        "owningBusinessUnitId": UUIDAttribute, //Unique identifier for the business unit that owns the record"]),
        "owningUserId": UUIDAttribute, //Unique identifier of the user that owns the activity."]),
        "owningTeamId": UUIDAttribute, //Unique identifier for the team that owns the record."]),
        "timeZoneRuleVersionNumber": IntegerAttribute, //For internal use only."]),
        "utcConversionTimeZoneCode": StringAttribute, // Time zone code that was in use when the record was created."]),
        "quoteDetailId": UUIDAttribute, // Unique identifier of the product line item in the quote."]),
        "baseAmount": StringAttribute, // Shows the total price of the quote product, based on the price per unit, volume discount, and quantity."]),
        "transactionCurrencyId": CurrencyIdAttribute, // Choose the local currency for the record to make sure budgets are reported in the correct currency."]),
        "exchangeRate": StringAttribute, // Shows the conversion rate of the record's currency. The exchange rate is used to convert all money fields in the record from the local currency to the system's default currency."]),
        "baseAmountBase": StringAttribute, // Value of the Amount in base currency."]),
        "extendedAmount": StringAttribute, // Shows the total amount due for the quote product, based on the sum of the unit price, quantity, discounts ,and tax."]),
        "extendedAmountBase": StringAttribute, // Value of the Extended Amount in base currency."]),
        "isPriceOverridden": BooleanAttribute, // Select whether the price per unit is fixed at the value in the specified price list or can be overridden by users who have edit rights to the quote product."]),
        "isProductOverridden": BooleanAttribute, // Select whether the product exists in the Microsoft Dynamics 365 product catalog or is a write-in product specific to the quote."]),
        "lineItemNumber": IntegerAttribute, //Type the line item number for the quote product to easily identify the product in the quote and make sure it's listed in the correct order."]),
        "manualDiscountAmount": StringAttribute, // Type the manual discount amount for the quote product to deduct any negotiated or other savings from the product total on the quote."]),
        "manualDiscountAmountBase": StringAttribute, // Value of the Manual Discount in base currency."]),
        "parentBundleId": UUIDAttribute, // Choose the parent bundle associated with this product"]),
        "productAssociationId": UUIDAttribute, // Unique identifier of the product line item association with bundle in the quote"]),
        "productTypeCode": StringAttribute, // Product Type"]),
        "productTypeCode_display": StringAttribute, //
        "pricePerUnit": StringAttribute, // Type the price per unit of the quote product. The default is to the value in the price list specified on the quote for existing products."]),
        "pricePerUnitBase": StringAttribute, // Value of the Price Per Unit in base currency."]),
        "pricingErrorCode": StringAttribute, // Select the type of pricing error, such as a missing or invalid product, or missing quantity."]),
        "pricingErrorCode_display": StringAttribute, //
        "productDescription": StringAttribute, // Type a name or description to identify the type of write-in product included in the quote."]),
        "productName": StringAttribute, // Calculated field that will be populated by name and description of the product."]),
        "productId": UUIDAttribute, // Choose the product to include on the quote to link the product's pricing and other information to the quote."]),
        "quantity": StringAttribute, // Type the amount or quantity of the product requested by the customer."]),
        "quoteId": UUIDAttribute, // Unique identifier of the quote for the quote product."]),
        "quoteStateCode": StringAttribute, // Status of the quote product."]),
        "quoteStateCode_display": StringAttribute, //
        "requestDeliveryBy": UUIDAttribute, //Enter the delivery date requested by the customer for the quote product."]),
        "salesRepId": UUIDAttribute, // Choose the user responsible for the sale of the quote product."]),
        "shipToAddressId": UUIDAttribute, // address").descriptions(["en":"Unique identifier of the shipping address."]),
        "shipToCity": StringAttribute, // Type the city for the customer's shipping address."]),
        "shipToContactName": StringAttribute, // Type the primary contact name at the customer's shipping address."]),
        "shipToCountry": StringAttribute, // Type the country or region for the customer's shipping address."]),
        "shipToFax": StringAttribute, // Type the fax number for the customer's shipping address."]),
        "shipToFreightTermsCode": StringAttribute, // Select the freight terms to make sure shipping orders are processed correctly."]),
        "shipToFreightTermsCode_display": StringAttribute, //
        "shipToLine1": StringAttribute, // Type the first line of the customer's shipping address."]),
        "shipToLine2": StringAttribute, // Type the second line of the customer's shipping address."]),
        "shipToLine3": StringAttribute, // Type the third line of the shipping address."]),
        "shipToName": StringAttribute, // Type a name for the customer's shipping address, such as 'Headquarters' or 'Field office', to identify the address."]),
        "shipToPostalCode": StringAttribute, // Type the ZIP Code or postal code for the shipping address."]),
        "shipToStateOrProvince": StringAttribute, // Type the state or province for the shipping address."]),
        "shipToTelephone": StringAttribute, // Type the phone number for the customer's shipping address."]),
        "tax": StringAttribute, // Type the tax amount for the quote product."]),
        "taxBase": StringAttribute, // Value of the Tax in base currency."]),
        "uoMId": UUIDAttribute, // Choose the unit of measurement for the base unit quantity for this purchase, such as each or dozen."]),
        "volumeDiscountAmount": StringAttribute, // Shows the discount amount per unit if a specified volume is purchased. Configure volume discounts in the Product Catalog in the Settings area."]),
        "volumeDiscountAmountBase": StringAttribute, // Value of the Volume Discount in base currency."]),
        "willCall": StringAttribute, // Select whether the quote product should be shipped to the specified address or held until the customer calls with further pick up or delivery instructions."]),
        "sequenceNumber": IntegerAttribute, //Unique identifier of the data that maintains the sequence."]),
        "propertyConfigurationStatus": StringAttribute, // Status of the property configuration."]),
        "propertyConfigurationStatus_display": StringAttribute, //
        "quoteDetailName": StringAttribute, // Quote Detail Name. Added for 1:n Referential relationship"]),
        "parentBundleIdRef": StringAttribute, // Choose the parent bundle associated with this product"]),
      ])
      .registerPath("crm_quoteproducts");
  }
}
mixin(EntityCalls!("CRMQuoteProduct"));

unittest {
  version(test_model_crm) {
    assert(CRMQuoteProduct);
  
  auto entity = CRMQuoteProduct;
  // auto repository = OOPFileRepository("./tests");
/* /*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */ 
  }
}