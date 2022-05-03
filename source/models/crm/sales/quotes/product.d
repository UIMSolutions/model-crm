module models.crm.sales.quotes.product;

@safe:
import uim.entities;

// Product line item in a quote. The details include such information as product ID, description, quantity, and cost.
class DCRMQuoteProduct : DOOPEntity {
  mixin(EntityThis!("CRMQuoteProduct"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "createdOnBehalfBy": OOPLinkAttribute("aplUser").descriptions(["en":"Shows who created the record on behalf of another user."]),
        "modifiedOnBehalfBy": OOPLinkAttribute("aplUser").descriptions(["en":"Shows who last updated the record on behalf of another user."]),
        "overriddenCreatedOn": OOPTimestampAttribute.descriptions(["en":"Date and time that the record was migrated."]),
        "importSequenceNumber": OOPIntegerAttribute.descriptions(["en":"Sequence number of the import that created this record."]),
        "ownerId": UUIDAttributeClass, // Owner Id"]),
        "ownerIdType": StringAttributeClass, // The type of owner, either User or Team."]),
        "owningBusinessUnitId": OOPLinkAttribute("aplBusinessUnit").descriptions(["en":"Unique identifier for the business unit that owns the record"]),
        "owningUserId": OOPLinkAttribute("aplUser").descriptions(["en":"Unique identifier of the user that owns the activity."]),
        "owningTeamId": OOPLinkAttribute("aplTeam").descriptions(["en":"Unique identifier for the team that owns the record."]),
        "timeZoneRuleVersionNumber": OOPIntegerAttribute.descriptions(["en":"For internal use only."]),
        "utcConversionTimeZoneCode": StringAttributeClass, // Time zone code that was in use when the record was created."]),
        "quoteDetailId": UUIDAttributeClass, // Unique identifier of the product line item in the quote."]),
        "baseAmount": StringAttributeClass, // Shows the total price of the quote product, based on the price per unit, volume discount, and quantity."]),
        "transactionCurrencyId": OOPLinkAttribute("aplCurrency").descriptions(["en":"Choose the local currency for the record to make sure budgets are reported in the correct currency."]),
        "exchangeRate": StringAttributeClass, // Shows the conversion rate of the record's currency. The exchange rate is used to convert all money fields in the record from the local currency to the system's default currency."]),
        "baseAmountBase": StringAttributeClass, // Value of the Amount in base currency."]),
        "extendedAmount": StringAttributeClass, // Shows the total amount due for the quote product, based on the sum of the unit price, quantity, discounts ,and tax."]),
        "extendedAmountBase": StringAttributeClass, // Value of the Extended Amount in base currency."]),
        "isPriceOverridden": BooleanAttributeClass, // Select whether the price per unit is fixed at the value in the specified price list or can be overridden by users who have edit rights to the quote product."]),
        "isProductOverridden": BooleanAttributeClass, // Select whether the product exists in the Microsoft Dynamics 365 product catalog or is a write-in product specific to the quote."]),
        "lineItemNumber": OOPIntegerAttribute.descriptions(["en":"Type the line item number for the quote product to easily identify the product in the quote and make sure it's listed in the correct order."]),
        "manualDiscountAmount": StringAttributeClass, // Type the manual discount amount for the quote product to deduct any negotiated or other savings from the product total on the quote."]),
        "manualDiscountAmountBase": StringAttributeClass, // Value of the Manual Discount in base currency."]),
        "parentBundleId": UUIDAttributeClass, // Choose the parent bundle associated with this product"]),
        "productAssociationId": UUIDAttributeClass, // Unique identifier of the product line item association with bundle in the quote"]),
        "productTypeCode": StringAttributeClass, // Product Type"]),
        "productTypeCode_display": StringAttributeClass, //
        "pricePerUnit": StringAttributeClass, // Type the price per unit of the quote product. The default is to the value in the price list specified on the quote for existing products."]),
        "pricePerUnitBase": StringAttributeClass, // Value of the Price Per Unit in base currency."]),
        "pricingErrorCode": StringAttributeClass, // Select the type of pricing error, such as a missing or invalid product, or missing quantity."]),
        "pricingErrorCode_display": StringAttributeClass, //
        "productDescription": StringAttributeClass, // Type a name or description to identify the type of write-in product included in the quote."]),
        "productName": StringAttributeClass, // Calculated field that will be populated by name and description of the product."]),
        "productId": UUIDAttributeClass, // Choose the product to include on the quote to link the product's pricing and other information to the quote."]),
        "quantity": StringAttributeClass, // Type the amount or quantity of the product requested by the customer."]),
        "quoteId": UUIDAttributeClass, // Unique identifier of the quote for the quote product."]),
        "quoteStateCode": StringAttributeClass, // Status of the quote product."]),
        "quoteStateCode_display": StringAttributeClass, //
        "requestDeliveryBy": OOPLinkAttribute("aplUser").descriptions(["en":"Enter the delivery date requested by the customer for the quote product."]),
        "salesRepId": UUIDAttributeClass, // Choose the user responsible for the sale of the quote product."]),
        "shipToAddressId": OOPLinkAttribute("address").descriptions(["en":"Unique identifier of the shipping address."]),
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
        "tax": StringAttributeClass, // Type the tax amount for the quote product."]),
        "taxBase": StringAttributeClass, // Value of the Tax in base currency."]),
        "uoMId": UUIDAttributeClass, // Choose the unit of measurement for the base unit quantity for this purchase, such as each or dozen."]),
        "volumeDiscountAmount": StringAttributeClass, // Shows the discount amount per unit if a specified volume is purchased. Configure volume discounts in the Product Catalog in the Settings area."]),
        "volumeDiscountAmountBase": StringAttributeClass, // Value of the Volume Discount in base currency."]),
        "willCall": StringAttributeClass, // Select whether the quote product should be shipped to the specified address or held until the customer calls with further pick up or delivery instructions."]),
        "sequenceNumber": OOPIntegerAttribute.descriptions(["en":"Unique identifier of the data that maintains the sequence."]),
        "propertyConfigurationStatus": StringAttributeClass, // Status of the property configuration."]),
        "propertyConfigurationStatus_display": StringAttributeClass, //
        "quoteDetailName": StringAttributeClass, // Quote Detail Name. Added for 1:n Referential relationship"]),
        "parentBundleIdRef": StringAttributeClass, // Choose the parent bundle associated with this product"]),
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