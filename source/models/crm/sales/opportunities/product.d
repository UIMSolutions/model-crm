module models.crm.sales.opportunities.product;

@safe:
import uim.entities;

// Association between an opportunity and a product.
class DAPLOpportunityProduct : DOOPEntity {
  this() { super();
    this.attributes([
      "createdOnBehalfBy": OOPAttributeLink("aplUser").descriptions(["en":"Shows who created the record on behalf of another user."]),
      "modifiedOnBehalfBy": OOPAttributeLink("aplUser").descriptions(["en":"Shows who last updated the record on behalf of another user."]),
      "overriddenCreatedOn": OOPAttributeTimestamp.descriptions(["en":"Date and time that the record was migrated."]),
      "importSequenceNumber": OOPAttributeNumber.descriptions(["en":"Sequence number of the import that created this record."]),
      "owner": OOPAttributeUUID.descriptions(["en":"Owner Id"]),
      "ownerIdType": OOPAttributeString.descriptions(["en":"The type of owner, either User or Team."]),
      "owningBusinessUnitId": OOPAttributeLink("aplBusinessUnit").descriptions(["en":"Unique identifier for the business unit that owns the record"]),
      "owningUserId": OOPAttributeLink("aplUser").descriptions(["en":"Unique identifier of the user that owns the activity."]),
      "owningTeamId": OOPAttributeLink("aplTeam").descriptions(["en":"Unique identifier for the team that owns the record."]),
      "timeZoneRuleVersionNumber": OOPAttributeNumber.descriptions(["en":"For internal use only."]),
      "utcConversionTimeZoneCode": OOPAttributeString.descriptions(["en":"Time zone code that was in use when the record was created."]),
      "opportunityProduct": OOPAttributeUUID.descriptions(["en":"Unique identifier of the opportunity product."]),
      "baseAmount": OOPAttributeString.descriptions(["en":"Shows the total price of the opportunity product, based on the price per unit, volume discount, and quantity."]),
      "transactionCurrency": OOPAttributeUUID.descriptions(["en":"Choose the local currency for the record to make sure budgets are reported in the correct currency."]),
      "exchangeRate": OOPAttributeString.descriptions(["en":"Shows the conversion rate of the record's currency. The exchange rate is used to convert all money fields in the record from the local currency to the system's default currency."]),
      "baseAmountBase": OOPAttributeString.descriptions(["en":"Value of the Amount in base currency."]),
      "extendedAmount": OOPAttributeString.descriptions(["en":"Shows the total amount due for the opportunity product, calculated on the Amount value minus the Manual Discount amount."]),
      "extendedAmountBase": OOPAttributeString.descriptions(["en":"Value of the Extended Amount in base currency."]),
      "isPriceOverridden": OOPAttributeBoolean.descriptions(["en":"Select whether the pricing on the opportunity product reflects an override of the product catalog pricing."]),
      "isProductOverridden": OOPAttributeBoolean.descriptions(["en":"For system use only."]),
      "lineItemNumber": OOPAttributeNumber.descriptions(["en":"Type the line item number for the opportunity product to easily identify the product in the opportunity documents and make sure it's listed in the correct order."]),
      "manualDiscountAmount": OOPAttributeString.descriptions(["en":"Type the manual discount amount for the opportunity product to deduct any negotiated or other savings from the product total."]),
      "manualDiscountAmountBase": OOPAttributeString.descriptions(["en":"Value of the Manual Discount Amount in base currency."]),
      "opportunity": OOPAttributeUUID.descriptions(["en":"Unique identifier of the opportunity with which the opportunity product is associated."]),
      "opportunityStateCode": OOPAttributeString.descriptions(["en":"Select the status of the opportunity product."]),
      "opportunityStateCode_display": OOPAttributeString.descriptions(["en":""]),
      "parentBundle": OOPAttributeUUID.descriptions(["en":"Choose the parent bundle associated with this product"]),
      "productAssociation": OOPAttributeUUID.descriptions(["en":"Unique identifier of the product line item association with bundle in the opportunity"]),
      "productTypeCode": OOPAttributeString.descriptions(["en":"Product Type"]),
      "productTypeCode_display": OOPAttributeString.descriptions(["en":""]),
      "pricePerUnit": OOPAttributeString.descriptions(["en":"Shows the price per unit of the opportunity product, based on the price list specified on the parent opportunity."]),
      "pricePerUnitBase": OOPAttributeString.descriptions(["en":"Value of the Price Per Unit in base currency."]),
      "pricingErrorCode": OOPAttributeString.descriptions(["en":"Select the pricing error for the opportunity product."]),
      "pricingErrorCode_display": OOPAttributeString.descriptions(["en":""]),
      "productDescription": OOPAttributeString.descriptions(["en":"Type a detailed product description or additional notes about the opportunity product, such as talking points or product updates, that will assist the sales team when they discuss the product with the customer."]),
      "productName": OOPAttributeString.descriptions(["en":"Calculated field that will be populated by name and description of the product."]),
      "product": OOPAttributeUUID.descriptions(["en":"Choose the product to include on the opportunity to link the product's pricing and other information to the opportunity."]),
      "quantity": OOPAttributeString.descriptions(["en":"Type the amount or quantity of the product the customer would like to purchase."]),
      "tax": OOPAttributeString.descriptions(["en":"Type the tax amount to be applied on the opportunity product."]),
      "taxBase": OOPAttributeString.descriptions(["en":"Value of the Tax in base currency."]),
      "uoM": OOPAttributeUUID.descriptions(["en":"Choose the unit of measurement for the base unit quantity for this purchase, such as each or dozen."]),
      "volumeDiscountAmount": OOPAttributeString.descriptions(["en":"Shows the discount amount per unit if a specified volume is purchased. Configure volume discounts in the Product Catalog in the Settings area."]),
      "volumeDiscountAmountBase": OOPAttributeString.descriptions(["en":"Value of the Volume Discount in base currency."]),
      "sequenceNumber": OOPAttributeNumber.descriptions(["en":"Shows the ID of the data that maintains the sequence."]),
      "propertyConfigurationStatus": OOPAttributeString.descriptions(["en":"Status of the property configuration."]),
      "propertyConfigurationStatus_display": OOPAttributeString.descriptions(["en":""]),
      "entityImage": OOPAttributeUUID.descriptions(["en":""]),
      "opportunityProductName": OOPAttributeString.descriptions(["en":"Opportunity Product Name. Added for 1:n Referential relationship"]),
      "parentBundleIdRef": OOPAttributeString.descriptions(["en":"Choose the parent bundle associated with this product"]),
    ]);
  }

  override string entityClass() { return "aplOpportunityProduct"; }
  override string entityClasses() { return "aplOpportunityProducts"; }

  this(UUID myId) { 
    this(); this.id(myId); }
  this(string myName) { 
    this(); this.name(myName); }
  this(UUID myId, string myName) { 
    this(); this.id(myId).name(myName); }
  this(Json aJson) { 
    this(); this.fromJson(aJson); }
}
auto APLOpportunityProduct() { return new DAPLOpportunityProduct; } 
auto APLOpportunityProduct(Json json) { return new DAPLOpportunityProduct(json); } 

unittest {
  version(uim_entities) {
    assert(APLOpportunityProduct);
  
  auto entity = APLOpportunityProduct;
  // auto repository = OOPFileRepository("./tests");
/* /*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */ 
  }
}