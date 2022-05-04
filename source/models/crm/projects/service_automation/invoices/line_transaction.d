module models.crm.projects.service_automation.invoices.line_transaction;
@safe:
import uim.entities;

// Transactions that are associated to an invoice line.
class DCRMInvoiceLineTransactionEntity : DOOPEntity {
  mixin(EntityThis!("CRMInvoiceLineTransactionEntity"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "createdOnBehalfBy": UUIDAttributeClass, //Shows who created the record on behalf of another user."]),
        "modifiedOnBehalfBy": UUIDAttributeClass, //Shows who last updated the record on behalf of another user."]),
        "overriddenCreatedOn": TimestampAttributeClass, //Date and time that the record was migrated."]),
        "importSequenceNumber": IntegerAttributeClass, //Sequence number of the import that created this record."]),
        "ownerId": UUIDAttributeClass, // Owner Id"]),
        "ownerIdType": StringAttributeClass, // The type of owner, either User or Team."]),
        "owningBusinessUnitId": UUIDAttributeClass, //Unique identifier for the business unit that owns the record"]),
        "owningUserId": UUIDAttributeClass, //Unique identifier for the user that owns the record."]),
        "owningTeamId": UUIDAttributeClass, //Unique identifier for the team that owns the record."]),
        "timeZoneRuleVersionNumber": IntegerAttributeClass, //For internal use only."]),
        "utcConversionTimeZoneCode": StringAttributeClass, // Time zone code that was in use when the record was created."]),
        "invoiceLineTransactionId": UUIDAttributeClass, // Shows the entity instances."]),
        "stateCode": StringAttributeClass, // Status of the Invoice Line Detail"]),
        "stateCode_display": StringAttributeClass, //
        "statusCode": StringAttributeClass, // Reason for the status of the Invoice Line Detail"]),
        "statusCode_display": StringAttributeClass, //
        "accountCustomer": StringAttributeClass, // Select the customer who this invoice will be sent to."]),
        "accountingDate": DateAttributeClass, // 
        "accountVendor": StringAttributeClass, //
        "amount": StringAttributeClass, // Enter the amount on the transaction."]),
        "transactionCurrencyId": CurrencyIdAttributeClass, // Shows the currency associated with the entity."]),
        "exchangeRate": StringAttributeClass, // Exchange rate for the currency associated with the entity with respect to the base currency."]),
        "amountBase": StringAttributeClass, // Value of the Amount in base currency."]),
        "amountMethod": StringAttributeClass, // Select the name of the amount calculation method."]),
        "amountMethod_display": StringAttributeClass, //
        "basisAmount": StringAttributeClass, //
        "basisAmountBase": StringAttributeClass, // Value of the Basis Amount in base currency."]),
        "basisPrice": StringAttributeClass, //
        "basisPriceBase": StringAttributeClass, // Value of the Basis Price in base currency."]),
        "basisQuantity": StringAttributeClass, //
        "billingType": StringAttributeClass, // Select whether this transaction will be charged to the customer or not. Only chargeable transactions will add to the invoice total"]),
        "billingType_display": StringAttributeClass, //
        "bookableResource": StringAttributeClass, // Shows the resource."]),
        "contactCustomer": StringAttributeClass, // Select the customer who this invoice will be sent to."]),
        "contactVendor": StringAttributeClass, //
        "contractingUnit": StringAttributeClass, // Select the organizational unit in charge of the related contract."]),
        "correction": StringAttributeClass, // Indicates if this transaction is correcting a previous transaction."]),
        "customerType": StringAttributeClass, // Select whether the customer was a account or a contact"]),
        "customerType_display": StringAttributeClass, //
        "documentDate": DateAttributeClass, // Enter the date on which this invoice line detail was sent to the customer"]),
        "endDateTime": DatetimeAttributeClass, // Date of invoiced transaction"]),
        "exchangeRateDate": DateAttributeClass, // 
        "externalDescription": StringAttributeClass, // The external description of the invoice line detail"]),
        "invoice": StringAttributeClass, // The invoice to which this invoice line detail belongs."]),
        "invoiceLine": StringAttributeClass, // Deprecated) Shows the invoice line that this invoice line transaction is associated to."]),
        "invoiceLineId": UUIDAttributeClass, // Unique identifier for Invoice Line associated with Invoice Line Detail."]),
        "originalInvoiceLineDetail": StringAttributeClass, // The original transaction that is being corrected if this is a correction transaction."]),
        "percent": StringAttributeClass, // Relevant when amount calculation method on the invoice line transaction is 'Multiply basis amount by percent'"]),
        "previousAmount": StringAttributeClass, // Amount that was previously invoiced if this is a correction."]),
        "previousamountBase": StringAttributeClass, // Value of the Previous Amount in base currency."]),
        "price": StringAttributeClass, // Enter the price of the transaction."]),
        "priceBase": StringAttributeClass, // Value of the Price in base currency."]),
        "priceList": StringAttributeClass, // Select the price list used for defaulting price on this transaction."]),
        "product": StringAttributeClass, // Select the product on this invoice line transaction."]),
        "project": StringAttributeClass, // Select the name of the project on which this transaction was created."]),
        "quantity": StringAttributeClass, // Enter the quantity of the transaction."]),
        "resourceCategory": StringAttributeClass, // Select the role that the user resource who logged this transaction worked as."]),
        "resourceOrganizationalUnitId": UUIDAttributeClass, // Select the organizational unit at the time the entry was registered of the resource who performed the work."]),
        "salesContract": StringAttributeClass, // Select the name of the project contract that this invoice belongs to."]),
        "salesContractLine": StringAttributeClass, // Deprecated) Shows the ID of the project contract line for this invoice line"]),
        "salesContractLineId": UUIDAttributeClass, // Unique identifier for Order Line associated with Invoice Line Detail."]),
        "startDateTime": DatetimeAttributeClass, // Enter the start date of the transaction."]),
        "task": StringAttributeClass, // Select the name of the project task for which this transaction was created."]),
        "transactionCategory": StringAttributeClass, // Select the category of the transaction."]),
        "transactionClassification": StringAttributeClass, // Transaction classification of the invoice line"]),
        "transactionClassification_display": StringAttributeClass, //
        "transactionTypeCode": StringAttributeClass, // Transaction type of the invoice line"]),
        "transactionTypeCode_display": StringAttributeClass, //
        "unit": StringAttributeClass, // Select the unit of the transaction quantity."]),
        "unitSchedule": StringAttributeClass, // Select the unit group of the invoice line transaction."]),
        "vendorType": StringAttributeClass, //
        "vendorType_display": StringAttributeClass, //
        "invoiceAmount": StringAttributeClass, // Amount to be invoiced. This is the line amount less the previously invoiced amount when this is a correction."]),
        "invoiceamountBase": StringAttributeClass, // Value of the Invoice Amount in base currency."]),
      ])
      .registerPath("crm_invoicelinetransactions");
  }
}
mixin(EntityCalls!("CRMInvoiceLineTransactionEntity"));

unittest {
  version(test_model_crm) {
    assert(CRMInvoiceLineTransactionEntity);

  auto entity = CRMInvoiceLineTransactionEntity;
  // auto repository = OOPFileRepository("./tests");
/* /*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */ 
  }
}