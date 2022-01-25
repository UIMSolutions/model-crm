module models.crm.sales.discounts.discount;

@safe:
import uim.entities;

// Price reduction made from the list price of a product or service based on the quantity purchased.
class DAPLDiscount : DOOPEntity {
  this() { super();
    this.attributes([
      "discountId": OOPAttributeString.descriptions(["en":"nique identifier of the discount."]),
      "createdOnBehalfBy": OOPAttributeString.descriptions(["en":"nique identifier of the delegate user who created the discount."]),
      "modifiedOnBehalfBy": OOPAttributeString.descriptions(["en":"nique identifier of the delegate user who last modified the discount."]),
      "importSequenceNumber": OOPAttributeNumber.descriptions(["en":"equence number of the import that created this record."]),
      "overriddenCreatedOn": OOPAttributeString.descriptions(["en":"ate and time that the record was migrated."]),
      "timeZoneRuleVersionNumber": OOPAttributeNumber.descriptions(["en":"or internal use only."]),
      "utcConversionTimeZoneCode": OOPAttributeString.descriptions(["en":"ime zone code that was in use when the record was created."]),
      "amount": OOPAttributeString.descriptions(["en":"mount of the discount, specified either as a percentage or as a monetary amount."]),
      "transactionCurrencyId": OOPAttributeString.descriptions(["en":"hoose the local currency for the record to make sure budgets are reported in the correct currency."]),
      "exchangeRate": OOPAttributeString.descriptions(["en":"hows the conversion rate of the record's currency. The exchange rate is used to convert all money fields in the record from the local currency to the system's default currency."]),
      "amountBase": OOPAttributeString.descriptions(["en":"alue of the Amount in base currency."]),
      "discountTypeId": OOPAttributeString.descriptions(["en":"nique identifier of the discount list associated with the discount."]),
      "highQuantity": OOPAttributeString.descriptions(["en":"pper boundary for the quantity range to which a particular discount can be applied."]),
      "isAmountType": OOPAttributeBoolean.descriptions(["en":"pecifies whether the discount is specified as a monetary amount or a percentage."]),
      "lowQuantity": OOPAttributeString.descriptions(["en":"ower boundary for the quantity range to which a particular discount is applied."]),
      "organizationId": OOPAttributeString.descriptions(["en":"nique identifier of the organization associated with the discount."]),
      "percentage": OOPAttributePercentage.descriptions(["en":"ercentage discount value."]),
      "statusCode": OOPAttributeString.descriptions(["en":"elect the discount's status."]),
      "statusCode_display": OOPAttributeString.descriptions(["en":""]),
    ]);
  }

  override string entityClass() { return "aplDiscount"; }
  override string entityClasses() { return "aplDiscounts"; }

  this(UUID myId) { 
    this(); this.id(myId); }
  this(string myName) { 
    this(); this.name(myName); }
  this(UUID myId, string myName) { 
    this(); this.id(myId).name(myName); }
  this(Json aJson) { 
    this(); this.fromJson(aJson); }

}
auto APLDiscount() { return new DAPLDiscount; } 
auto APLDiscount(Json json) { return new DAPLDiscount(json); } 

unittest {
  version(uim_entities) {
    assert(APLDiscount);
  
  auto entity = APLDiscount;
  // auto repository = OOPFileRepository("./tests");
/* /*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */ 
  }
}