module models.crm.projects.service_automation.journals.line;

@safe:
import uim.entities;

// nposted business transaction line details.
class DAPLJournalLine : DOOPEntity {
  this() { super();
    this.attributes([
"createdOnBehalfBy": OOPAttributeLink("aplUser").descriptions(["en":"Shows who created the record on behalf of another user."]),
"modifiedOnBehalfBy": OOPAttributeLink("aplUser").descriptions(["en":"Shows who last updated the record on behalf of another user."]),
"overriddenCreatedOn": OOPAttributeTimestamp.descriptions(["en":"Date and time that the record was migrated."]),
"importSequenceNumber": OOPAttributeNumber.descriptions(["en":"Sequence number of the import that created this record."]),
"ownerId": OOPAttributeUUID.descriptions(["en":"Owner Id"]),
"ownerIdType": OOPAttributeString.descriptions(["en":"The type of owner, either User or Team."]),
"owningBusinessUnitId": OOPAttributeLink("aplBusinessUnit").descriptions(["en":"Unique identifier for the business unit that owns the record"]),
"owningUserId": OOPAttributeLink("aplUser").descriptions(["en":"Unique identifier for the user that owns the record."]),
"owningTeamId": OOPAttributeLink("aplTeam").descriptions(["en":"Unique identifier for the team that owns the record."]),
"timeZoneRuleVersionNumber": OOPAttributeNumber.descriptions(["en":"For internal use only."]),
"utcConversionTimeZoneCode": OOPAttributeString.descriptions(["en":"Time zone code that was in use when the record was created."]),
"journalLineId": OOPAttributeUUID.descriptions(["en":"Unique identifier for entity instances"]),
"stateCode": OOPAttributeString.descriptions(["en":"Status of the Journal Line"]),
"stateCode_display": OOPAttributeString.descriptions(["en":""]),
"statusCode": OOPAttributeString.descriptions(["en":"Reason for the status of the Journal Line"]),
"statusCode_display": OOPAttributeString.descriptions(["en":""]),
"accountCustomer": OOPAttributeString.descriptions(["en":"Shows the customer for the journal line."]),
"accountingDate": OOPAttributeDate.descriptions(["en":""]),
"accountVendor": OOPAttributeString.descriptions(["en":""]),
"amount": OOPAttributeString.descriptions(["en":"Shows the amount of the journal line."]),
"transactionCurrencyId": OOPAttributeLink("aplCurrency").descriptions(["en":"Shows the currency associated with the entity."]),
"exchangeRate": OOPAttributeString.descriptions(["en":"Exchange rate for the currency associated with the entity with respect to the base currency."]),
"amountBase": OOPAttributeString.descriptions(["en":"Value of the Amount in base currency."]),
"amountMethod": OOPAttributeString.descriptions(["en":"Select the calculation method for the amount."]),
"amountMethod_display": OOPAttributeString.descriptions(["en":""]),
"basisAmount": OOPAttributeString.descriptions(["en":"Enter the basis amount of the journal line."]),
"basisAmountBase": OOPAttributeString.descriptions(["en":"Value of the Basis Amount in base currency."]),
"basisPrice": OOPAttributeString.descriptions(["en":"Enter the basis price of the journal line."]),
"basisPriceBase": OOPAttributeString.descriptions(["en":"Value of the Basis Price in base currency."]),
"basisQuantity": OOPAttributeString.descriptions(["en":"Enter the basis quantity of the journal line."]),
"billingStatus": OOPAttributeString.descriptions(["en":""]),
"billingStatus_display": OOPAttributeString.descriptions(["en":""]),
"billingType": OOPAttributeString.descriptions(["en":"Select the billing type for the journal line."]),
"billingType_display": OOPAttributeString.descriptions(["en":""]),
"bookableResource": OOPAttributeString.descriptions(["en":"Shows the resource."]),
"contactCustomer": OOPAttributeString.descriptions(["en":""]),
"contactVendor": OOPAttributeString.descriptions(["en":""]),
"contractingUnit": OOPAttributeString.descriptions(["en":"Unique identifier for Organizational Unit associated with Journal Line."]),
"customerType": OOPAttributeString.descriptions(["en":"Shows the type of customer."]),
"customerType_display": OOPAttributeString.descriptions(["en":""]),
"documentDate": OOPAttributeDate.descriptions(["en":"Enter the transaction date of the journal line."]),
"endDateTime": OOPAttributeDatetime.descriptions(["en":"Enter the end date and time."]),
"exchangeRateDate": OOPAttributeDate.descriptions(["en":""]),
"externalDescription": OOPAttributeString.descriptions(["en":"The external description of the journal line."]),
"isPosted": OOPAttributeBoolean.descriptions(["en":"Shows whether the journal has been submitted."]),
"journal": OOPAttributeString.descriptions(["en":"Shows the name of the journal."]),
"percent": OOPAttributeString.descriptions(["en":"Enter the percent."]),
"price": OOPAttributeString.descriptions(["en":"Enter the price."]),
"priceBase": OOPAttributeString.descriptions(["en":"Value of the Price in base currency."]),
"priceList": OOPAttributeString.descriptions(["en":"Shows the price list used for the journal line."]),
"product": OOPAttributeString.descriptions(["en":"Select the product."]),
"project": OOPAttributeString.descriptions(["en":"Select the project."]),
"quantity": OOPAttributeString.descriptions(["en":"Enter the quantity."]),
"resourceCategory": OOPAttributeString.descriptions(["en":"Select the resource role."]),
"resourceOrganizationalUnitId": OOPAttributeUUID.descriptions(["en":"Organizational unit at the time the entry was registered of the resource who performed the work."]),
"salesContract": OOPAttributeString.descriptions(["en":"Shows the project contract."]),
"salesContractLine": OOPAttributeString.descriptions(["en":"Deprecated) Shows the project contract line."]),
"salesContractLineId": OOPAttributeUUID.descriptions(["en":"Unique identifier for Project Contract Line associated with Journal Line."]),
"startDateTime": OOPAttributeDatetime.descriptions(["en":"Enter the start date and time."]),
"task": OOPAttributeString.descriptions(["en":"Select the project task."]),
"transactionCategory": OOPAttributeString.descriptions(["en":"Select the transaction category."]),
"transactionClassification": OOPAttributeString.descriptions(["en":"Select the transaction class."]),
"transactionClassification_display": OOPAttributeString.descriptions(["en":""]),
"transactionTypeCode": OOPAttributeString.descriptions(["en":""]),
"transactionTypeCode_display": OOPAttributeString.descriptions(["en":""]),
"unit": OOPAttributeString.descriptions(["en":"Shows the unit of measurement."]),
"unitSchedule": OOPAttributeString.descriptions(["en":"Shows the unit schedule."]),
"vendorType": OOPAttributeString.descriptions(["en":""]),
"vendorType_display": OOPAttributeString.descriptions(["en":""]),
    ]);
  }

  override string entityClass() { return "aplJournalLine"; }
  override string entityClasses() { return "aplJournalLines"; }

  this(UUID myId) { 
    this(); this.id(myId); }
  this(string myName) { 
    this(); this.name(myName); }
  this(UUID myId, string myName) { 
    this(); this.id(myId).name(myName); }
  this(Json aJson) { 
    this(); this.fromJson(aJson); }
}
auto APLJournalLine() { return new DAPLJournalLine; } 
auto APLJournalLine(Json json) { return new DAPLJournalLine(json); } 

unittest {
  version(uim_entities) {
    assert(APLJournalLine);

  auto entity = APLJournalLine;
  // auto repository = OOPFileRepository("./tests");
/* /*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */ 
  }
}