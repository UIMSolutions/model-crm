module models.crm.sales.quotes.product;

@safe:
import uim.entities;

// Product line item in a quote. The details include such information as product ID, description, quantity, and cost.
class DCRMQuoteProduct : DOOPEntity {
  mixin(EntityThis!("CRMQuoteProduct"));

  override void initialize() {
    super.initialize;

    this
      .addAttributes([
        "createdOnBehalfBy": OOPLinkAttribute("aplUser").descriptions(["en":"Shows who created the record on behalf of another user."]),
        "modifiedOnBehalfBy": OOPLinkAttribute("aplUser").descriptions(["en":"Shows who last updated the record on behalf of another user."]),
        "overriddenCreatedOn": OOPTimestampAttribute.descriptions(["en":"Date and time that the record was migrated."]),
        "importSequenceNumber": OOPIntegerAttribute.descriptions(["en":"Sequence number of the import that created this record."]),
        "ownerId": OOPUUIDAttribute.descriptions(["en":"Owner Id"]),
        "ownerIdType": OOPStringAttribute.descriptions(["en":"The type of owner, either User or Team."]),
        "owningBusinessUnitId": OOPLinkAttribute("aplBusinessUnit").descriptions(["en":"Unique identifier for the business unit that owns the record"]),
        "owningUserId": OOPLinkAttribute("aplUser").descriptions(["en":"Unique identifier of the user that owns the activity."]),
        "owningTeamId": OOPLinkAttribute("aplTeam").descriptions(["en":"Unique identifier for the team that owns the record."]),
        "timeZoneRuleVersionNumber": OOPIntegerAttribute.descriptions(["en":"For internal use only."]),
        "utcConversionTimeZoneCode": OOPStringAttribute.descriptions(["en":"Time zone code that was in use when the record was created."]),
        "quoteDetailId": OOPUUIDAttribute.descriptions(["en":"Unique identifier of the product line item in the quote."]),
        "baseAmount": OOPStringAttribute.descriptions(["en":"Shows the total price of the quote product, based on the price per unit, volume discount, and quantity."]),
        "transactionCurrencyId": OOPLinkAttribute("aplCurrency").descriptions(["en":"Choose the local currency for the record to make sure budgets are reported in the correct currency."]),
        "exchangeRate": OOPStringAttribute.descriptions(["en":"Shows the conversion rate of the record's currency. The exchange rate is used to convert all money fields in the record from the local currency to the system's default currency."]),
        "baseAmountBase": OOPStringAttribute.descriptions(["en":"Value of the Amount in base currency."]),
        "extendedAmount": OOPStringAttribute.descriptions(["en":"Shows the total amount due for the quote product, based on the sum of the unit price, quantity, discounts ,and tax."]),
        "extendedAmountBase": OOPStringAttribute.descriptions(["en":"Value of the Extended Amount in base currency."]),
        "isPriceOverridden": OOPBooleanAttribute.descriptions(["en":"Select whether the price per unit is fixed at the value in the specified price list or can be overridden by users who have edit rights to the quote product."]),
        "isProductOverridden": OOPBooleanAttribute.descriptions(["en":"Select whether the product exists in the Microsoft Dynamics 365 product catalog or is a write-in product specific to the quote."]),
        "lineItemNumber": OOPIntegerAttribute.descriptions(["en":"Type the line item number for the quote product to easily identify the product in the quote and make sure it's listed in the correct order."]),
        "manualDiscountAmount": OOPStringAttribute.descriptions(["en":"Type the manual discount amount for the quote product to deduct any negotiated or other savings from the product total on the quote."]),
        "manualDiscountAmountBase": OOPStringAttribute.descriptions(["en":"Value of the Manual Discount in base currency."]),
        "parentBundleId": OOPUUIDAttribute.descriptions(["en":"Choose the parent bundle associated with this product"]),
        "productAssociationId": OOPUUIDAttribute.descriptions(["en":"Unique identifier of the product line item association with bundle in the quote"]),
        "productTypeCode": OOPStringAttribute.descriptions(["en":"Product Type"]),
        "productTypeCode_display": OOPStringAttribute.descriptions(["en":""]),
        "pricePerUnit": OOPStringAttribute.descriptions(["en":"Type the price per unit of the quote product. The default is to the value in the price list specified on the quote for existing products."]),
        "pricePerUnitBase": OOPStringAttribute.descriptions(["en":"Value of the Price Per Unit in base currency."]),
        "pricingErrorCode": OOPStringAttribute.descriptions(["en":"Select the type of pricing error, such as a missing or invalid product, or missing quantity."]),
        "pricingErrorCode_display": OOPStringAttribute.descriptions(["en":""]),
        "productDescription": OOPStringAttribute.descriptions(["en":"Type a name or description to identify the type of write-in product included in the quote."]),
        "productName": OOPStringAttribute.descriptions(["en":"Calculated field that will be populated by name and description of the product."]),
        "productId": OOPUUIDAttribute.descriptions(["en":"Choose the product to include on the quote to link the product's pricing and other information to the quote."]),
        "quantity": OOPStringAttribute.descriptions(["en":"Type the amount or quantity of the product requested by the customer."]),
        "quoteId": OOPUUIDAttribute.descriptions(["en":"Unique identifier of the quote for the quote product."]),
        "quoteStateCode": OOPStringAttribute.descriptions(["en":"Status of the quote product."]),
        "quoteStateCode_display": OOPStringAttribute.descriptions(["en":""]),
        "requestDeliveryBy": OOPLinkAttribute("aplUser").descriptions(["en":"Enter the delivery date requested by the customer for the quote product."]),
        "salesRepId": OOPUUIDAttribute.descriptions(["en":"Choose the user responsible for the sale of the quote product."]),
        "shipToAddressId": OOPLinkAttribute("address").descriptions(["en":"Unique identifier of the shipping address."]),
        "shipToCity": OOPStringAttribute.descriptions(["en":"Type the city for the customer's shipping address."]),
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
        "tax": OOPStringAttribute.descriptions(["en":"Type the tax amount for the quote product."]),
        "taxBase": OOPStringAttribute.descriptions(["en":"Value of the Tax in base currency."]),
        "uoMId": OOPUUIDAttribute.descriptions(["en":"Choose the unit of measurement for the base unit quantity for this purchase, such as each or dozen."]),
        "volumeDiscountAmount": OOPStringAttribute.descriptions(["en":"Shows the discount amount per unit if a specified volume is purchased. Configure volume discounts in the Product Catalog in the Settings area."]),
        "volumeDiscountAmountBase": OOPStringAttribute.descriptions(["en":"Value of the Volume Discount in base currency."]),
        "willCall": OOPStringAttribute.descriptions(["en":"Select whether the quote product should be shipped to the specified address or held until the customer calls with further pick up or delivery instructions."]),
        "sequenceNumber": OOPIntegerAttribute.descriptions(["en":"Unique identifier of the data that maintains the sequence."]),
        "propertyConfigurationStatus": OOPStringAttribute.descriptions(["en":"Status of the property configuration."]),
        "propertyConfigurationStatus_display": OOPStringAttribute.descriptions(["en":""]),
        "quoteDetailName": OOPStringAttribute.descriptions(["en":"Quote Detail Name. Added for 1:n Referential relationship"]),
        "parentBundleIdRef": OOPStringAttribute.descriptions(["en":"Choose the parent bundle associated with this product"]),
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