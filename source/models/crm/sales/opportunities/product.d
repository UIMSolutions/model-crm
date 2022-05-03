module models.crm.sales.opportunities.product;

@safe:
import uim.entities;

// Association between an opportunity and a product.
class DCRMOpportunityProduct : DOOPEntity {
  mixin(EntityThis!("CRMOpportunityProduct"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "createdOnBehalfBy": OOPLinkAttribute("aplUser").descriptions(["en":"Shows who created the record on behalf of another user."]),
        "modifiedOnBehalfBy": OOPLinkAttribute("aplUser").descriptions(["en":"Shows who last updated the record on behalf of another user."]),
        "overriddenCreatedOn": OOPTimestampAttribute.descriptions(["en":"Date and time that the record was migrated."]),
        "importSequenceNumber": OOPIntegerAttribute.descriptions(["en":"Sequence number of the import that created this record."]),
        "owner": UUIDAttributeClass, // Owner Id"]),
        "ownerIdType": StringAttributeClass, // The type of owner, either User or Team."]),
        "owningBusinessUnitId": OOPLinkAttribute("aplBusinessUnit").descriptions(["en":"Unique identifier for the business unit that owns the record"]),
        "owningUserId": OOPLinkAttribute("aplUser").descriptions(["en":"Unique identifier of the user that owns the activity."]),
        "owningTeamId": OOPLinkAttribute("aplTeam").descriptions(["en":"Unique identifier for the team that owns the record."]),
        "timeZoneRuleVersionNumber": OOPIntegerAttribute.descriptions(["en":"For internal use only."]),
        "utcConversionTimeZoneCode": StringAttributeClass, // Time zone code that was in use when the record was created."]),
        "opportunityProduct": UUIDAttributeClass, // Unique identifier of the opportunity product."]),
        "baseAmount": StringAttributeClass, // Shows the total price of the opportunity product, based on the price per unit, volume discount, and quantity."]),
        "transactionCurrency": UUIDAttributeClass, // Choose the local currency for the record to make sure budgets are reported in the correct currency."]),
        "exchangeRate": StringAttributeClass, // Shows the conversion rate of the record's currency. The exchange rate is used to convert all money fields in the record from the local currency to the system's default currency."]),
        "baseAmountBase": StringAttributeClass, // Value of the Amount in base currency."]),
        "extendedAmount": StringAttributeClass, // Shows the total amount due for the opportunity product, calculated on the Amount value minus the Manual Discount amount."]),
        "extendedAmountBase": StringAttributeClass, // Value of the Extended Amount in base currency."]),
        "isPriceOverridden": BooleanAttributeClass, // Select whether the pricing on the opportunity product reflects an override of the product catalog pricing."]),
        "isProductOverridden": BooleanAttributeClass, // For system use only."]),
        "lineItemNumber": OOPIntegerAttribute.descriptions(["en":"Type the line item number for the opportunity product to easily identify the product in the opportunity documents and make sure it's listed in the correct order."]),
        "manualDiscountAmount": StringAttributeClass, // Type the manual discount amount for the opportunity product to deduct any negotiated or other savings from the product total."]),
        "manualDiscountAmountBase": StringAttributeClass, // Value of the Manual Discount Amount in base currency."]),
        "opportunity": UUIDAttributeClass, // Unique identifier of the opportunity with which the opportunity product is associated."]),
        "opportunityStateCode": StringAttributeClass, // Select the status of the opportunity product."]),
        "opportunityStateCode_display": StringAttributeClass, //
        "parentBundle": UUIDAttributeClass, // Choose the parent bundle associated with this product"]),
        "productAssociation": UUIDAttributeClass, // Unique identifier of the product line item association with bundle in the opportunity"]),
        "productTypeCode": StringAttributeClass, // Product Type"]),
        "productTypeCode_display": StringAttributeClass, //
        "pricePerUnit": StringAttributeClass, // Shows the price per unit of the opportunity product, based on the price list specified on the parent opportunity."]),
        "pricePerUnitBase": StringAttributeClass, // Value of the Price Per Unit in base currency."]),
        "pricingErrorCode": StringAttributeClass, // Select the pricing error for the opportunity product."]),
        "pricingErrorCode_display": StringAttributeClass, //
        "productDescription": StringAttributeClass, // Type a detailed product description or additional notes about the opportunity product, such as talking points or product updates, that will assist the sales team when they discuss the product with the customer."]),
        "productName": StringAttributeClass, // Calculated field that will be populated by name and description of the product."]),
        "product": UUIDAttributeClass, // Choose the product to include on the opportunity to link the product's pricing and other information to the opportunity."]),
        "quantity": StringAttributeClass, // Type the amount or quantity of the product the customer would like to purchase."]),
        "tax": StringAttributeClass, // Type the tax amount to be applied on the opportunity product."]),
        "taxBase": StringAttributeClass, // Value of the Tax in base currency."]),
        "uoM": UUIDAttributeClass, // Choose the unit of measurement for the base unit quantity for this purchase, such as each or dozen."]),
        "volumeDiscountAmount": StringAttributeClass, // Shows the discount amount per unit if a specified volume is purchased. Configure volume discounts in the Product Catalog in the Settings area."]),
        "volumeDiscountAmountBase": StringAttributeClass, // Value of the Volume Discount in base currency."]),
        "sequenceNumber": OOPIntegerAttribute.descriptions(["en":"Shows the ID of the data that maintains the sequence."]),
        "propertyConfigurationStatus": StringAttributeClass, // Status of the property configuration."]),
        "propertyConfigurationStatus_display": StringAttributeClass, //
        "entityImage": UUIDAttributeClass, //
        "opportunityProductName": StringAttributeClass, // Opportunity Product Name. Added for 1:n Referential relationship"]),
        "parentBundleIdRef": StringAttributeClass, // Choose the parent bundle associated with this product"]),
      ])
      .registerPath("crm_opportunityproducts");
  }
}
mixin(EntityCalls!("CRMOpportunityProduct"));

unittest {
  version(test_model_crm) {
    assert(CRMOpportunityProduct);
  
  auto entity = CRMOpportunityProduct;
  // auto repository = OOPFileRepository("./tests");
/* /*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */ 
  }
}