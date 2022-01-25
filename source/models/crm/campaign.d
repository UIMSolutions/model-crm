module models.crm.campaign;

@safe:
import uim.entities;

// Container for campaign activities and responses, sales literature, products, and lists to create, plan, execute, and track the results of a specific marketing campaign through its life.
class DAPLCampaign : DOOPEntity {
  this() { super();
    this.attributes([
      "createdOnBehalfBy": OOPAttributeLink("aplUser").descriptions(["en":"Shows who created the record on behalf of another user."]), 
      "modifiedOnBehalfBy": OOPAttributeLink("aplUser").descriptions(["en":"Shows who last updated the record on behalf of another user."]), 
      "overriddenCreatedOn": OOPAttributeTimestamp.descriptions(["en":"Date and time that the record was migrated."]), 
      "importSequenceNumber": OOPAttributeNumber.descriptions(["en":"Unique identifier of the data import or data migration that created this record."]), 
      "ownerId": OOPAttributeUUID.descriptions(["en":"Owner Id"]), 
      "ownerIdType": OOPAttributeString.descriptions(["en":"The type of owner, either User or Team."]), 
      "owningBusinessUnitId": OOPAttributeLink("aplBusinessUnit").descriptions(["en":"Unique identifier for the business unit that owns the record"]), 
      "owningUserId": OOPAttributeLink("aplUser").descriptions(["en":"Unique identifier of the user that owns the activity."]), 
      "owningTeamId": OOPAttributeLink("aplTeam").descriptions(["en":"Unique identifier for the team that owns the record."]), 
      "timeZoneRuleVersionNumber": OOPAttributeNumber.descriptions(["en":"For internal use only."]), 
      "utcConversionTimeZoneCode": OOPAttributeString.descriptions(["en":"Time zone code that was in use when the record was created."]), 
      "campaignId": OOPAttributeUUID.descriptions(["en":"Unique identifier of the campaign."]), 
      "emailAddress": OOPAttributeString.descriptions(["en":"The primary email address for the entity."]), 
      "processId": OOPAttributeUUID.descriptions(["en":"Contains the id of the process associated with the entity."]), 
      "stageId": OOPAttributeUUID.descriptions(["en":"Contains the id of the stage where the entity is located."]), 
      "traversedPath": OOPAttributeString.descriptions(["en":"A comma separated list of string values representing the unique identifiers of stages in a Business Process Flow Instance in the order that they occur."]), 
      "actualEnd": OOPAttributeString.descriptions(["en":"Enter the date when the campaign was closed or completed."]), 
      "actualStart": OOPAttributeString.descriptions(["en":"Enter the actual start date and time for the campaign."]), 
      "budgetedCost": OOPAttributeString.descriptions(["en":"Type the amount budgeted for the campaign to define a limit for how much you can spend."]), 
      "transactionCurrencyId": OOPAttributeLink("aplCurrency").descriptions(["en":"Choose the local currency for the record to make sure budgets are reported in the correct currency."]), 
      "exchangeRate": OOPAttributeString.descriptions(["en":"Shows the conversion rate of the record's currency. The exchange rate is used to convert all money fields in the record from the local currency to the system's default currency."]), 
      "budgetedCostBase": OOPAttributeString.descriptions(["en":"Value of the Budget Allocated in base currency."]), 
      "codeName": OOPAttributeString.descriptions(["en":"Type a number or other tracking code to identify the campaign. If no value is entered, a code will be generated automatically."]), 
      "expectedResponse": OOPAttributeString.descriptions(["en":"Type the expected response rate for the campaign as a full number between 0 and 100."]), 
      "expectedRevenue": OOPAttributeString.descriptions(["en":"Type the expected revenue for the campaign for return on investment projections and post-campaign reporting."]), 
      "expectedRevenueBase": OOPAttributeString.descriptions(["en":"Value of the Estimated Revenue in base currency."]), 
      "isTemplate": OOPAttributeBoolean.descriptions(["en":"Select whether the campaign is a template that can be copied when you create future campaigns."]), 
      "message": OOPAttributeString.descriptions(["en":"Type the promotional message or marketing copy for the campaign."]), 
      "objective": OOPAttributeString.descriptions(["en":"Type the objective of the campaign, including products, services, discounts, and pricing."]), 
      "otherCost": OOPAttributeString.descriptions(["en":"Type the sum of any miscellaneous campaign costs not included in the campaign activities to make sure the actual cost of the campaign is calculated correctly."]), 
      "otherCostBase": OOPAttributeString.descriptions(["en":"Value of the Miscellaneous Costs in base currency."]), 
      "promotionCodeName": OOPAttributeString.descriptions(["en":"Type a promotional code to track sales related to the campaign or allow customers to redeem a discount offer."]), 
      "proposedEnd": OOPAttributeString.descriptions(["en":"Enter the date when the campaign is scheduled to end."]), 
      "proposedStart": OOPAttributeString.descriptions(["en":"Enter the date when the campaign is scheduled to start."]), 
      "stateCode": OOPAttributeString.descriptions(["en":"Shows the status of the campaign. By default, campaigns are active and can't be deactivated."]), 
      "stateCode_display": OOPAttributeString.descriptions(["en":""]), 
      "statusCode": OOPAttributeString.descriptions(["en":"Select the campaign's status."]), 
      "statusCode_display": OOPAttributeString.descriptions(["en":""]), 
      "totalActualCost": OOPAttributeString.descriptions(["en":"Shows the sum of the amounts entered in the Total Cost of Campaign Activities and Miscellaneous Costs fields."]), 
      "totalActualCostBase": OOPAttributeString.descriptions(["en":"Value of the Total Cost of Campaign in base currency."]), 
      "totalCampaignActivityActualCost": OOPAttributeString.descriptions(["en":"Shows the sum of the values entered in the Actual Cost field on all campaign activities related to the campaign."]), 
      "totalCampaignActivityActualCostBase": OOPAttributeString.descriptions(["en":"Value of the Total Cost of Campaign Activities in base currency."]), 
      "typeCode": OOPAttributeString.descriptions(["en":"Select the type of the campaign."]), 
      "typeCode_display": OOPAttributeString.descriptions(["en":""]), 
      "priceListId": OOPAttributeUUID.descriptions(["en":"Choose the price list associated with this item to make sure the products associated with the campaign are offered at the correct prices."]), 
      "entityImageId": OOPAttributeUUID.descriptions(["en":""]), 
    ]);
  }

  override string entityClass() { return "aplCampaign"; }
  override string entityClasses() { return "aplCampaigns"; }

  this(UUID myId) { 
    this(); this.id(myId); }
  this(string myName) { 
    this(); this.name(myName); }
  this(UUID myId, string myName) { 
    this(); this.id(myId).name(myName); }
  this(Json aJson) { 
    this(); this.fromJson(aJson); }

   // mixin(GetEntity!("campaign", "campaignId", "APLCampaign"));
}
auto APLCampaign() { return new DAPLCampaign; } 
auto APLCampaign(Json json) { return new DAPLCampaign(json); } 

unittest {
  version(uim_entities) {
    assert(APLCampaign);

  auto entity = APLCampaign;
  // auto repository = OOPFileRepository("./tests");
/* /*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */ 
  }
}