module models.crm.sales.opportunities.close;

@safe:
import uim.entities;

// Activity that is created automatically when an opportunity is closed, containing information such as the description of the closing and actual revenue.
class DCRMOpportunityClose : DEntity {
  mixin(EntityThis!("CRMOpportunityClose"));

  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([
        "createdOnBehalfBy": UUIDAttribute, //Shows who created the record on behalf of another user."]),
        "modifiedOnBehalfBy": UUIDAttribute, //Shows who last updated the record on behalf of another user."]),
        "overriddenCreatedOn": TimestampAttribute, //Date and time that the record was migrated."]),
        "importSequenceNumber": IntegerAttribute, //Sequence number of the import that created this record."]),
        "ownerId": UUIDAttribute, // Owner Id"]),
        "ownerIdType": StringAttribute, // The type of owner, either User or Team."]),
        "owningBusinessUnitId": UUIDAttribute, //Unique identifier for the business unit that owns the record"]),
        "owningUserId": UUIDAttribute, //Unique identifier of the user that owns the activity."]),
        "owningTeamId": UUIDAttribute, //Unique identifier for the team that owns the record."]),
        "timeZoneRuleVersionNumber": IntegerAttribute, //For internal use only."]),
        "utcConversionTimeZoneCode": StringAttribute, // Time zone code that was in use when the record was created."]),
        "activityId": UUIDAttribute, // aplActivity").descriptions(["en":"Unique identifier of the activity."]),
        "activityTypeCode": StringAttribute, // Type of activity."]),
        "isBilled": BooleanAttribute, // Information regarding whether the fax activity was billed as part of resolving a case."]),
        "isRegularActivity": BooleanAttribute, // Information regarding whether the activity is a regular activity type or event type."]),
        "isWorkflowCreated": BooleanAttribute, // Information regarding whether the activity was created from a workflow rule."]),
        "priorityCode": StringAttribute, // Priority of the activity."]),
        "priorityCode_display": StringAttribute, //
        "regardingObjectId": UUIDAttribute, // Unique identifier of the object with which the activity is associated."]),
        "regardingObjectTypeCode": StringAttribute, // The name of the entity linked by regardingObjectId"]),
        "scheduledEnd": StringAttribute, // Scheduled end time of the activity."]),
        "scheduledStart": StringAttribute, // Scheduled start time of the activity."]),
        "sortDate": DateAttribute, // Shows the date and time by which the activities are sorted."]),
        "subject": StringAttribute, // Subject associated with the activity."]),
        "scheduledDurationMinutes": StringAttribute, // Scheduled duration of the activity, specified in minutes."]),
        "actualDurationMinutes": StringAttribute, // Actual duration of the activity in minutes."]),
        "actualEnd": StringAttribute, // Actual end time of the activity."]),
        "actualStart": StringAttribute, // Actual start time of the activity."]),
        "category": StringAttribute, // Type a category to identify the activity type, such as lead outreach, customer follow-up, or service alert, to tie the eactivity to a business group or function."]),
        "subcategory": StringAttribute, // Type a subcategory to identify the activity type and relate the activity to a specific product, sales region, business group, or other function."]),
        "activityAdditionalParams": StringAttribute, // Additional information provided by the external application as JSON. For internal use only."]),
        "to": StringAttribute, // Person who is the receiver of the activity."]),
        "from": StringAttribute, // Person who the activity is from."]),
        "instanceTypeCode": StringAttribute, // Type of instance of a recurring series."]),
        "instanceTypeCode_display": StringAttribute, //
        "isMapiPrivate": BooleanAttribute, // For internal use only."]),
        "organizer": StringAttribute, // The user who is in charge of coordinating or leading the activity."]),
        "requiredAttendees": StringAttribute, // Enter the account, contact, lead, user, or other equipment resources that are required to attend the recurring appointment."]),
        "optionalAttendees": StringAttribute, // Enter the account, contact, lead, user, or other equipment resources that are not needed at the recurring appointment, but can optionally attend."]),
        "seriesId": UUIDAttribute, // Uniqueidentifier specifying the id of recurring series of an instance."]),
        "BCC": StringAttribute, // Enter the recipients that are included in the letter distribution, but are not displayed to other recipients."]),
        "CC": StringAttribute, // Enter the recipients that should be copied on the letter."]),
        "sentOn": TimestampAttribute, //Date and time when the activity was sent."]),
        "senderMailboxId": UUIDAttribute, // Unique identifier of the mailbox associated with the sender of the email message."]),
        "deliveryPriorityCode": StringAttribute, // Priority of delivery of the activity to the email server."]),
        "deliveryPriorityCode_display": StringAttribute, //
        "resources": StringAttribute, // Users or facility/equipment that are required for the activity."]),
        "community": StringAttribute, // Shows how contact about the activity originated, such as from Twitter or Facebook. This field is read-only."]),
        "community_display": StringAttribute, //
        "leftVoiceMail": StringAttribute, // Left the voice mail"]),
        "deliveryLastAttemptedOn": TimestampAttribute, //Date and time when the delivery of the activity was last attempted."]),
        "exchangeItemId": UUIDAttribute, // The message id of activity which is returned from Exchange Server."]),
        "exchangeWebLink": StringAttribute, // Shows the web link of Activity of type email."]),
        "postponeActivityProcessingUntil": StringAttribute, // For internal use only."]),
        "customers": StringAttribute, // Customer with which the activity is associated."]),
        "partners": StringAttribute, // Outsource vendor with which activity is associated."]),
        "stateCode": StringAttribute, // Shows whether the opportunity close activity is open, completed, or canceled. By default, opportunity close activities are completed unless the opportunity is reactivated, which updates them to canceled."]),
        "stateCode_display": StringAttribute, //
        "statusCode": StringAttribute, // Reason for the status of the opportunity close activity."]),
        "statusCode_display": StringAttribute, //
        "transactionCurrencyId": CurrencyIdAttribute, // Choose the local currency for the record to make sure budgets are reported in the correct currency."]),
        "exchangeRate": StringAttribute, // Shows the conversion rate of the record's currency. The exchange rate is used to convert all money fields in the record from the local currency to the system's default currency."]),
        "traversedPath": StringAttribute, // For internal use only."]),
        "processId": UUIDAttribute, // Unique identifier of the Process."]),
        "stageId": UUIDAttribute, // Unique identifier of the Stage."]),
        "SLAId": UUIDAttribute, // aplSLA").descriptions(["en":"Choose the service level agreement (SLA) that you want to apply to the case record."]),
        "SLAInvokedId": UUIDAttribute, // Last SLA that was applied to this case. This field is for internal use only."]),
        "onHoldTime": TimeAttribute, // Shows how long, in minutes, that the record was on hold."]),
        "lastOnHoldTime": TimeAttribute, // Contains the date and time stamp of the last on hold time."]),
        "serviceId": UUIDAttribute, // Unique identifier of the service with which the opportunity close activity is associated."]),
        "actualRevenue": StringAttribute, // Actual revenue generated for the opportunity."]),
        "actualRevenueBase": StringAttribute, // Value of the Actual Revenue in base currency."]),
        "competitorId": UUIDAttribute, // Unique identifier of the competitor with which the opportunity close activity is associated."]),
        "opportunityId": UUIDAttribute, // Unique identifier of the opportunity closed."]),
        "opportunityIdType": StringAttribute, // The name of the entity linked by opportunityId"]),
        "createdByExternalParty": StringAttribute, // Shows the external party who created the record."]),
        "modifiedByExternalParty": StringAttribute, // Shows the external party who modified the record."]),
      ])
      .registerPath("crm_opportunitycloses");
  }
}
mixin(EntityCalls!("CRMOpportunityClose"));

unittest {
  version(test_model_crm) {
    assert(CRMOpportunityClose);
  
  auto entity = CRMOpportunityClose;
  // auto repository = OOPFileRepository("./tests");
/* /*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */ 
  }
}