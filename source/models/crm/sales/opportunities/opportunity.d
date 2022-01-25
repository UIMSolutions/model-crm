module models.crm.sales.opportunities.opportunity;

@safe:
import uim.entities;

// Potential revenue-generating event, or sale to an account, which needs to be tracked through a sales process to completion.
class DAPLOpportunity : DOOPEntity {
  this() { super();
    this.attributes([
      "createdOnBehalfBy": OOPAttributeLink("aplUser").descriptions(["en":"Shows who created the record on behalf of another user."]),
      "modifiedOnBehalfBy": OOPAttributeLink("aplUser").descriptions(["en":"Shows who last updated the record on behalf of another user."]),
      "overriddenCreatedOn": OOPAttributeTimestamp.descriptions(["en":"Date and time that the record was migrated."]),
      "importSequenceNumber": OOPAttributeNumber.descriptions(["en":"Sequence number of the import that created this record."]),
      "ownerId": OOPAttributeUUID.descriptions(["en":"Owner Id"]),
      "ownerIdType": OOPAttributeString.descriptions(["en":"The type of owner, either User or Team."]),
      "owningBusinessUnitId": OOPAttributeLink("aplBusinessUnit").descriptions(["en":"Unique identifier for the business unit that owns the record"]),
      "owningUserId": OOPAttributeLink("aplUser").descriptions(["en":"Unique identifier of the user that owns the activity."]),
      "owningTeamId": OOPAttributeLink("aplTeam").descriptions(["en":"Unique identifier for the team that owns the record."]),
      "timeZoneRuleVersionNumber": OOPAttributeNumber.descriptions(["en":"For internal use only."]),
      "utcConversionTimeZoneCode": OOPAttributeString.descriptions(["en":"Time zone code that was in use when the record was created."]),
      "opportunityId": OOPAttributeUUID.descriptions(["en":"Unique identifier of the opportunity."]),
      "emailAddress": OOPAttributeString.descriptions(["en":"The primary email address for the entity."]),
      "processId": OOPAttributeUUID.descriptions(["en":"Contains the id of the process associated with the entity."]),
      "stageId": OOPAttributeUUID.descriptions(["en":"Contains the id of the stage where the entity is located."]),
      "traversedPath": OOPAttributeString.descriptions(["en":"A comma separated list of string values representing the unique identifiers of stages in a Business Process Flow Instance in the order that they occur."]),
      "actualCloseDate": OOPAttributeDate.descriptions(["en":"Shows the date and time when the opportunity was closed or canceled."]),
      "actualValue": OOPAttributeString.descriptions(["en":"Type the actual revenue amount for the opportunity for reporting and analysis of estimated versus actual sales. Field defaults to the Est. Revenue value when an opportunity is won."]),
      "transactionCurrencyId": OOPAttributeLink("aplCurrency").descriptions(["en":"Choose the local currency for the record to make sure budgets are reported in the correct currency."]),
      "exchangeRate": OOPAttributeString.descriptions(["en":"Shows the conversion rate of the record's currency. The exchange rate is used to convert all money fields in the record from the local currency to the system's default currency."]),
      "actualValueBase": OOPAttributeString.descriptions(["en":"Value of the Actual Revenue in base currency."]),
      "budgetAmount": OOPAttributeString.descriptions(["en":"Type a value between 0 and 1,000,000,000,000 to indicate the lead's potential available budget."]),
      "budgetAmountBase": OOPAttributeString.descriptions(["en":"Value of the Budget Amount in base currency."]),
      "budgetStatus": OOPAttributeString.descriptions(["en":"Select the likely budget status for the lead's company. This may help determine the lead rating or your sales approach."]),
      "budgetStatus_display": OOPAttributeString.descriptions(["en":""]),
      "closeProbability": OOPAttributeString.descriptions(["en":"Type a number from 0 to 100 that represents the likelihood of closing the opportunity. This can aid the sales team in their efforts to convert the opportunity in a sale."]),
      "completeInternalReview": OOPAttributeString.descriptions(["en":"Select whether an internal review has been completed for this opportunity."]),
      "confirmInterest": OOPAttributeString.descriptions(["en":"Select whether the lead confirmed interest in your offerings. This helps in determining the lead quality and the probability of it turning into an opportunity."]),
      "currentSituation": OOPAttributeString.descriptions(["en":"Type notes about the company or organization associated with the opportunity."]),
      "customerId": OOPAttributeUUID.descriptions(["en":"The customer account or contact to provide a quick link to additional customer details, such as account information, activities, and opportunities."]),
      "customerIdType": OOPAttributeString.descriptions(["en":"The type of customer, either Account or Contact."]),
      "customerNeed": OOPAttributeString.descriptions(["en":"Type some notes about the customer's requirements, to help the sales team identify products and services that could meet their requirements."]),
      "customerPainPoints": OOPAttributeString.descriptions(["en":"Type notes about the customer's pain points to help the sales team identify products and services that could address these pain points."]),
      "decisionMaker": OOPAttributeString.descriptions(["en":"Select whether your notes include information about who makes the purchase decisions at the lead's company."]),
      "developProposal": OOPAttributeString.descriptions(["en":"Select whether a proposal has been developed for the opportunity."]),
      "discountAmount": OOPAttributeString.descriptions(["en":"Type the discount amount for the opportunity if the customer is eligible for special savings."]),
      "discountAmountBase": OOPAttributeString.descriptions(["en":"Value of the Opportunity Discount Amount in base currency."]),
      "discountPercentage": OOPAttributePercentage.descriptions(["en":"Type the discount rate that should be applied to the Product Totals field to include additional savings for the customer in the opportunity."]),
      "estimatedCloseDate": OOPAttributeDate.descriptions(["en":"Enter the expected closing date of the opportunity to help make accurate revenue forecasts."]),
      "estimatedValue": OOPAttributeString.descriptions(["en":"Type the estimated revenue amount to indicate the potential sale or value of the opportunity for revenue forecasting. This field can be either system-populated or editable based on the selection in the Revenue field."]),
      "estimatedValueBase": OOPAttributeString.descriptions(["en":"Value of the Est. Revenue in base currency."]),
      "evaluateFit": OOPAttributeString.descriptions(["en":"Select whether the fit between the lead's requirements and your offerings was evaluated."]),
      "resolveFeedback": OOPAttributeString.descriptions(["en":"Choose whether the proposal feedback has been captured and resolved for the opportunity."]),
      "fileDebrief": OOPAttributeString.descriptions(["en":"Choose whether the sales team has recorded detailed notes on the proposals and the account's responses."]),
      "completeFinalProposal": OOPAttributeString.descriptions(["en":"Select whether a final proposal has been completed for the opportunity."]),
      "finalDecisionDate": OOPAttributeDate.descriptions(["en":"Enter the date and time when the final decision of the opportunity was made."]),
      "freightAmount": OOPAttributeString.descriptions(["en":"Type the cost of freight or shipping for the products included in the opportunity for use in calculating the Total Amount field."]),
      "freightAmountBase": OOPAttributeString.descriptions(["en":"Value of the Freight Amount in base currency."]),
      "initialCommunication": OOPAttributeString.descriptions(["en":"Choose whether someone from the sales team contacted this lead earlier."]),
      "initialCommunication_display": OOPAttributeString.descriptions(["en":""]),
      "isRevenueSystemCalculated": OOPAttributeBoolean.descriptions(["en":"Select whether the estimated revenue for the opportunity is calculated automatically based on the products entered or entered manually by a user."]),
      "need": OOPAttributeString.descriptions(["en":"Choose how high the level of need is for the lead's company."]),
      "need_display": OOPAttributeString.descriptions(["en":""]),
      "opportunityRatingCode": OOPAttributeString.descriptions(["en":"Select the expected value or priority of the opportunity based on revenue, customer status, or closing probability."]),
      "opportunityRatingCode_display": OOPAttributeString.descriptions(["en":""]),
      "parentAccountId": OOPAttributeUUID.descriptions(["en":"Choose an account to connect this opportunity to, so that the relationship is visible in reports and analytics, and to provide a quick link to additional details, such as financial information and activities."]),
      "parentContactId": OOPAttributeLink("aplContact").descriptions(["en":"Choose a contact to connect this opportunity to, so that the relationship is visible in reports and analytics."]),
      "participatesInWorkflow": OOPAttributeString.descriptions(["en":"Information about whether the opportunity participates in workflow rules."]),
      "priceLevelId": OOPAttributeUUID.descriptions(["en":"Choose the price list associated with this record to make sure the products associated with the campaign are offered at the correct prices."]),
      "pricingErrorCode": OOPAttributeString.descriptions(["en":"Pricing error for the opportunity."]),
      "pricingErrorCode_display": OOPAttributeString.descriptions(["en":""]),
      "priorityCode": OOPAttributeString.descriptions(["en":"Select the priority so that preferred customers or critical issues are handled quickly."]),
      "priorityCode_display": OOPAttributeString.descriptions(["en":""]),
      "purchaseProcess": OOPAttributeString.descriptions(["en":"Choose whether an individual or a committee will be involved in the purchase process for the lead."]),
      "purchaseProcess_display": OOPAttributeString.descriptions(["en":""]),
      "purchaseTimeFrame": OOPAttributeString.descriptions(["en":"Choose how long the lead will likely take to make the purchase."]),
      "purchaseTimeFrame_display": OOPAttributeString.descriptions(["en":""]),
      "salesStage": OOPAttributeString.descriptions(["en":"Select the sales stage of this opportunity to aid the sales team in their efforts to win this opportunity."]),
      "salesStage_display": OOPAttributeString.descriptions(["en":""]),
      "salesStageCode": OOPAttributeString.descriptions(["en":"Select the sales process stage for the opportunity to indicate the probability of closing the opportunity."]),
      "salesStageCode_display": OOPAttributeString.descriptions(["en":""]),
      "presentProposal": OOPAttributeString.descriptions(["en":"Select whether a proposal for the opportunity has been presented to the account."]),
      "captureProposalFeedback": OOPAttributeString.descriptions(["en":"Choose whether the proposal feedback has been captured for the opportunity."]),
      "proposedSolution": OOPAttributeString.descriptions(["en":"Type notes about the proposed solution for the opportunity."]),
      "pursuitDecision": OOPAttributeString.descriptions(["en":"Select whether the decision about pursuing the opportunity has been made."]),
      "qualificationComments": OOPAttributeString.descriptions(["en":"Type comments about the qualification or scoring of the lead."]),
      "quoteComments": OOPAttributeString.descriptions(["en":"Type comments about the quotes associated with the opportunity."]),
      "sendThankYouNote": OOPAttributeString.descriptions(["en":"Select whether a thank you note has been sent to the account for considering the proposal."]),
      "scheduleFollowupProspect": OOPAttributeString.descriptions(["en":"Enter the date and time of the prospecting follow-up meeting with the lead."]),
      "scheduleFollowUpQualify": OOPAttributeString.descriptions(["en":"Enter the date and time of the qualifying follow-up meeting with the lead."]),
      "scheduleProposalMeeting": OOPAttributeString.descriptions(["en":"Enter the date and time of the proposal meeting for the opportunity."]),
      "stateCode": OOPAttributeString.descriptions(["en":"Shows whether the opportunity is open, won, or lost. Won and lost opportunities are read-only and can't be edited until they are reactivated."]),
      "stateCode_display": OOPAttributeString.descriptions(["en":""]),
      "statusCode": OOPAttributeString.descriptions(["en":"Select the opportunity's status."]),
      "statusCode_display": OOPAttributeString.descriptions(["en":""]),
      "stepId": OOPAttributeUUID.descriptions(["en":"Shows the ID of the workflow step."]),
      "stepName": OOPAttributeString.descriptions(["en":"Shows the current phase in the sales pipeline for the opportunity. This is updated by a workflow."]),
      "timeLine": OOPAttributeString.descriptions(["en":"Select when the opportunity is likely to be closed."]),
      "timeLine_display": OOPAttributeString.descriptions(["en":""]),
      "totalAmount": OOPAttributeString.descriptions(["en":"Shows the total amount due, calculated as the sum of the products, discounts, freight, and taxes for the opportunity."]),
      "totalAmountBase": OOPAttributeString.descriptions(["en":"Value of the Total Amount in base currency."]),
      "totalAmountLessFreight": OOPAttributeString.descriptions(["en":"Shows the total product amount for the opportunity, minus any discounts. This value is added to freight and tax amounts in the calculation for the total amount of the opportunity."]),
      "totalAmountLessFreightBase": OOPAttributeString.descriptions(["en":"Value of the Total Pre-Freight Amount in base currency."]),
      "totalDiscountAmount": OOPAttributeString.descriptions(["en":"Shows the total discount amount, based on the discount price and rate entered on the opportunity."]),
      "totalDiscountAmountBase": OOPAttributeString.descriptions(["en":"Value of the Total Discount Amount in base currency."]),
      "totalLineItemAmount": OOPAttributeString.descriptions(["en":"Shows the sum of all existing and write-in products included on the opportunity, based on the specified price list and quantities."]),
      "totalLineItemAmountBase": OOPAttributeString.descriptions(["en":"Value of the Total Detail Amount in base currency."]),
      "totalLineItemDiscountAmount": OOPAttributeString.descriptions(["en":"Shows the total of the Manual Discount amounts specified on all products included in the opportunity. This value is reflected in the Total Detail Amount field on the opportunity and is added to any discount amount or rate specified on the opportunity."]),
      "totalLineItemDiscountAmountBase": OOPAttributeString.descriptions(["en":"Value of the Total Line Item Discount Amount in base currency."]),
      "totalTax": OOPAttributeString.descriptions(["en":"Shows the total of the Tax amounts specified on all products included in the opportunity, included in the Total Amount field calculation for the opportunity."]),
      "totalTaxBase": OOPAttributeString.descriptions(["en":"Value of the Total Tax in base currency."]),
      "identifyCustomerContacts": OOPAttributeString.descriptions(["en":"Select whether the customer contacts for this opportunity have been identified."]),
      "identifyCompetitors": OOPAttributeString.descriptions(["en":"Select whether information about competitors is included."]),
      "identifyPursuitTeam": OOPAttributeString.descriptions(["en":"Choose whether you have recorded who will pursue the opportunity."]),
      "presentFinalProposal": OOPAttributeString.descriptions(["en":"Select whether the final proposal has been presented to the account."]),
      "onHoldTime": OOPAttributeTime.descriptions(["en":"Shows the duration in minutes for which the opportunity was on hold."]),
      "lastOnHoldTime": OOPAttributeTime.descriptions(["en":"Contains the date time stamp of the last on hold time."]),
      "SLAId": OOPAttributeLink("aplSLA").descriptions(["en":"Choose the service level agreement (SLA) that you want to apply to the opportunity record."]),
      "SLAInvokedId": OOPAttributeUUID.descriptions(["en":"Last SLA that was applied to this opportunity. This field is for internal use only."]),
      "timeSpentByMeOnEmailAndMeetings": OOPAttributeString.descriptions(["en":"Total time spent for emails (read and write) and meetings by me in relation to the opportunity record."]),
      "originatingLeadId": OOPAttributeUUID.descriptions(["en":"Choose the lead that the opportunity was created from for reporting and analytics. The field is read-only after the opportunity is created and defaults to the correct lead when an opportunity is created from a converted lead."]),
      "accountId": OOPAttributeLink("aplAccount").descriptions(["en":"Unique identifier of the account with which the opportunity is associated."]),
      "contactId": OOPAttributeLink("aplContact").descriptions(["en":"Unique identifier of the contact associated with the opportunity."]),
      "campaignId": OOPAttributeUUID.descriptions(["en":"Shows the campaign that the opportunity was created from. The ID is used for tracking the success of the campaign."]),
    ]);
  }

  override string entityClass() { return "aplOpportunity"; }
  override string entityClasses() { return "aplOpportunities"; }

  this(UUID myId) { 
    this(); this.id(myId); }
  this(string myName) { 
    this(); this.name(myName); }
  this(UUID myId, string myName) { 
    this(); this.id(myId).name(myName); }
  this(Json aJson) { 
    this(); this.fromJson(aJson); }

  // mixin(GetEntity!("account", "accountId", "APLAccount"));
  // mixin(GetEntity!("campaign", "campaignId", "APLCampaign"));
  // mixin(GetEntity!("contact", "contactId", "APLContact"));
}
auto APLOpportunity() { return new DAPLOpportunity; } 
auto APLOpportunity(Json json) { return new DAPLOpportunity(json); } 

unittest {
  version(uim_entities) {
    assert(APLOpportunity);
  
  auto entity = APLOpportunity;
  // auto repository = OOPFileRepository("./tests");
/* /*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */ 
  }
}