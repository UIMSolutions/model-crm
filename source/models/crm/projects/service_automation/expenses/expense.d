module models.crm.projects.service_automation.expenses.expense;

@safe:
import uim.entities;

// Expense of a user in the hierarchy
class DCRMExpense : DOOPEntity {
  mixin(OOPEntityThis!("CRMExpense"));

  override void initialize() {
    super.initialize;

    this
      .attributes([
        "createdOnBehalfBy": OOPAttributeLink("aplUser").descriptions(["en":"Shows who created the record on behalf of another user."]),
        "modifiedOnBehalfBy": OOPAttributeLink("aplUser").descriptions(["en":"Shows who last updated the record on behalf of another user."]),
        "overriddenCreatedOn": OOPAttributeTimestamp.descriptions(["en":"Date and time that the record was migrated."]),
        "importSequenceNumber": OOPAttributeNumber.descriptions(["en":"Sequence number of the import that created this record."]),
        "ownerId": OOPUUIDAttribute.descriptions(["en":"Owner Id"]),
        "ownerIdType": OOPStringAttribute.descriptions(["en":"The type of owner, either User or Team."]),
        "owningBusinessUnitId": OOPAttributeLink("aplBusinessUnit").descriptions(["en":"Unique identifier for the business unit that owns the record"]),
        "owningUserId": OOPAttributeLink("aplUser").descriptions(["en":"Unique identifier for the user that owns the record."]),
        "owningTeamId": OOPAttributeLink("aplTeam").descriptions(["en":"Unique identifier for the team that owns the record."]),
        "timeZoneRuleVersionNumber": OOPAttributeNumber.descriptions(["en":"For internal use only."]),
        "utcConversionTimeZoneCode": OOPStringAttribute.descriptions(["en":"Time zone code that was in use when the record was created."]),
        "expenseId": OOPUUIDAttribute.descriptions(["en":"Shows the entity instances."]),
        "stateCode": OOPStringAttribute.descriptions(["en":"Status of the Expense"]),
        "stateCode_display": OOPStringAttribute.descriptions(["en":""]),
        "statusCode": OOPStringAttribute.descriptions(["en":"Reason for the status of the Expense"]),
        "statusCode_display": OOPStringAttribute.descriptions(["en":""]),
        "expensePurpose": OOPStringAttribute.descriptions(["en":"Enter the expense's purpose."]),
        "processId": OOPUUIDAttribute.descriptions(["en":"Contains the id of the process associated with the entity."]),
        "stageId": OOPUUIDAttribute.descriptions(["en":"Contains the id of the stage where the entity is located."]),
        "traversedPath": OOPStringAttribute.descriptions(["en":"A comma separated list of string values representing the unique identifiers of stages in a Business Process Flow Instance in the order that they occur."]),
        "amount": OOPStringAttribute.descriptions(["en":"Enter the total amount for expense."]),
        "transactionCurrencyId": OOPAttributeLink("aplCurrency").descriptions(["en":"Shows the currency associated with the entity."]),
        "exchangeRate": OOPStringAttribute.descriptions(["en":"Exchange rate for the currency associated with the entity with respect to the base currency."]),
        "amountBase": OOPStringAttribute.descriptions(["en":"Value of the Amount in base currency."]),
        "bookableResource": OOPStringAttribute.descriptions(["en":"Shows the bookable resource.."]),
        "expenseCategory": OOPStringAttribute.descriptions(["en":"Enter the expense category."]),
        "expenseStatus": OOPStringAttribute.descriptions(["en":"Shows the status of the expense entry."]),
        "expenseStatus_display": OOPStringAttribute.descriptions(["en":""]),
        "externalComments": OOPStringAttribute.descriptions(["en":"The external comments of the expense entry."]),
        "manager": OOPStringAttribute.descriptions(["en":"Select the manager of the expense user. This field is used for approval."]),
        "project": OOPStringAttribute.descriptions(["en":"Enter the project."]),
        "quantity": OOPStringAttribute.descriptions(["en":"Enter the Quantity"]),
        "resourceOrganizationalUnitId": OOPUUIDAttribute.descriptions(["en":"Select the organizational unit at the time the entry was registered of the resource who had the expense."]),
        "salesTaxAmount": OOPStringAttribute.descriptions(["en":"Enter the sales tax amount."]),
        "salesTaxAmountBase": OOPStringAttribute.descriptions(["en":"Value of the Sales tax amount in base currency."]),
        "targetExpenseStatus": OOPStringAttribute.descriptions(["en":"Shows the status that the record will be transitioned to asynchronously. Currently, this is only implemented from submission to approved."]),
        "targetExpenseStatus_display": OOPStringAttribute.descriptions(["en":""]),
        "transactionDate": OOPAttributeDate.descriptions(["en":"Enter the date of the expense transaction."]),
        "unit": OOPStringAttribute.descriptions(["en":"Enter the Unit"]),
        "unitGroup": OOPStringAttribute.descriptions(["en":"Enter the Unit Group"]),
        "price": OOPStringAttribute.descriptions(["en":"Enter the Price"]),
        "priceBase": OOPStringAttribute.descriptions(["en":"Value of the Price in base currency."]),
        "totalAmount": OOPStringAttribute.descriptions(["en":"Shows the total amount of the expense entry."]),
        "totalAmountBase": OOPStringAttribute.descriptions(["en":"Enter the value of the total amount in the base currency."]),
      ])
      .registerPath("crm_expenses");
  }
}
mixin(OOPEntityCalls!("CRMExpense"));

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