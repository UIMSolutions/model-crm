module models.crm.sales.opportunities.close;

@safe:
import uim.entities;

// Activity that is created automatically when an opportunity is closed, containing information such as the description of the closing and actual revenue.
class DAPLOpportunityClose : DOOPEntity {
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
      "activityId": OOPAttributeLink("aplActivity").descriptions(["en":"Unique identifier of the activity."]),
      "activityTypeCode": OOPAttributeString.descriptions(["en":"Type of activity."]),
      "isBilled": OOPAttributeBoolean.descriptions(["en":"Information regarding whether the fax activity was billed as part of resolving a case."]),
      "isRegularActivity": OOPAttributeBoolean.descriptions(["en":"Information regarding whether the activity is a regular activity type or event type."]),
      "isWorkflowCreated": OOPAttributeBoolean.descriptions(["en":"Information regarding whether the activity was created from a workflow rule."]),
      "priorityCode": OOPAttributeString.descriptions(["en":"Priority of the activity."]),
      "priorityCode_display": OOPAttributeString.descriptions(["en":""]),
      "regardingObjectId": OOPAttributeUUID.descriptions(["en":"Unique identifier of the object with which the activity is associated."]),
      "regardingObjectTypeCode": OOPAttributeString.descriptions(["en":"The name of the entity linked by regardingObjectId"]),
      "scheduledEnd": OOPAttributeString.descriptions(["en":"Scheduled end time of the activity."]),
      "scheduledStart": OOPAttributeString.descriptions(["en":"Scheduled start time of the activity."]),
      "sortDate": OOPAttributeDate.descriptions(["en":"Shows the date and time by which the activities are sorted."]),
      "subject": OOPAttributeString.descriptions(["en":"Subject associated with the activity."]),
      "scheduledDurationMinutes": OOPAttributeString.descriptions(["en":"Scheduled duration of the activity, specified in minutes."]),
      "actualDurationMinutes": OOPAttributeString.descriptions(["en":"Actual duration of the activity in minutes."]),
      "actualEnd": OOPAttributeString.descriptions(["en":"Actual end time of the activity."]),
      "actualStart": OOPAttributeString.descriptions(["en":"Actual start time of the activity."]),
      "category": OOPAttributeString.descriptions(["en":"Type a category to identify the activity type, such as lead outreach, customer follow-up, or service alert, to tie the eactivity to a business group or function."]),
      "subcategory": OOPAttributeString.descriptions(["en":"Type a subcategory to identify the activity type and relate the activity to a specific product, sales region, business group, or other function."]),
      "activityAdditionalParams": OOPAttributeString.descriptions(["en":"Additional information provided by the external application as JSON. For internal use only."]),
      "to": OOPAttributeString.descriptions(["en":"Person who is the receiver of the activity."]),
      "from": OOPAttributeString.descriptions(["en":"Person who the activity is from."]),
      "instanceTypeCode": OOPAttributeString.descriptions(["en":"Type of instance of a recurring series."]),
      "instanceTypeCode_display": OOPAttributeString.descriptions(["en":""]),
      "isMapiPrivate": OOPAttributeBoolean.descriptions(["en":"For internal use only."]),
      "organizer": OOPAttributeString.descriptions(["en":"The user who is in charge of coordinating or leading the activity."]),
      "requiredAttendees": OOPAttributeString.descriptions(["en":"Enter the account, contact, lead, user, or other equipment resources that are required to attend the recurring appointment."]),
      "optionalAttendees": OOPAttributeString.descriptions(["en":"Enter the account, contact, lead, user, or other equipment resources that are not needed at the recurring appointment, but can optionally attend."]),
      "seriesId": OOPAttributeUUID.descriptions(["en":"Uniqueidentifier specifying the id of recurring series of an instance."]),
      "BCC": OOPAttributeString.descriptions(["en":"Enter the recipients that are included in the letter distribution, but are not displayed to other recipients."]),
      "CC": OOPAttributeString.descriptions(["en":"Enter the recipients that should be copied on the letter."]),
      "sentOn": OOPAttributeTimestamp.descriptions(["en":"Date and time when the activity was sent."]),
      "senderMailboxId": OOPAttributeUUID.descriptions(["en":"Unique identifier of the mailbox associated with the sender of the email message."]),
      "deliveryPriorityCode": OOPAttributeString.descriptions(["en":"Priority of delivery of the activity to the email server."]),
      "deliveryPriorityCode_display": OOPAttributeString.descriptions(["en":""]),
      "resources": OOPAttributeString.descriptions(["en":"Users or facility/equipment that are required for the activity."]),
      "community": OOPAttributeString.descriptions(["en":"Shows how contact about the activity originated, such as from Twitter or Facebook. This field is read-only."]),
      "community_display": OOPAttributeString.descriptions(["en":""]),
      "leftVoiceMail": OOPAttributeString.descriptions(["en":"Left the voice mail"]),
      "deliveryLastAttemptedOn": OOPAttributeTimestamp.descriptions(["en":"Date and time when the delivery of the activity was last attempted."]),
      "exchangeItemId": OOPAttributeUUID.descriptions(["en":"The message id of activity which is returned from Exchange Server."]),
      "exchangeWebLink": OOPAttributeString.descriptions(["en":"Shows the web link of Activity of type email."]),
      "postponeActivityProcessingUntil": OOPAttributeString.descriptions(["en":"For internal use only."]),
      "customers": OOPAttributeString.descriptions(["en":"Customer with which the activity is associated."]),
      "partners": OOPAttributeString.descriptions(["en":"Outsource vendor with which activity is associated."]),
      "stateCode": OOPAttributeString.descriptions(["en":"Shows whether the opportunity close activity is open, completed, or canceled. By default, opportunity close activities are completed unless the opportunity is reactivated, which updates them to canceled."]),
      "stateCode_display": OOPAttributeString.descriptions(["en":""]),
      "statusCode": OOPAttributeString.descriptions(["en":"Reason for the status of the opportunity close activity."]),
      "statusCode_display": OOPAttributeString.descriptions(["en":""]),
      "transactionCurrencyId": OOPAttributeLink("aplCurrency").descriptions(["en":"Choose the local currency for the record to make sure budgets are reported in the correct currency."]),
      "exchangeRate": OOPAttributeString.descriptions(["en":"Shows the conversion rate of the record's currency. The exchange rate is used to convert all money fields in the record from the local currency to the system's default currency."]),
      "traversedPath": OOPAttributeString.descriptions(["en":"For internal use only."]),
      "processId": OOPAttributeUUID.descriptions(["en":"Unique identifier of the Process."]),
      "stageId": OOPAttributeUUID.descriptions(["en":"Unique identifier of the Stage."]),
      "SLAId": OOPAttributeLink("aplSLA").descriptions(["en":"Choose the service level agreement (SLA) that you want to apply to the case record."]),
      "SLAInvokedId": OOPAttributeUUID.descriptions(["en":"Last SLA that was applied to this case. This field is for internal use only."]),
      "onHoldTime": OOPAttributeTime.descriptions(["en":"Shows how long, in minutes, that the record was on hold."]),
      "lastOnHoldTime": OOPAttributeTime.descriptions(["en":"Contains the date and time stamp of the last on hold time."]),
      "serviceId": OOPAttributeUUID.descriptions(["en":"Unique identifier of the service with which the opportunity close activity is associated."]),
      "actualRevenue": OOPAttributeString.descriptions(["en":"Actual revenue generated for the opportunity."]),
      "actualRevenueBase": OOPAttributeString.descriptions(["en":"Value of the Actual Revenue in base currency."]),
      "competitorId": OOPAttributeUUID.descriptions(["en":"Unique identifier of the competitor with which the opportunity close activity is associated."]),
      "opportunityId": OOPAttributeUUID.descriptions(["en":"Unique identifier of the opportunity closed."]),
      "opportunityIdType": OOPAttributeString.descriptions(["en":"The name of the entity linked by opportunityId"]),
      "createdByExternalParty": OOPAttributeString.descriptions(["en":"Shows the external party who created the record."]),
      "modifiedByExternalParty": OOPAttributeString.descriptions(["en":"Shows the external party who modified the record."]),
    ]);
  }

  override string entityClass() { return "aplOpportunityClose"; }
  override string entityClasses() { return "aplOpportunityCloses"; }

  this(UUID myId) { 
    this(); this.id(myId); }
  this(string myName) { 
    this(); this.name(myName); }
  this(UUID myId, string myName) { 
    this(); this.id(myId).name(myName); }
  this(Json aJson) { 
    this(); this.fromJson(aJson); }

  // mixin(GetEntity!("activity", "activityId", "APLActivity"));
}
auto APLOpportunityClose() { return new DAPLOpportunityClose; } 
auto APLOpportunityClose(Json json) { return new DAPLOpportunityClose(json); } 

unittest {
  version(uim_entities) {
    assert(APLOpportunityClose);
  
  auto entity = APLOpportunityClose;
  // auto repository = OOPFileRepository("./tests");
/* /*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */ 
  }
}