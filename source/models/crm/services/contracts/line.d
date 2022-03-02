module models.crm.services.contracts.line;

@safe:
import uim.entities;

// Line item in a contract that specifies the type of service a customer is entitled to.
class DCRMContractLine : DOOPEntity {
  mixin(OOPEntityThis!("CRMContractLine"));

  override void initialize() {
    super.initialize;

    this
      .addAttributes([
        "createdOnBehalfBy": OOPStringAttribute.descriptions(["en":"Shows who created the record on behalf of another user."]),
        "modifiedOnBehalfBy": OOPStringAttribute.descriptions(["en":"Shows who last updated the record on behalf of another user."]),
        "overriddenCreatedOn": OOPStringAttribute.descriptions(["en":"Date and time that the record was migrated."]),
        "importSequenceNumber": OOPIntegerAttribute.descriptions(["en":"Sequence number of the import that created this record."]),
        "ownerId": OOPUUIDAttribute.descriptions(["en":"Owner Id"]),
        "ownerIdType": OOPStringAttribute.descriptions(["en":"The type of owner, either User or Team."]),
        "owningBusinessUnitId": OOPLinkAttribute("aplBusinessUnit").descriptions(["en":"Unique identifier for the business unit that owns the record"]),
        "owningUserId": OOPStringAttribute.descriptions(["en":"Unique identifier of the user that owns the activity."]),
        "owningTeamId": OOPStringAttribute.descriptions(["en":"Unique identifier for the team that owns the record."]),
        "timeZoneRuleVersionNumber": OOPIntegerAttribute.descriptions(["en":"For internal use only."]),
        "utcConversionTimeZoneCode": OOPStringAttribute.descriptions(["en":"Time zone code that was in use when the record was created."]),
        "versionNumber": OOPIntegerAttribute.descriptions(["en":"Version Number"]),
        "contractDetailId": OOPUUIDAttribute.descriptions(["en":"Unique identifier of the contract line."]),
        "title": OOPStringAttribute.descriptions(["en":"Type a title or name that describes the contract line."]),
        "activeOn": OOPStringAttribute.descriptions(["en":"Enter the date when the contract line becomes active."]),
        "allotmentsOverage": OOPStringAttribute.descriptions(["en":"Shows the number of minutes over the Total Allotments field that have been spent on resolved cases related to the contract line."]),
        "allotmentsRemaining": OOPStringAttribute.descriptions(["en":"Shows the number of cases or minutes remaining, based on the resolved cases logged to the contract line."]),
        "allotmentsUsed": OOPStringAttribute.descriptions(["en":"Shows the number of cases or minutes used in the resolved cases on the contract line."]),
        "contractId": OOPUUIDAttribute.descriptions(["en":"Unique identifier of the contract associated with the contract line."]),
        "contractStateCode": OOPStringAttribute.descriptions(["en":"Status of the contract."]),
        "contractStateCode_display": OOPStringAttribute.descriptions(["en":""]),
        "customerId": OOPUUIDAttribute.descriptions(["en":"The customer account or contact to provide a quick link to additional customer details, such as account information, activities, and opportunities."]),
        "customerIdType": OOPStringAttribute.descriptions(["en":"The type of customer, either Account or Contact."]),
        "discount": OOPStringAttribute.descriptions(["en":"Type the discount amount for the contract line to deduct any negotiated or other savings from the net amount due."]),
        "transactionCurrencyId": OOPLinkAttribute("aplCurrency").descriptions(["en":"Choose the local currency for the record to make sure budgets are reported in the correct currency."]),
        "exchangeRate": OOPStringAttribute.descriptions(["en":"Shows the conversion rate of the record's currency. The exchange rate is used to convert all money fields in the record from the local currency to the system's default currency."]),
        "discountBase": OOPStringAttribute.descriptions(["en":"Value of the Discount in base currency."]),
        "discountPercentage": OOPPercentageAttribute.descriptions(["en":"Type the discount rate that should be applied to the Total Price, for use in calculating the net amount due for the contract line."]),
        "effectivityCalendar": OOPStringAttribute.descriptions(["en":"Days of the week and times for which the contract line item is effective."]),
        "expiresOn": OOPStringAttribute.descriptions(["en":"Enter the date when the contract line expires. The date is automatically filled with the contract date, but you can change it if required."]),
        "initialQuantity": OOPStringAttribute.descriptions(["en":"Type the number of units of the specified product or service that are eligible for support on the contract line."]),
        "lineItemOrder": OOPStringAttribute.descriptions(["en":"Type the line item number for the contract line to easily identify the contract line and make sure it's listed in the correct order in the parent contract."]),
        "net": OOPStringAttribute.descriptions(["en":"Shows the total charge to the customer for the contract line, calculated as the Total Price minus any discounts."]),
        "netBase": OOPStringAttribute.descriptions(["en":"Value of the Net in base currency."]),
        "price": OOPStringAttribute.descriptions(["en":"Type the total service charge for the contract line before any discounts are credited."]),
        "priceBase": OOPStringAttribute.descriptions(["en":"Value of the Total Price in base currency."]),
        "productId": OOPUUIDAttribute.descriptions(["en":"Choose the product that is eligible for services on the contract line."]),
        "productSerialNumber": OOPIntegerAttribute.descriptions(["en":"Type the serial number for the product that is eligible for services on the contract line."]),
        "rate": OOPStringAttribute.descriptions(["en":"Shows the cost per case or minute, calculated by dividing the Total Price value by the total number of cases or minutes allocated to the contract line."]),
        "rateBase": OOPStringAttribute.descriptions(["en":"Value of the Rate in base currency."]),
        "serviceAddress": OOPStringAttribute.descriptions(["en":"Choose the address for the customer account or contact where the services are provided."]),
        "serviceContractUnitsCode": OOPStringAttribute.descriptions(["en":"Select the unit type allotted in the contract line, such as cases or minutes, to determine the level of support."]),
        "serviceContractUnitsCode_display": OOPStringAttribute.descriptions(["en":""]),
        "stateCode": OOPStringAttribute.descriptions(["en":"Shows whether the contract line is existing, renewed, canceled, or expired. You can't edit a contract line after it is saved, regardless of the status."]),
        "stateCode_display": OOPStringAttribute.descriptions(["en":""]),
        "statusCode": OOPStringAttribute.descriptions(["en":"Select the contract line's status."]),
        "statusCode_display": OOPStringAttribute.descriptions(["en":""]),
        "totalAllotments": OOPStringAttribute.descriptions(["en":"Type the total number of minutes or cases allowed for the contract line."]),
        "uoMId": OOPUUIDAttribute.descriptions(["en":"Choose the unit of measurement for the base unit quantity for this purchase, such as each or dozen."]),
        "uoMScheduleId": OOPUUIDAttribute.descriptions(["en":"Unique identifier of the unit group associated with the contract line."]),
        "accountId": OOPLinkAttribute("aplAccount").descriptions(["en":"Unique identifier of the account with which the contract is associated."]),
        "contactId": OOPLinkAttribute("aplContact").descriptions(["en":"Unique identifier for the contact associated with the contract line."]),
      ])
      .registerPath("crm_contractlines");
  }
}
mixin(OOPEntityCalls!("CRMContractLine"));

unittest {
  version(test_model_crm) {
    assert(CRMContractLine);
  
  auto entity = CRMContractLine;
  // auto repository = OOPFileRepository("./tests");
/* /*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */ 
  }
}