module models.crm.sales.discounts.discount;

@safe:
import uim.entities;

// Price reduction made from the list price of a product or service based on the quantity purchased.
class DCRMDiscount : DOOPEntity {
  mixin(EntityThis!("CRMDiscount"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "discountId": StringAttributeClass, // nique identifier of the discount."]),
        "createdOnBehalfBy": StringAttributeClass, // nique identifier of the delegate user who created the discount."]),
        "modifiedOnBehalfBy": StringAttributeClass, // nique identifier of the delegate user who last modified the discount."]),
        "importSequenceNumber": OOPIntegerAttribute.descriptions(["en":"equence number of the import that created this record."]),
        "overriddenCreatedOn": StringAttributeClass, // ate and time that the record was migrated."]),
        "timeZoneRuleVersionNumber": OOPIntegerAttribute.descriptions(["en":"or internal use only."]),
        "utcConversionTimeZoneCode": StringAttributeClass, // ime zone code that was in use when the record was created."]),
        "amount": StringAttributeClass, // mount of the discount, specified either as a percentage or as a monetary amount."]),
        "transactionCurrencyId": StringAttributeClass, // hoose the local currency for the record to make sure budgets are reported in the correct currency."]),
        "exchangeRate": StringAttributeClass, // hows the conversion rate of the record's currency. The exchange rate is used to convert all money fields in the record from the local currency to the system's default currency."]),
        "amountBase": StringAttributeClass, // alue of the Amount in base currency."]),
        "discountTypeId": StringAttributeClass, // nique identifier of the discount list associated with the discount."]),
        "highQuantity": StringAttributeClass, // pper boundary for the quantity range to which a particular discount can be applied."]),
        "isAmountType": BooleanAttributeClass, // pecifies whether the discount is specified as a monetary amount or a percentage."]),
        "lowQuantity": StringAttributeClass, // ower boundary for the quantity range to which a particular discount is applied."]),
        "organizationId": StringAttributeClass, // nique identifier of the organization associated with the discount."]),
        "percentage": OOPPercentageAttribute.descriptions(["en":"ercentage discount value."]),
        "statusCode": StringAttributeClass, // elect the discount's status."]),
        "statusCode_display": StringAttributeClass, //
      ])
      .registerPath("crm_discounts");
  }
}
mixin(EntityCalls!("CRMDiscount"));

unittest {
  version(test_model_crm) {
    assert(CRMDiscount);
  
  auto entity = CRMDiscount;
  // auto repository = OOPFileRepository("./tests");
/* /*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */ 
  }
}