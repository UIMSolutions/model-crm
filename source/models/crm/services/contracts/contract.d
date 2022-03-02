module models.crm.services.contracts.contract;

@safe:
import uim.entities;

// Agreement to provide customer service during a specified amount of time or number of cases.
class DCRMContract : DOOPEntity {
  mixin(OOPEntityThis!("CRMContract"));

  override void initialize() {
    super.initialize;

    this
      .addAttributes([
        "createdOnBehalfBy": OOPLinkAttribute("aplUser").descriptions(["en":"Shows who created the record on behalf of another user."]),
        "modifiedOnBehalfBy": OOPLinkAttribute("aplUser").descriptions(["en":"Shows who last updated the record on behalf of another user."]),
        "overriddenCreatedOn": OOPAttributeUserId.descriptions(["en":"Date and time that the record was migrated."]),
        "importSequenceNumber": OOPAttributeUserId.descriptions(["en":"Sequence number of the import that created this record."]),
        "ownerId": OOPAttributeUserId.descriptions(["en":"Owner Id"]),
        "ownerIdType": OOPAttributeUserId.descriptions(["en":"The type of owner, either User or Team."]),
        "owningBusinessUnit": OOPAttributeUserId.descriptions(["en":"Unique identifier for the business unit that owns the record"]),
        "owningUserId": OOPLinkAttribute("aplUser").descriptions(["en":"Unique identifier of the user that owns the activity."]),
        "owningTeamId": OOPAttributeUserId.descriptions(["en":"Unique identifier for the team that owns the record."]),
        "timeZoneRuleVersionNumber": OOPAttributeUserId.descriptions(["en":"For internal use only."]),
        "utcConversionTimeZoneCode": OOPAttributeUserId.descriptions(["en":"Time zone code that was in use when the record was created."]),
        "contractId": OOPAttributeUserId.descriptions(["en":"Unique identifier of the contract."]),
        "emailAddress": OOPAttributeUserId.descriptions(["en":"The primary email address for the entity."]),
        "title": OOPAttributeUserId.descriptions(["en":"Type a title or name for the contract that indicates the purpose of the contract."]),
        "activeOn": OOPAttributeUserId.descriptions(["en":"Enter the date when the contract becomes active."]),
        "allotmentTypeCode": OOPAttributeUserId.descriptions(["en":"Type of allotment that the contract supports."]),
        "allotmentTypeCode_display": OOPAttributeUserId.descriptions(["en":""]),
        "billingCustomerId": OOPAttributeUserId.descriptions(["en":"Select the customer account or contact to which the contract should be billed to provide a quick link to address and other customer details."]),
        "billingCustomerIdType": OOPAttributeUserId.descriptions(["en":"The type of billing customer, either Account or Contact."]),
        "billingEndOn": OOPAttributeUserId.descriptions(["en":"Enter the end date for the contract's billing period to indicate the period for which the customer must pay for a service."]),
        "billingFrequencyCode": OOPAttributeUserId.descriptions(["en":"Select the billing schedule of the contract to indicate how often the customer should be invoiced."]),
        "billingFrequencyCode_display": OOPAttributeUserId.descriptions(["en":""]),
        "billingStartOn": OOPAttributeUserId.descriptions(["en":"Enter the start date for the contract's billing period to indicate the period for which the customer must pay for a service. This defaults to the same date that is selected in the Contract Start Date field."]),
        "billToAddress": OOPAttributeUserId.descriptions(["en":"Choose which address to send the invoice to."]),
        "cancelOn": OOPAttributeUserId.descriptions(["en":"Shows the date and time when the contract was canceled."]),
        "contractLanguage": OOPAttributeUserId.descriptions(["en":"Type additional information about the contract, such as the products or services provided to the customer."]),
        "contractNumber": OOPAttributeUserId.descriptions(["en":"Shows the number for the contract for customer reference and searching capabilities. You cannot modify this number."]),
        "contractServiceLevelCode": OOPAttributeUserId.descriptions(["en":"Select the level of service that should be provided for the contract based on your company's definition of bronze, silver, or gold."]),
        "contractServiceLevelCode_display": OOPAttributeUserId.descriptions(["en":""]),
        "contractTemplateAbbreviation": OOPAttributeUserId.descriptions(["en":"Shows the abbreviation of the contract template selected when the contract is created."]),
        "contractTemplateId": OOPAttributeUserId.descriptions(["en":"Choose the contract template that should be used to determine the terms of the contract, such as allotment type, available hours, and billing frequency."]),
        "customerId": OOPAttributeUserId.descriptions(["en":"The customer account or contact to provide a quick link to additional customer details, such as account information, activities, and opportunities."]),
        "customerIdType": OOPAttributeUserId.descriptions(["en":"The type of customer, either Account or Contact."]),
        "duration": OOPAttributeUserId.descriptions(["en":"Shows for the duration of the contract, in days, based on the contract start and end dates."]),
        "effectivityCalendar": OOPAttributeUserId.descriptions(["en":"Days of the week and times during which customer service support is available for the duration of the contract."]),
        "expiresOn": OOPAttributeUserId.descriptions(["en":"Enter the date when the contract expires."]),
        "netPrice": OOPAttributeUserId.descriptions(["en":"Shows the total charge to the customer for the service contract, calculated as the sum of values in the Net field for each existing contract line related to the contract."]),
        "transactionCurrencyId": OOPAttributeUserId.descriptions(["en":"Choose the local currency for the record to make sure budgets are reported in the correct currency."]),
        "exchangeRate": OOPAttributeUserId.descriptions(["en":"Shows the conversion rate of the record's currency. The exchange rate is used to convert all money fields in the record from the local currency to the system's default currency."]),
        "netPriceBase": OOPAttributeUserId.descriptions(["en":"Value of the Net Price in base currency."]),
        "originatingContract": OOPAttributeUserId.descriptions(["en":"Choose the original contract that this contract was created from. This information is used to track renewal history."]),
        "serviceAddress": OOPAttributeUserId.descriptions(["en":"Choose the address for the customer account or contact where the services are provided."]),
        "stateCode": OOPAttributeUserId.descriptions(["en":"Shows whether the contract is in draft, invoiced, active, on hold, canceled, or expired. You can edit only the contracts that are in draft status."]),
        "stateCode_display": OOPAttributeUserId.descriptions(["en":""]),
        "statusCode": OOPAttributeUserId.descriptions(["en":"Select the contract's status."]),
        "statusCode_display": OOPAttributeUserId.descriptions(["en":""]),
        "totalDiscount": OOPAttributeUserId.descriptions(["en":"Shows the total discount applied to the contract's service charges, calculated as the sum of values in the Discount fields for each existing contract line related to the contract."]),
        "totalDiscountBase": OOPAttributeUserId.descriptions(["en":"Value of the Total Discount in base currency."]),
        "totalPrice": OOPAttributeUserId.descriptions(["en":"Shows the total service charge for the contract, before any discounts are credited. This is calculated as the sum of values in the Total Price field for each existing contract line related to the contract."]),
        "totalPriceBase": OOPAttributeUserId.descriptions(["en":"Value of the Total Price in base currency."]),
        "useDiscountAsPercentage": OOPAttributeUserId.descriptions(["en":"Select whether the discounts entered on contract lines for this contract should be entered as a percentage or a fixed dollar value."]),
        "entityImageId": OOPAttributeUserId.descriptions(["en":""]),
        "accountId": OOPAttributeUserId.descriptions(["en":"Unique identifier of the account with which the contract is associated."]),
        "billingAccountId": OOPAttributeUserId.descriptions(["en":"Unique identifier of the account to which the contract is to be billed."]),
        "billingContactId": OOPAttributeUserId.descriptions(["en":"Unique identifier of the contact to whom the contract is to be billed."]),
        "contactId": OOPAttributeUserId.descriptions(["en":"Unique identifier of the contact specified for the contract."]),
      ])
      .registerPath("crm_contracts");
  }
}
mixin(OOPEntityCalls!("CRMContract"));
unittest {
  version(test_model_crm) {
    assert(CRMContract);
  
  auto entity = CRMContract;
  // auto repository = OOPFileRepository("./tests");
/* /*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */ 
  }
}