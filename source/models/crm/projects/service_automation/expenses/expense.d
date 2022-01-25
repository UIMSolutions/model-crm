module models.crm.projects.service_automation.expenses.expense;

@safe:
import uim.entities;

// Expense of a user in the hierarchy
class DAPLExpense : DOOPEntity {
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
      "expenseId": OOPAttributeUUID.descriptions(["en":"Shows the entity instances."]),
      "stateCode": OOPAttributeString.descriptions(["en":"Status of the Expense"]),
      "stateCode_display": OOPAttributeString.descriptions(["en":""]),
      "statusCode": OOPAttributeString.descriptions(["en":"Reason for the status of the Expense"]),
      "statusCode_display": OOPAttributeString.descriptions(["en":""]),
      "expensePurpose": OOPAttributeString.descriptions(["en":"Enter the expense's purpose."]),
      "processId": OOPAttributeUUID.descriptions(["en":"Contains the id of the process associated with the entity."]),
      "stageId": OOPAttributeUUID.descriptions(["en":"Contains the id of the stage where the entity is located."]),
      "traversedPath": OOPAttributeString.descriptions(["en":"A comma separated list of string values representing the unique identifiers of stages in a Business Process Flow Instance in the order that they occur."]),
      "amount": OOPAttributeString.descriptions(["en":"Enter the total amount for expense."]),
      "transactionCurrencyId": OOPAttributeLink("aplCurrency").descriptions(["en":"Shows the currency associated with the entity."]),
      "exchangeRate": OOPAttributeString.descriptions(["en":"Exchange rate for the currency associated with the entity with respect to the base currency."]),
      "amountBase": OOPAttributeString.descriptions(["en":"Value of the Amount in base currency."]),
      "bookableResource": OOPAttributeString.descriptions(["en":"Shows the bookable resource.."]),
      "expenseCategory": OOPAttributeString.descriptions(["en":"Enter the expense category."]),
      "expenseStatus": OOPAttributeString.descriptions(["en":"Shows the status of the expense entry."]),
      "expenseStatus_display": OOPAttributeString.descriptions(["en":""]),
      "externalComments": OOPAttributeString.descriptions(["en":"The external comments of the expense entry."]),
      "manager": OOPAttributeString.descriptions(["en":"Select the manager of the expense user. This field is used for approval."]),
      "project": OOPAttributeString.descriptions(["en":"Enter the project."]),
      "quantity": OOPAttributeString.descriptions(["en":"Enter the Quantity"]),
      "resourceOrganizationalUnitId": OOPAttributeUUID.descriptions(["en":"Select the organizational unit at the time the entry was registered of the resource who had the expense."]),
      "salesTaxAmount": OOPAttributeString.descriptions(["en":"Enter the sales tax amount."]),
      "salesTaxAmountBase": OOPAttributeString.descriptions(["en":"Value of the Sales tax amount in base currency."]),
      "targetExpenseStatus": OOPAttributeString.descriptions(["en":"Shows the status that the record will be transitioned to asynchronously. Currently, this is only implemented from submission to approved."]),
      "targetExpenseStatus_display": OOPAttributeString.descriptions(["en":""]),
      "transactionDate": OOPAttributeDate.descriptions(["en":"Enter the date of the expense transaction."]),
      "unit": OOPAttributeString.descriptions(["en":"Enter the Unit"]),
      "unitGroup": OOPAttributeString.descriptions(["en":"Enter the Unit Group"]),
      "price": OOPAttributeString.descriptions(["en":"Enter the Price"]),
      "priceBase": OOPAttributeString.descriptions(["en":"Value of the Price in base currency."]),
      "totalAmount": OOPAttributeString.descriptions(["en":"Shows the total amount of the expense entry."]),
      "totalAmountBase": OOPAttributeString.descriptions(["en":"Enter the value of the total amount in the base currency."]),
    ]);
  }

  override string entityClass() { return "aplExpense"; }
  override string entityClasses() { return "aplExpenses"; }

  this(UUID myId) { 
    this(); this.id(myId); }
  this(string myName) { 
    this(); this.name(myName); }
  this(UUID myId, string myName) { 
    this(); this.id(myId).name(myName); }
  this(Json aJson) { 
    this(); this.fromJson(aJson); }
}
auto APLExpense() { return new DAPLExpense; } 
auto APLExpense(Json json) { return new DAPLExpense(json); } 

unittest {
  version(uim_entities) {
    assert(APLExpense);

  auto entity = APLExpense;
  // auto repository = OOPFileRepository("./tests");
/* /*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */ 
  }
}