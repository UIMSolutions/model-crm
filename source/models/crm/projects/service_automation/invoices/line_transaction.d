module models.crm.projects.service_automation.invoices.line_transaction;
@safe:
import uim.entities;

// Transactions that are associated to an invoice line.
class DAPLInvoiceLineTransaction : DOOPEntity {
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
      "invoiceLineTransactionId": OOPAttributeUUID.descriptions(["en":"Shows the entity instances."]),
      "stateCode": OOPAttributeString.descriptions(["en":"Status of the Invoice Line Detail"]),
      "stateCode_display": OOPAttributeString.descriptions(["en":""]),
      "statusCode": OOPAttributeString.descriptions(["en":"Reason for the status of the Invoice Line Detail"]),
      "statusCode_display": OOPAttributeString.descriptions(["en":""]),
      "accountCustomer": OOPAttributeString.descriptions(["en":"Select the customer who this invoice will be sent to."]),
      "accountingDate": OOPAttributeDate.descriptions(["en":""]),
      "accountVendor": OOPAttributeString.descriptions(["en":""]),
      "amount": OOPAttributeString.descriptions(["en":"Enter the amount on the transaction."]),
      "transactionCurrencyId": OOPAttributeLink("aplCurrency").descriptions(["en":"Shows the currency associated with the entity."]),
      "exchangeRate": OOPAttributeString.descriptions(["en":"Exchange rate for the currency associated with the entity with respect to the base currency."]),
      "amountBase": OOPAttributeString.descriptions(["en":"Value of the Amount in base currency."]),
      "amountMethod": OOPAttributeString.descriptions(["en":"Select the name of the amount calculation method."]),
      "amountMethod_display": OOPAttributeString.descriptions(["en":""]),
      "basisAmount": OOPAttributeString.descriptions(["en":""]),
      "basisAmountBase": OOPAttributeString.descriptions(["en":"Value of the Basis Amount in base currency."]),
      "basisPrice": OOPAttributeString.descriptions(["en":""]),
      "basisPriceBase": OOPAttributeString.descriptions(["en":"Value of the Basis Price in base currency."]),
      "basisQuantity": OOPAttributeString.descriptions(["en":""]),
      "billingType": OOPAttributeString.descriptions(["en":"Select whether this transaction will be charged to the customer or not. Only chargeable transactions will add to the invoice total"]),
      "billingType_display": OOPAttributeString.descriptions(["en":""]),
      "bookableResource": OOPAttributeString.descriptions(["en":"Shows the resource."]),
      "contactCustomer": OOPAttributeString.descriptions(["en":"Select the customer who this invoice will be sent to."]),
      "contactVendor": OOPAttributeString.descriptions(["en":""]),
      "contractingUnit": OOPAttributeString.descriptions(["en":"Select the organizational unit in charge of the related contract."]),
      "correction": OOPAttributeString.descriptions(["en":"Indicates if this transaction is correcting a previous transaction."]),
      "customerType": OOPAttributeString.descriptions(["en":"Select whether the customer was a account or a contact"]),
      "customerType_display": OOPAttributeString.descriptions(["en":""]),
      "documentDate": OOPAttributeDate.descriptions(["en":"Enter the date on which this invoice line detail was sent to the customer"]),
      "endDateTime": OOPAttributeDatetime.descriptions(["en":"Date of invoiced transaction"]),
      "exchangeRateDate": OOPAttributeDate.descriptions(["en":""]),
      "externalDescription": OOPAttributeString.descriptions(["en":"The external description of the invoice line detail"]),
      "invoice": OOPAttributeString.descriptions(["en":"The invoice to which this invoice line detail belongs."]),
      "invoiceLine": OOPAttributeString.descriptions(["en":"Deprecated) Shows the invoice line that this invoice line transaction is associated to."]),
      "invoiceLineId": OOPAttributeUUID.descriptions(["en":"Unique identifier for Invoice Line associated with Invoice Line Detail."]),
      "originalInvoiceLineDetail": OOPAttributeString.descriptions(["en":"The original transaction that is being corrected if this is a correction transaction."]),
      "percent": OOPAttributeString.descriptions(["en":"Relevant when amount calculation method on the invoice line transaction is 'Multiply basis amount by percent'"]),
      "previousAmount": OOPAttributeString.descriptions(["en":"Amount that was previously invoiced if this is a correction."]),
      "previousamountBase": OOPAttributeString.descriptions(["en":"Value of the Previous Amount in base currency."]),
      "price": OOPAttributeString.descriptions(["en":"Enter the price of the transaction."]),
      "priceBase": OOPAttributeString.descriptions(["en":"Value of the Price in base currency."]),
      "priceList": OOPAttributeString.descriptions(["en":"Select the price list used for defaulting price on this transaction."]),
      "product": OOPAttributeString.descriptions(["en":"Select the product on this invoice line transaction."]),
      "project": OOPAttributeString.descriptions(["en":"Select the name of the project on which this transaction was created."]),
      "quantity": OOPAttributeString.descriptions(["en":"Enter the quantity of the transaction."]),
      "resourceCategory": OOPAttributeString.descriptions(["en":"Select the role that the user resource who logged this transaction worked as."]),
      "resourceOrganizationalUnitId": OOPAttributeUUID.descriptions(["en":"Select the organizational unit at the time the entry was registered of the resource who performed the work."]),
      "salesContract": OOPAttributeString.descriptions(["en":"Select the name of the project contract that this invoice belongs to."]),
      "salesContractLine": OOPAttributeString.descriptions(["en":"Deprecated) Shows the ID of the project contract line for this invoice line"]),
      "salesContractLineId": OOPAttributeUUID.descriptions(["en":"Unique identifier for Order Line associated with Invoice Line Detail."]),
      "startDateTime": OOPAttributeDatetime.descriptions(["en":"Enter the start date of the transaction."]),
      "task": OOPAttributeString.descriptions(["en":"Select the name of the project task for which this transaction was created."]),
      "transactionCategory": OOPAttributeString.descriptions(["en":"Select the category of the transaction."]),
      "transactionClassification": OOPAttributeString.descriptions(["en":"Transaction classification of the invoice line"]),
      "transactionClassification_display": OOPAttributeString.descriptions(["en":""]),
      "transactionTypeCode": OOPAttributeString.descriptions(["en":"Transaction type of the invoice line"]),
      "transactionTypeCode_display": OOPAttributeString.descriptions(["en":""]),
      "unit": OOPAttributeString.descriptions(["en":"Select the unit of the transaction quantity."]),
      "unitSchedule": OOPAttributeString.descriptions(["en":"Select the unit group of the invoice line transaction."]),
      "vendorType": OOPAttributeString.descriptions(["en":""]),
      "vendorType_display": OOPAttributeString.descriptions(["en":""]),
      "invoiceAmount": OOPAttributeString.descriptions(["en":"Amount to be invoiced. This is the line amount less the previously invoiced amount when this is a correction."]),
      "invoiceamountBase": OOPAttributeString.descriptions(["en":"Value of the Invoice Amount in base currency."]),
    ]);
  }

  override string entityClass() { return "aplInvoiceLineTransaction"; }
  override string entityClasses() { return "aplInvoiceLineTransactions"; }

  this(UUID myId) { 
    this(); this.id(myId); }
  this(string myName) { 
    this(); this.name(myName); }
  this(UUID myId, string myName) { 
    this(); this.id(myId).name(myName); }
  this(Json aJson) { 
    this(); this.fromJson(aJson); }
}
auto APLInvoiceLineTransaction() { return new DAPLInvoiceLineTransaction; } 
auto APLInvoiceLineTransaction(Json json) { return new DAPLInvoiceLineTransaction(json); } 

unittest {
  version(uim_entities) {
    assert(APLInvoiceLineTransaction);

  auto entity = APLInvoiceLineTransaction;
  // auto repository = OOPFileRepository("./tests");
/* /*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */ 
  }
}