module models.crm.sales.discounts.discount;

@safe:
import uim.entities;

// Price reduction made from the list price of a product or service based on the quantity purchased.
class DCRMDiscount : DOOPEntity {
  mixin(OOPEntityThis!("CRMDiscount"));

  override void initialize() {
    super.initialize;

    this
      .attributes([
        "discountId": OOPStringAttribute.descriptions(["en":"nique identifier of the discount."]),
        "createdOnBehalfBy": OOPStringAttribute.descriptions(["en":"nique identifier of the delegate user who created the discount."]),
        "modifiedOnBehalfBy": OOPStringAttribute.descriptions(["en":"nique identifier of the delegate user who last modified the discount."]),
        "importSequenceNumber": OOPAttributeNumber.descriptions(["en":"equence number of the import that created this record."]),
        "overriddenCreatedOn": OOPStringAttribute.descriptions(["en":"ate and time that the record was migrated."]),
        "timeZoneRuleVersionNumber": OOPAttributeNumber.descriptions(["en":"or internal use only."]),
        "utcConversionTimeZoneCode": OOPStringAttribute.descriptions(["en":"ime zone code that was in use when the record was created."]),
        "amount": OOPStringAttribute.descriptions(["en":"mount of the discount, specified either as a percentage or as a monetary amount."]),
        "transactionCurrencyId": OOPStringAttribute.descriptions(["en":"hoose the local currency for the record to make sure budgets are reported in the correct currency."]),
        "exchangeRate": OOPStringAttribute.descriptions(["en":"hows the conversion rate of the record's currency. The exchange rate is used to convert all money fields in the record from the local currency to the system's default currency."]),
        "amountBase": OOPStringAttribute.descriptions(["en":"alue of the Amount in base currency."]),
        "discountTypeId": OOPStringAttribute.descriptions(["en":"nique identifier of the discount list associated with the discount."]),
        "highQuantity": OOPStringAttribute.descriptions(["en":"pper boundary for the quantity range to which a particular discount can be applied."]),
        "isAmountType": OOPAttributeBoolean.descriptions(["en":"pecifies whether the discount is specified as a monetary amount or a percentage."]),
        "lowQuantity": OOPStringAttribute.descriptions(["en":"ower boundary for the quantity range to which a particular discount is applied."]),
        "organizationId": OOPStringAttribute.descriptions(["en":"nique identifier of the organization associated with the discount."]),
        "percentage": OOPAttributePercentage.descriptions(["en":"ercentage discount value."]),
        "statusCode": OOPStringAttribute.descriptions(["en":"elect the discount's status."]),
        "statusCode_display": OOPStringAttribute.descriptions(["en":""]),
      ])
      .registerPath("crm_discounts");
  }
}
mixin(OOPEntityCalls!("CRMDiscount"));

unittest {
  version(uim_entities) {
    assert(CRMDiscount);
  
  auto entity = CRMDiscount;
  // auto repository = OOPFileRepository("./tests");
/* /*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */ 
  }
}