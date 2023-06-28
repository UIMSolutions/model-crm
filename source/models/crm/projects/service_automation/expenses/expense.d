module models.crm.projects.service_automation.expenses.expense;

@safe:
import uim.entities;

// Expense of a user in the hierarchy
class DCRMExpense : DEntity {
  mixin(EntityThis!("CRMExpense"));

  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([
        "createdOnBehalfBy": UUIDAttribute, //Shows who created the record on behalf of another user."]),
        "modifiedOnBehalfBy": UUIDAttribute, //Shows who last updated the record on behalf of another user."]),
        "overriddenCreatedOn": TimestampAttribute, //Date and time that the record was migrated."]),
        "importSequenceNumber": IntegerAttribute, //Sequence number of the import that created this record."]),
        "ownerId": UUIDAttribute, // Owner Id"]),
        "ownerIdType": StringAttribute, // The type of owner, either User or Team."]),
        "owningBusinessUnitId": UUIDAttribute, //Unique identifier for the business unit that owns the record"]),
        "owningUserId": UUIDAttribute, //Unique identifier for the user that owns the record."]),
        "owningTeamId": UUIDAttribute, //Unique identifier for the team that owns the record."]),
        "timeZoneRuleVersionNumber": IntegerAttribute, //For internal use only."]),
        "utcConversionTimeZoneCode": StringAttribute, // Time zone code that was in use when the record was created."]),
        "expenseId": UUIDAttribute, // Shows the entity instances."]),
        "stateCode": StringAttribute, // Status of the Expense"]),
        "stateCode_display": StringAttribute, //
        "statusCode": StringAttribute, // Reason for the status of the Expense"]),
        "statusCode_display": StringAttribute, //
        "expensePurpose": StringAttribute, // Enter the expense's purpose."]),
        "processId": UUIDAttribute, // Contains the id of the process associated with the entity."]),
        "stageId": UUIDAttribute, // Contains the id of the stage where the entity is located."]),
        "traversedPath": StringAttribute, // A comma separated list of string values representing the unique identifiers of stages in a Business Process Flow Instance in the order that they occur."]),
        "amount": StringAttribute, // Enter the total amount for expense."]),
        "transactionCurrencyId": CurrencyIdAttribute, // Shows the currency associated with the entity."]),
        "exchangeRate": StringAttribute, // Exchange rate for the currency associated with the entity with respect to the base currency."]),
        "amountBase": StringAttribute, // Value of the Amount in base currency."]),
        "bookableResource": StringAttribute, // Shows the bookable resource.."]),
        "expenseCategory": StringAttribute, // Enter the expense category."]),
        "expenseStatus": StringAttribute, // Shows the status of the expense entry."]),
        "expenseStatus_display": StringAttribute, //
        "externalComments": StringAttribute, // The external comments of the expense entry."]),
        "manager": StringAttribute, // Select the manager of the expense user. This field is used for approval."]),
        "project": StringAttribute, // Enter the project."]),
        "quantity": StringAttribute, // Enter the Quantity"]),
        "resourceOrganizationalUnitId": UUIDAttribute, // Select the organizational unit at the time the entry was registered of the resource who had the expense."]),
        "salesTaxAmount": StringAttribute, // Enter the sales tax amount."]),
        "salesTaxAmountBase": StringAttribute, // Value of the Sales tax amount in base currency."]),
        "targetExpenseStatus": StringAttribute, // Shows the status that the record will be transitioned to asynchronously. Currently, this is only implemented from submission to approved."]),
        "targetExpenseStatus_display": StringAttribute, //
        "transactionDate": DateAttribute, // Enter the date of the expense transaction."]),
        "unit": StringAttribute, // Enter the Unit"]),
        "unitGroup": StringAttribute, // Enter the Unit Group"]),
        "price": StringAttribute, // Enter the Price"]),
        "priceBase": StringAttribute, // Value of the Price in base currency."]),
        "totalAmount": StringAttribute, // Shows the total amount of the expense entry."]),
        "totalAmountBase": StringAttribute, // Enter the value of the total amount in the base currency."]),
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