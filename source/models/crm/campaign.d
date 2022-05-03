module models.crm.campaign;

@safe:
import uim.entities;

// Container for campaign activities and responses, sales literature, products, and lists to create, plan, execute, and track the results of a specific marketing campaign through its life.
class DCRMCampaign : DOOPEntity {
  mixin(EntityThis!("CRMCampaign"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "createdOnBehalfBy": OOPLinkAttribute("aplUser").descriptions(["en":"Shows who created the record on behalf of another user."]), 
        "modifiedOnBehalfBy": OOPLinkAttribute("aplUser").descriptions(["en":"Shows who last updated the record on behalf of another user."]), 
        "overriddenCreatedOn": OOPTimestampAttribute.descriptions(["en":"Date and time that the record was migrated."]), 
        "importSequenceNumber": OOPIntegerAttribute.descriptions(["en":"Unique identifier of the data import or data migration that created this record."]), 
        "ownerId": UUIDAttributeClass, // Owner Id"]), 
        "ownerIdType": StringAttributeClass, // The type of owner, either User or Team."]), 
        "owningBusinessUnitId": OOPLinkAttribute("aplBusinessUnit").descriptions(["en":"Unique identifier for the business unit that owns the record"]), 
        "owningUserId": OOPLinkAttribute("aplUser").descriptions(["en":"Unique identifier of the user that owns the activity."]), 
        "owningTeamId": OOPLinkAttribute("aplTeam").descriptions(["en":"Unique identifier for the team that owns the record."]), 
        "timeZoneRuleVersionNumber": OOPIntegerAttribute.descriptions(["en":"For internal use only."]), 
        "utcConversionTimeZoneCode": StringAttributeClass, // Time zone code that was in use when the record was created."]), 
        "campaignId": UUIDAttributeClass, // Unique identifier of the campaign."]), 
        "emailAddress": StringAttributeClass, // The primary email address for the entity."]), 
        "processId": UUIDAttributeClass, // Contains the id of the process associated with the entity."]), 
        "stageId": UUIDAttributeClass, // Contains the id of the stage where the entity is located."]), 
        "traversedPath": StringAttributeClass, // A comma separated list of string values representing the unique identifiers of stages in a Business Process Flow Instance in the order that they occur."]), 
        "actualEnd": StringAttributeClass, // Enter the date when the campaign was closed or completed."]), 
        "actualStart": StringAttributeClass, // Enter the actual start date and time for the campaign."]), 
        "budgetedCost": StringAttributeClass, // Type the amount budgeted for the campaign to define a limit for how much you can spend."]), 
        "transactionCurrencyId": OOPLinkAttribute("aplCurrency").descriptions(["en":"Choose the local currency for the record to make sure budgets are reported in the correct currency."]), 
        "exchangeRate": StringAttributeClass, // Shows the conversion rate of the record's currency. The exchange rate is used to convert all money fields in the record from the local currency to the system's default currency."]), 
        "budgetedCostBase": StringAttributeClass, // Value of the Budget Allocated in base currency."]), 
        "codeName": StringAttributeClass, // Type a number or other tracking code to identify the campaign. If no value is entered, a code will be generated automatically."]), 
        "expectedResponse": StringAttributeClass, // Type the expected response rate for the campaign as a full number between 0 and 100."]), 
        "expectedRevenue": StringAttributeClass, // Type the expected revenue for the campaign for return on investment projections and post-campaign reporting."]), 
        "expectedRevenueBase": StringAttributeClass, // Value of the Estimated Revenue in base currency."]), 
        "isTemplate": BooleanAttributeClass, // Select whether the campaign is a template that can be copied when you create future campaigns."]), 
        "message": StringAttributeClass, // Type the promotional message or marketing copy for the campaign."]), 
        "objective": StringAttributeClass, // Type the objective of the campaign, including products, services, discounts, and pricing."]), 
        "otherCost": StringAttributeClass, // Type the sum of any miscellaneous campaign costs not included in the campaign activities to make sure the actual cost of the campaign is calculated correctly."]), 
        "otherCostBase": StringAttributeClass, // Value of the Miscellaneous Costs in base currency."]), 
        "promotionCodeName": StringAttributeClass, // Type a promotional code to track sales related to the campaign or allow customers to redeem a discount offer."]), 
        "proposedEnd": StringAttributeClass, // Enter the date when the campaign is scheduled to end."]), 
        "proposedStart": StringAttributeClass, // Enter the date when the campaign is scheduled to start."]), 
        "stateCode": StringAttributeClass, // Shows the status of the campaign. By default, campaigns are active and can't be deactivated."]), 
        "stateCode_display": StringAttributeClass, // 
        "statusCode": StringAttributeClass, // Select the campaign's status."]), 
        "statusCode_display": StringAttributeClass, // 
        "totalActualCost": StringAttributeClass, // Shows the sum of the amounts entered in the Total Cost of Campaign Activities and Miscellaneous Costs fields."]), 
        "totalActualCostBase": StringAttributeClass, // Value of the Total Cost of Campaign in base currency."]), 
        "totalCampaignActivityActualCost": StringAttributeClass, // Shows the sum of the values entered in the Actual Cost field on all campaign activities related to the campaign."]), 
        "totalCampaignActivityActualCostBase": StringAttributeClass, // Value of the Total Cost of Campaign Activities in base currency."]), 
        "typeCode": StringAttributeClass, // Select the type of the campaign."]), 
        "typeCode_display": StringAttributeClass, // 
        "priceListId": UUIDAttributeClass, // Choose the price list associated with this item to make sure the products associated with the campaign are offered at the correct prices."]), 
        "entityImageId": UUIDAttributeClass, // "])
      ])
      .registerPath("crm_campaigns");
  }
}
mixin(EntityCalls!("CRMCampaign"));

unittest {
  version(test_model_crm) {
    assert(CRMCampaign);

  auto entity = CRMCampaign;
  // auto repository = OOPFileRepository("./tests");
/* /*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */ 
  }
}