module models.crm.projects.service_automation.expenses.expense;

@safe:
import uim.entities;

// Expense of a user in the hierarchy
class DCRMExpense : DOOPEntity {
  mixin(EntityThis!("CRMExpense"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "createdOnBehalfBy": OOPLinkAttribute("aplUser").descriptions(["en":"Shows who created the record on behalf of another user."]),
        "modifiedOnBehalfBy": OOPLinkAttribute("aplUser").descriptions(["en":"Shows who last updated the record on behalf of another user."]),
        "overriddenCreatedOn": OOPTimestampAttribute.descriptions(["en":"Date and time that the record was migrated."]),
        "importSequenceNumber": OOPIntegerAttribute.descriptions(["en":"Sequence number of the import that created this record."]),
        "ownerId": UUIDAttributeClass, // Owner Id"]),
        "ownerIdType": StringAttributeClass, // The type of owner, either User or Team."]),
        "owningBusinessUnitId": OOPLinkAttribute("aplBusinessUnit").descriptions(["en":"Unique identifier for the business unit that owns the record"]),
        "owningUserId": OOPLinkAttribute("aplUser").descriptions(["en":"Unique identifier for the user that owns the record."]),
        "owningTeamId": OOPLinkAttribute("aplTeam").descriptions(["en":"Unique identifier for the team that owns the record."]),
        "timeZoneRuleVersionNumber": OOPIntegerAttribute.descriptions(["en":"For internal use only."]),
        "utcConversionTimeZoneCode": StringAttributeClass, // Time zone code that was in use when the record was created."]),
        "expenseId": UUIDAttributeClass, // Shows the entity instances."]),
        "stateCode": StringAttributeClass, // Status of the Expense"]),
        "stateCode_display": StringAttributeClass, //
        "statusCode": StringAttributeClass, // Reason for the status of the Expense"]),
        "statusCode_display": StringAttributeClass, //
        "expensePurpose": StringAttributeClass, // Enter the expense's purpose."]),
        "processId": UUIDAttributeClass, // Contains the id of the process associated with the entity."]),
        "stageId": UUIDAttributeClass, // Contains the id of the stage where the entity is located."]),
        "traversedPath": StringAttributeClass, // A comma separated list of string values representing the unique identifiers of stages in a Business Process Flow Instance in the order that they occur."]),
        "amount": StringAttributeClass, // Enter the total amount for expense."]),
        "transactionCurrencyId": OOPLinkAttribute("aplCurrency").descriptions(["en":"Shows the currency associated with the entity."]),
        "exchangeRate": StringAttributeClass, // Exchange rate for the currency associated with the entity with respect to the base currency."]),
        "amountBase": StringAttributeClass, // Value of the Amount in base currency."]),
        "bookableResource": StringAttributeClass, // Shows the bookable resource.."]),
        "expenseCategory": StringAttributeClass, // Enter the expense category."]),
        "expenseStatus": StringAttributeClass, // Shows the status of the expense entry."]),
        "expenseStatus_display": StringAttributeClass, //
        "externalComments": StringAttributeClass, // The external comments of the expense entry."]),
        "manager": StringAttributeClass, // Select the manager of the expense user. This field is used for approval."]),
        "project": StringAttributeClass, // Enter the project."]),
        "quantity": StringAttributeClass, // Enter the Quantity"]),
        "resourceOrganizationalUnitId": UUIDAttributeClass, // Select the organizational unit at the time the entry was registered of the resource who had the expense."]),
        "salesTaxAmount": StringAttributeClass, // Enter the sales tax amount."]),
        "salesTaxAmountBase": StringAttributeClass, // Value of the Sales tax amount in base currency."]),
        "targetExpenseStatus": StringAttributeClass, // Shows the status that the record will be transitioned to asynchronously. Currently, this is only implemented from submission to approved."]),
        "targetExpenseStatus_display": StringAttributeClass, //
        "transactionDate": DateAttributeClass, // Enter the date of the expense transaction."]),
        "unit": StringAttributeClass, // Enter the Unit"]),
        "unitGroup": StringAttributeClass, // Enter the Unit Group"]),
        "price": StringAttributeClass, // Enter the Price"]),
        "priceBase": StringAttributeClass, // Value of the Price in base currency."]),
        "totalAmount": StringAttributeClass, // Shows the total amount of the expense entry."]),
        "totalAmountBase": StringAttributeClass, // Enter the value of the total amount in the base currency."]),
      ])
      .registerPath("crm_expenses");
  }
}
mixin(EntityCalls!("CRMExpense"));

unittest {
  version(test_model_crm) {
    assert(CRMExpense);

  auto entity = CRMExpense;
  // auto repository = OOPFileRepository("./tests");
/* /*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */ 
  }
}