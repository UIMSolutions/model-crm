module models.crm.projects.service_automation.invoices.line_transaction;
@safe:
import uim.entities;

// Transactions that are associated to an invoice line.
class DCRMInvoiceLineTransaction : DOOPEntity {
  mixin(OOPEntityThis!("CRMInvoiceLineTransaction"));

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
        "invoiceLineTransactionId": OOPUUIDAttribute.descriptions(["en":"Shows the entity instances."]),
        "stateCode": OOPStringAttribute.descriptions(["en":"Status of the Invoice Line Detail"]),
        "stateCode_display": OOPStringAttribute.descriptions(["en":""]),
        "statusCode": OOPStringAttribute.descriptions(["en":"Reason for the status of the Invoice Line Detail"]),
        "statusCode_display": OOPStringAttribute.descriptions(["en":""]),
        "accountCustomer": OOPStringAttribute.descriptions(["en":"Select the customer who this invoice will be sent to."]),
        "accountingDate": OOPAttributeDate.descriptions(["en":""]),
        "accountVendor": OOPStringAttribute.descriptions(["en":""]),
        "amount": OOPStringAttribute.descriptions(["en":"Enter the amount on the transaction."]),
        "transactionCurrencyId": OOPAttributeLink("aplCurrency").descriptions(["en":"Shows the currency associated with the entity."]),
        "exchangeRate": OOPStringAttribute.descriptions(["en":"Exchange rate for the currency associated with the entity with respect to the base currency."]),
        "amountBase": OOPStringAttribute.descriptions(["en":"Value of the Amount in base currency."]),
        "amountMethod": OOPStringAttribute.descriptions(["en":"Select the name of the amount calculation method."]),
        "amountMethod_display": OOPStringAttribute.descriptions(["en":""]),
        "basisAmount": OOPStringAttribute.descriptions(["en":""]),
        "basisAmountBase": OOPStringAttribute.descriptions(["en":"Value of the Basis Amount in base currency."]),
        "basisPrice": OOPStringAttribute.descriptions(["en":""]),
        "basisPriceBase": OOPStringAttribute.descriptions(["en":"Value of the Basis Price in base currency."]),
        "basisQuantity": OOPStringAttribute.descriptions(["en":""]),
        "billingType": OOPStringAttribute.descriptions(["en":"Select whether this transaction will be charged to the customer or not. Only chargeable transactions will add to the invoice total"]),
        "billingType_display": OOPStringAttribute.descriptions(["en":""]),
        "bookableResource": OOPStringAttribute.descriptions(["en":"Shows the resource."]),
        "contactCustomer": OOPStringAttribute.descriptions(["en":"Select the customer who this invoice will be sent to."]),
        "contactVendor": OOPStringAttribute.descriptions(["en":""]),
        "contractingUnit": OOPStringAttribute.descriptions(["en":"Select the organizational unit in charge of the related contract."]),
        "correction": OOPStringAttribute.descriptions(["en":"Indicates if this transaction is correcting a previous transaction."]),
        "customerType": OOPStringAttribute.descriptions(["en":"Select whether the customer was a account or a contact"]),
        "customerType_display": OOPStringAttribute.descriptions(["en":""]),
        "documentDate": OOPAttributeDate.descriptions(["en":"Enter the date on which this invoice line detail was sent to the customer"]),
        "endDateTime": OOPAttributeDatetime.descriptions(["en":"Date of invoiced transaction"]),
        "exchangeRateDate": OOPAttributeDate.descriptions(["en":""]),
        "externalDescription": OOPStringAttribute.descriptions(["en":"The external description of the invoice line detail"]),
        "invoice": OOPStringAttribute.descriptions(["en":"The invoice to which this invoice line detail belongs."]),
        "invoiceLine": OOPStringAttribute.descriptions(["en":"Deprecated) Shows the invoice line that this invoice line transaction is associated to."]),
        "invoiceLineId": OOPUUIDAttribute.descriptions(["en":"Unique identifier for Invoice Line associated with Invoice Line Detail."]),
        "originalInvoiceLineDetail": OOPStringAttribute.descriptions(["en":"The original transaction that is being corrected if this is a correction transaction."]),
        "percent": OOPStringAttribute.descriptions(["en":"Relevant when amount calculation method on the invoice line transaction is 'Multiply basis amount by percent'"]),
        "previousAmount": OOPStringAttribute.descriptions(["en":"Amount that was previously invoiced if this is a correction."]),
        "previousamountBase": OOPStringAttribute.descriptions(["en":"Value of the Previous Amount in base currency."]),
        "price": OOPStringAttribute.descriptions(["en":"Enter the price of the transaction."]),
        "priceBase": OOPStringAttribute.descriptions(["en":"Value of the Price in base currency."]),
        "priceList": OOPStringAttribute.descriptions(["en":"Select the price list used for defaulting price on this transaction."]),
        "product": OOPStringAttribute.descriptions(["en":"Select the product on this invoice line transaction."]),
        "project": OOPStringAttribute.descriptions(["en":"Select the name of the project on which this transaction was created."]),
        "quantity": OOPStringAttribute.descriptions(["en":"Enter the quantity of the transaction."]),
        "resourceCategory": OOPStringAttribute.descriptions(["en":"Select the role that the user resource who logged this transaction worked as."]),
        "resourceOrganizationalUnitId": OOPUUIDAttribute.descriptions(["en":"Select the organizational unit at the time the entry was registered of the resource who performed the work."]),
        "salesContract": OOPStringAttribute.descriptions(["en":"Select the name of the project contract that this invoice belongs to."]),
        "salesContractLine": OOPStringAttribute.descriptions(["en":"Deprecated) Shows the ID of the project contract line for this invoice line"]),
        "salesContractLineId": OOPUUIDAttribute.descriptions(["en":"Unique identifier for Order Line associated with Invoice Line Detail."]),
        "startDateTime": OOPAttributeDatetime.descriptions(["en":"Enter the start date of the transaction."]),
        "task": OOPStringAttribute.descriptions(["en":"Select the name of the project task for which this transaction was created."]),
        "transactionCategory": OOPStringAttribute.descriptions(["en":"Select the category of the transaction."]),
        "transactionClassification": OOPStringAttribute.descriptions(["en":"Transaction classification of the invoice line"]),
        "transactionClassification_display": OOPStringAttribute.descriptions(["en":""]),
        "transactionTypeCode": OOPStringAttribute.descriptions(["en":"Transaction type of the invoice line"]),
        "transactionTypeCode_display": OOPStringAttribute.descriptions(["en":""]),
        "unit": OOPStringAttribute.descriptions(["en":"Select the unit of the transaction quantity."]),
        "unitSchedule": OOPStringAttribute.descriptions(["en":"Select the unit group of the invoice line transaction."]),
        "vendorType": OOPStringAttribute.descriptions(["en":""]),
        "vendorType_display": OOPStringAttribute.descriptions(["en":""]),
        "invoiceAmount": OOPStringAttribute.descriptions(["en":"Amount to be invoiced. This is the line amount less the previously invoiced amount when this is a correction."]),
        "invoiceamountBase": OOPStringAttribute.descriptions(["en":"Value of the Invoice Amount in base currency."]),
      ])
      .registerPath("crm_invoicelinetransactions");
  }
}
mixin(OOPEntityCalls!("CRMInvoiceLineTransaction"));

unittest {
  version(test_model_crm) {
    assert(CRMInvoiceLineTransaction);

  auto entity = CRMInvoiceLineTransaction;
  // auto repository = OOPFileRepository("./tests");
/* /*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */ 
  }
}