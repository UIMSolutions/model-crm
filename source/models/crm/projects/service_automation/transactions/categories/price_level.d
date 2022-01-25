module models.crm.projects.service_automation.transactions.categories.price_level;

@safe:
import uim.entities;

// List of prices by category on a price list.
class DAPLTransactionCategoryPriceLevel : DOOPEntity {
  this() { super();
    this.attributes([
      "createdOnBehalfBy": OOPAttributeLink("aplUser").descriptions(["en":"Unique identifier of the delegate user who created the record."]),
      "modifiedOnBehalfBy": OOPAttributeLink("aplUser").descriptions(["en":"Unique identifier of the delegate user who modified the record."]),
      "organizationId": OOPAttributeLink("aplOrganization").descriptions(["en":"Unique identifier for the organization"]),
      "stateCode": OOPAttributeString.descriptions(["en":"Status of the Transaction Category Price"]),
      "stateCode_display": OOPAttributeString.descriptions(["en":""]),
      "statusCode": OOPAttributeString.descriptions(["en":"Reason for the status of the Transaction Category Price"]),
      "statusCode_display": OOPAttributeString.descriptions(["en":""]),
      "importSequenceNumber": OOPAttributeNumber.descriptions(["en":"Sequence number of the import that created this record."]),
      "overriddenCreatedOn": OOPAttributeTimestamp.descriptions(["en":"Date and time that the record was migrated."]),
      "timeZoneRuleVersionNumber": OOPAttributeNumber.descriptions(["en":"For internal use only."]),
      "utcConversionTimeZoneCode": OOPAttributeString.descriptions(["en":"Time zone code that was in use when the record was created."]),
      "percent": OOPAttributeString.descriptions(["en":"Enter the mark up on cost when creating billable transactions from cost transactions. This field is relevant only when the price calculation is 'Markup over cost.'"]),
      "price": OOPAttributeString.descriptions(["en":"Enter the price of the transaction category."]),
      "transactionCurrencyId": OOPAttributeLink("aplCurrency").descriptions(["en":"Shows the currency associated with the entity."]),
      "exchangeRate": OOPAttributeString.descriptions(["en":"Exchange rate for the currency associated with the entity with respect to the base currency."]),
      "priceBase": OOPAttributeString.descriptions(["en":"Value of the Price in base currency."]),
      "priceCalculation": OOPAttributeString.descriptions(["en":"Select the method used to determine the sales or bill rate of expenses in this category. Valid values are Price per unit, At cost or Markup over cost."]),
      "priceCalculation_display": OOPAttributeString.descriptions(["en":""]),
      "priceList": OOPAttributeString.descriptions(["en":"Select the price list that this price list line belongs to."]),
      "transactionCategory": OOPAttributeString.descriptions(["en":"Select the transaction category whose price is being setup"]),
      "unit": OOPAttributeString.descriptions(["en":"Select the units that transactions of this category can be expressed in."]),
      "unitSchedule": OOPAttributeString.descriptions(["en":"Select the unit schedule that determines in which units the category can be priced."]),
    ]);
  }

  override string entityClass() { return "aplTransactionCategoryPriceLevel"; }
  override string entityClasses() { return "aplTransactionCategoryPriceLevels"; }

  this(UUID myId) { 
    this(); this.id(myId); }
  this(string myName) { 
    this(); this.name(myName); }
  this(UUID myId, string myName) { 
    this(); this.id(myId).name(myName); }
  this(Json aJson) { 
    this(); this.fromJson(aJson); }
    
  // mixin(GetEntity!("organization", "organizationId", "APLOrganization"));
}
auto APLTransactionCategoryPriceLevel() { return new DAPLTransactionCategoryPriceLevel; } 
auto APLTransactionCategoryPriceLevel(Json json) { return new DAPLTransactionCategoryPriceLevel(json); } 

unittest {
  version(uim_entities) {
    assert(APLTransactionCategoryPriceLevel);

  auto entity = APLTransactionCategoryPriceLevel;
  // auto repository = OOPFileRepository("./tests");
/* /*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */ 
  }
}