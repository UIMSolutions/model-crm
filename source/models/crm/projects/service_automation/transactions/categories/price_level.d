module models.crm.projects.service_automation.transactions.categories.price_level;

@safe:
import uim.entities;

// List of prices by category on a price list.
class DCRMTransactionCategoryPriceLevel : DOOPEntity {
  mixin(OOPEntityThis!("CRMTransactionCategoryPriceLevel"));

  override void initialize() {
    super.initialize;

    this
      .attributes([
      "createdOnBehalfBy": OOPAttributeLink("aplUser").descriptions(["en":"Unique identifier of the delegate user who created the record."]),
      "modifiedOnBehalfBy": OOPAttributeLink("aplUser").descriptions(["en":"Unique identifier of the delegate user who modified the record."]),
      "organizationId": OOPAttributeLink("aplOrganization").descriptions(["en":"Unique identifier for the organization"]),
      "stateCode": OOPStringAttribute.descriptions(["en":"Status of the Transaction Category Price"]),
      "stateCode_display": OOPStringAttribute.descriptions(["en":""]),
      "statusCode": OOPStringAttribute.descriptions(["en":"Reason for the status of the Transaction Category Price"]),
      "statusCode_display": OOPStringAttribute.descriptions(["en":""]),
      "importSequenceNumber": OOPAttributeNumber.descriptions(["en":"Sequence number of the import that created this record."]),
      "overriddenCreatedOn": OOPAttributeTimestamp.descriptions(["en":"Date and time that the record was migrated."]),
      "timeZoneRuleVersionNumber": OOPAttributeNumber.descriptions(["en":"For internal use only."]),
      "utcConversionTimeZoneCode": OOPStringAttribute.descriptions(["en":"Time zone code that was in use when the record was created."]),
      "percent": OOPStringAttribute.descriptions(["en":"Enter the mark up on cost when creating billable transactions from cost transactions. This field is relevant only when the price calculation is 'Markup over cost.'"]),
      "price": OOPStringAttribute.descriptions(["en":"Enter the price of the transaction category."]),
      "transactionCurrencyId": OOPAttributeLink("aplCurrency").descriptions(["en":"Shows the currency associated with the entity."]),
      "exchangeRate": OOPStringAttribute.descriptions(["en":"Exchange rate for the currency associated with the entity with respect to the base currency."]),
      "priceBase": OOPStringAttribute.descriptions(["en":"Value of the Price in base currency."]),
      "priceCalculation": OOPStringAttribute.descriptions(["en":"Select the method used to determine the sales or bill rate of expenses in this category. Valid values are Price per unit, At cost or Markup over cost."]),
      "priceCalculation_display": OOPStringAttribute.descriptions(["en":""]),
      "priceList": OOPStringAttribute.descriptions(["en":"Select the price list that this price list line belongs to."]),
      "transactionCategory": OOPStringAttribute.descriptions(["en":"Select the transaction category whose price is being setup"]),
      "unit": OOPStringAttribute.descriptions(["en":"Select the units that transactions of this category can be expressed in."]),
      "unitSchedule": OOPStringAttribute.descriptions(["en":"Select the unit schedule that determines in which units the category can be priced."]),
      ])
      .registerPath("crm_transactioncategorypricelevels");
  }
}
mixin(OOPEntityCalls!("CRMTransactionCategoryPriceLevel"));

unittest {
  version(uim_entities) {
    assert(CRMTransactionCategoryPriceLevel);

  auto entity = CRMTransactionCategoryPriceLevel;
  // auto repository = OOPFileRepository("./tests");
/* /*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */ 
  }
}