module models.crm.services.contracts.line;

@safe:
import uim.entities;

// Line item in a contract that specifies the type of service a customer is entitled to.
class DAPLContractLine : DOOPEntity {
  this() { super();
    this.attributes([
      "createdOnBehalfBy": OOPAttributeString.descriptions(["en":"Shows who created the record on behalf of another user."]),
      "modifiedOnBehalfBy": OOPAttributeString.descriptions(["en":"Shows who last updated the record on behalf of another user."]),
      "overriddenCreatedOn": OOPAttributeString.descriptions(["en":"Date and time that the record was migrated."]),
      "importSequenceNumber": OOPAttributeNumber.descriptions(["en":"Sequence number of the import that created this record."]),
      "ownerId": OOPAttributeUUID.descriptions(["en":"Owner Id"]),
      "ownerIdType": OOPAttributeString.descriptions(["en":"The type of owner, either User or Team."]),
      "owningBusinessUnitId": OOPAttributeLink("aplBusinessUnit").descriptions(["en":"Unique identifier for the business unit that owns the record"]),
      "owningUserId": OOPAttributeString.descriptions(["en":"Unique identifier of the user that owns the activity."]),
      "owningTeamId": OOPAttributeString.descriptions(["en":"Unique identifier for the team that owns the record."]),
      "timeZoneRuleVersionNumber": OOPAttributeNumber.descriptions(["en":"For internal use only."]),
      "utcConversionTimeZoneCode": OOPAttributeString.descriptions(["en":"Time zone code that was in use when the record was created."]),
      "versionNumber": OOPAttributeNumber.descriptions(["en":"Version Number"]),
      "contractDetailId": OOPAttributeUUID.descriptions(["en":"Unique identifier of the contract line."]),
      "title": OOPAttributeString.descriptions(["en":"Type a title or name that describes the contract line."]),
      "activeOn": OOPAttributeString.descriptions(["en":"Enter the date when the contract line becomes active."]),
      "allotmentsOverage": OOPAttributeString.descriptions(["en":"Shows the number of minutes over the Total Allotments field that have been spent on resolved cases related to the contract line."]),
      "allotmentsRemaining": OOPAttributeString.descriptions(["en":"Shows the number of cases or minutes remaining, based on the resolved cases logged to the contract line."]),
      "allotmentsUsed": OOPAttributeString.descriptions(["en":"Shows the number of cases or minutes used in the resolved cases on the contract line."]),
      "contractId": OOPAttributeUUID.descriptions(["en":"Unique identifier of the contract associated with the contract line."]),
      "contractStateCode": OOPAttributeString.descriptions(["en":"Status of the contract."]),
      "contractStateCode_display": OOPAttributeString.descriptions(["en":""]),
      "customerId": OOPAttributeUUID.descriptions(["en":"The customer account or contact to provide a quick link to additional customer details, such as account information, activities, and opportunities."]),
      "customerIdType": OOPAttributeString.descriptions(["en":"The type of customer, either Account or Contact."]),
      "discount": OOPAttributeString.descriptions(["en":"Type the discount amount for the contract line to deduct any negotiated or other savings from the net amount due."]),
      "transactionCurrencyId": OOPAttributeLink("aplCurrency").descriptions(["en":"Choose the local currency for the record to make sure budgets are reported in the correct currency."]),
      "exchangeRate": OOPAttributeString.descriptions(["en":"Shows the conversion rate of the record's currency. The exchange rate is used to convert all money fields in the record from the local currency to the system's default currency."]),
      "discountBase": OOPAttributeString.descriptions(["en":"Value of the Discount in base currency."]),
      "discountPercentage": OOPAttributePercentage.descriptions(["en":"Type the discount rate that should be applied to the Total Price, for use in calculating the net amount due for the contract line."]),
      "effectivityCalendar": OOPAttributeString.descriptions(["en":"Days of the week and times for which the contract line item is effective."]),
      "expiresOn": OOPAttributeString.descriptions(["en":"Enter the date when the contract line expires. The date is automatically filled with the contract date, but you can change it if required."]),
      "initialQuantity": OOPAttributeString.descriptions(["en":"Type the number of units of the specified product or service that are eligible for support on the contract line."]),
      "lineItemOrder": OOPAttributeString.descriptions(["en":"Type the line item number for the contract line to easily identify the contract line and make sure it's listed in the correct order in the parent contract."]),
      "net": OOPAttributeString.descriptions(["en":"Shows the total charge to the customer for the contract line, calculated as the Total Price minus any discounts."]),
      "netBase": OOPAttributeString.descriptions(["en":"Value of the Net in base currency."]),
      "price": OOPAttributeString.descriptions(["en":"Type the total service charge for the contract line before any discounts are credited."]),
      "priceBase": OOPAttributeString.descriptions(["en":"Value of the Total Price in base currency."]),
      "productId": OOPAttributeUUID.descriptions(["en":"Choose the product that is eligible for services on the contract line."]),
      "productSerialNumber": OOPAttributeNumber.descriptions(["en":"Type the serial number for the product that is eligible for services on the contract line."]),
      "rate": OOPAttributeString.descriptions(["en":"Shows the cost per case or minute, calculated by dividing the Total Price value by the total number of cases or minutes allocated to the contract line."]),
      "rateBase": OOPAttributeString.descriptions(["en":"Value of the Rate in base currency."]),
      "serviceAddress": OOPAttributeString.descriptions(["en":"Choose the address for the customer account or contact where the services are provided."]),
      "serviceContractUnitsCode": OOPAttributeString.descriptions(["en":"Select the unit type allotted in the contract line, such as cases or minutes, to determine the level of support."]),
      "serviceContractUnitsCode_display": OOPAttributeString.descriptions(["en":""]),
      "stateCode": OOPAttributeString.descriptions(["en":"Shows whether the contract line is existing, renewed, canceled, or expired. You can't edit a contract line after it is saved, regardless of the status."]),
      "stateCode_display": OOPAttributeString.descriptions(["en":""]),
      "statusCode": OOPAttributeString.descriptions(["en":"Select the contract line's status."]),
      "statusCode_display": OOPAttributeString.descriptions(["en":""]),
      "totalAllotments": OOPAttributeString.descriptions(["en":"Type the total number of minutes or cases allowed for the contract line."]),
      "uoMId": OOPAttributeUUID.descriptions(["en":"Choose the unit of measurement for the base unit quantity for this purchase, such as each or dozen."]),
      "uoMScheduleId": OOPAttributeUUID.descriptions(["en":"Unique identifier of the unit group associated with the contract line."]),
      "accountId": OOPAttributeLink("aplAccount").descriptions(["en":"Unique identifier of the account with which the contract is associated."]),
      "contactId": OOPAttributeLink("aplContact").descriptions(["en":"Unique identifier for the contact associated with the contract line."]),
    ]);
  }

  this(UUID myId) { 
    this(); this.id(myId); }
  this(string myName) { 
    this(); this.name(myName); }
  this(UUID myId, string myName) { 
    this(); this.id(myId).name(myName); }
  this(Json aJson) { 
    this(); this.fromJson(aJson); }

  override string entityClass() { return "aplContractLine"; }
  override string entityClasses() { return "aplContractLines"; }

  // mixin(GetEntity!("account", "accountId", "APLAccount"));
  // mixin(GetEntity!("contact", "contactId", "APLContact"));
}
auto APLContractLine() { return new DAPLContractLine; } 
auto APLContractLine(Json json) { return new DAPLContractLine(json); } 

unittest {
  version(uim_entities) {
    assert(APLContractLine);
  
  auto entity = APLContractLine;
  // auto repository = OOPFileRepository("./tests");
/* /*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */ 
  }
}