module models.crm.projects.service_automation.transactions.categories.price_level;

@safe:
import uim.entities;

// List of prices by category on a price list.
class DCRMTransactionCategoryPriceLevelEntity : DEntity {
  mixin(EntityThis!("CRMTransactionCategoryPriceLevelEntity"));

  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([
      "createdOnBehalfBy": UUIDAttribute, //Unique identifier of the delegate user who created the record."]),
      "modifiedOnBehalfBy": UUIDAttribute, //Unique identifier of the delegate user who modified the record."]),
      "organizationId": UUIDAttribute, // Unique identifier for the organization"]),
      "stateCode": StringAttribute, // Status of the Transaction Category Price"]),
      "stateCode_display": StringAttribute, //
      "statusCode": StringAttribute, // Reason for the status of the Transaction Category Price"]),
      "statusCode_display": StringAttribute, //
      "importSequenceNumber": IntegerAttribute, //Sequence number of the import that created this record."]),
      "overriddenCreatedOn": TimestampAttribute, //Date and time that the record was migrated."]),
      "timeZoneRuleVersionNumber": IntegerAttribute, //For internal use only."]),
      "utcConversionTimeZoneCode": StringAttribute, // Time zone code that was in use when the record was created."]),
      "percent": StringAttribute, // Enter the mark up on cost when creating billable transactions from cost transactions. This field is relevant only when the price calculation is 'Markup over cost.'"]),
      "price": StringAttribute, // Enter the price of the transaction category."]),
      "transactionCurrencyId": CurrencyIdAttribute, // Shows the currency associated with the entity."]),
      "exchangeRate": StringAttribute, // Exchange rate for the currency associated with the entity with respect to the base currency."]),
      "priceBase": StringAttribute, // Value of the Price in base currency."]),
      "priceCalculation": StringAttribute, // Select the method used to determine the sales or bill rate of expenses in this category. Valid values are Price per unit, At cost or Markup over cost."]),
      "priceCalculation_display": StringAttribute, //
      "priceList": StringAttribute, // Select the price list that this price list line belongs to."]),
      "transactionCategory": StringAttribute, // Select the transaction category whose price is being setup"]),
      "unit": StringAttribute, // Select the units that transactions of this category can be expressed in."]),
      "unitSchedule": StringAttribute, // Select the unit schedule that determines in which units the category can be priced."]),
      ])
      .registerPath("crm_transactioncategorypricelevels");
  }
}
mixin(EntityCalls!("CRMTransactionCategoryPriceLevelEntity"));

unittest {
  version(test_model_crm) {
    assert(CRMTransactionCategoryPriceLevelEntity);

  auto entity = CRMTransactionCategoryPriceLevelEntity;
  // auto repository = OOPFileRepository("./tests");
/* /*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */ 
  }
}