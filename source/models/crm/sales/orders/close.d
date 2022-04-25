module models.crm.sales.orders.close;

@safe:
import uim.entities;

// Activity generated automatically when an order is closed.
class DCRMOrderClose : DOOPEntity {
  mixin(EntityThis!("CRMOrderClose"));

  override void initialize() {
    super.initialize;

    this
      .addAttributes([
        "createdOnBehalfBy": OOPLinkAttribute("aplUser").descriptions(["en":"Shows who created the record on behalf of another user."]),
        "modifiedOnBehalfBy": OOPLinkAttribute("aplUser").descriptions(["en":"Shows who last updated the record on behalf of another user."]),
        "overriddenCreatedOn": OOPTimestampAttribute.descriptions(["en":"Date and time that the record was migrated."]),
        "importSequenceNumber": OOPIntegerAttribute.descriptions(["en":"Sequence number of the import that created this record."]),
        "ownerId": OOPUUIDAttribute.descriptions(["en":"Owner Id"]),
        "ownerIdType": OOPStringAttribute.descriptions(["en":"The type of owner, either User or Team."]),
        "owningBusinessUnitId": OOPLinkAttribute("aplBusinessUnit").descriptions(["en":"Unique identifier for the business unit that owns the record"]),
        "owningUserId": OOPLinkAttribute("aplUser").descriptions(["en":"Unique identifier of the user that owns the activity."]),
        "owningTeamId": OOPLinkAttribute("aplTeam").descriptions(["en":"Unique identifier for the team that owns the record."]),
        "timeZoneRuleVersionNumber": OOPIntegerAttribute.descriptions(["en":"For internal use only."]),
        "utcConversionTimeZoneCode": OOPStringAttribute.descriptions(["en":"Time zone code that was in use when the record was created."]),
        "activityId": OOPLinkAttribute("aplActivity").descriptions(["en":"Unique identifier of the activity."]),
        "activityTypeCode": OOPStringAttribute.descriptions(["en":"Type of activity."]),
        "isBilled": OOPBooleanAttribute.descriptions(["en":"Information regarding whether the fax activity was billed as part of resolving a case."]),
        "isRegularActivity": OOPBooleanAttribute.descriptions(["en":"Information regarding whether the activity is a regular activity type or event type."]),
        "isWorkflowCreated": OOPBooleanAttribute.descriptions(["en":"Information regarding whether the activity was created from a workflow rule."]),
        "priorityCode": OOPStringAttribute.descriptions(["en":"Priority of the activity."]),
        "priorityCode_display": OOPStringAttribute.descriptions(["en":""]),
        "regardingObjectId": OOPUUIDAttribute.descriptions(["en":"Unique identifier of the object with which the activity is associated."]),
        "regardingObjectTypeCode": OOPStringAttribute.descriptions(["en":"The name of the entity linked by regardingObjectId"]),
        "scheduledEnd": OOPStringAttribute.descriptions(["en":"Scheduled end time of the activity."]),
        "scheduledStart": OOPStringAttribute.descriptions(["en":"Scheduled start time of the activity."]),
        "sortDate": OOPAttributeDate.descriptions(["en":"Shows the date and time by which the activities are sorted."]),
        "subject": OOPStringAttribute.descriptions(["en":"Subject associated with the activity."]),
        "scheduledDurationMinutes": OOPStringAttribute.descriptions(["en":"Scheduled duration of the activity, specified in minutes."]),
        "actualDurationMinutes": OOPStringAttribute.descriptions(["en":"Actual duration of the activity in minutes."]),
        "actualEnd": OOPStringAttribute.descriptions(["en":"Actual end time of the activity."]),
        "actualStart": OOPStringAttribute.descriptions(["en":"Actual start time of the activity."]),
        "category": OOPStringAttribute.descriptions(["en":"Type a category to identify the activity type, such as lead outreach, customer follow-up, or service alert, to tie the eactivity to a business group or function."]),
        "subcategory": OOPStringAttribute.descriptions(["en":"Type a subcategory to identify the activity type and relate the activity to a specific product, sales region, business group, or other function."]),
        "activityAdditionalParams": OOPStringAttribute.descriptions(["en":"Additional information provided by the external application as JSON. For internal use only."]),
        "to": OOPStringAttribute.descriptions(["en":"Person who is the receiver of the activity."]),
        "from": OOPStringAttribute.descriptions(["en":"Person who the activity is from."]),
        "instanceTypeCode": OOPStringAttribute.descriptions(["en":"Type of instance of a recurring series."]),
        "instanceTypeCode_display": OOPStringAttribute.descriptions(["en":""]),
        "isMapiPrivate": OOPBooleanAttribute.descriptions(["en":"For internal use only."]),
        "organizer": OOPStringAttribute.descriptions(["en":"The user who is in charge of coordinating or leading the activity."]),
        "requiredAttendees": OOPStringAttribute.descriptions(["en":"Enter the account, contact, lead, user, or other equipment resources that are required to attend the recurring appointment."]),
        "optionalAttendees": OOPStringAttribute.descriptions(["en":"Enter the account, contact, lead, user, or other equipment resources that are not needed at the recurring appointment, but can optionally attend."]),
        "seriesId": OOPUUIDAttribute.descriptions(["en":"Uniqueidentifier specifying the id of recurring series of an instance."]),
        "BCC": OOPStringAttribute.descriptions(["en":"Enter the recipients that are included in the letter distribution, but are not displayed to other recipients."]),
        "CC": OOPStringAttribute.descriptions(["en":"Enter the recipients that should be copied on the letter."]),
        "sentOn": OOPTimestampAttribute.descriptions(["en":"Date and time when the activity was sent."]),
        "senderMailboxId": OOPUUIDAttribute.descriptions(["en":"Unique identifier of the mailbox associated with the sender of the email message."]),
        "deliveryPriorityCode": OOPStringAttribute.descriptions(["en":"Priority of delivery of the activity to the email server."]),
        "deliveryPriorityCode_display": OOPStringAttribute.descriptions(["en":""]),
        "resources": OOPStringAttribute.descriptions(["en":"Users or facility/equipment that are required for the activity."]),
        "community": OOPStringAttribute.descriptions(["en":"Shows how contact about the activity originated, such as from Twitter or Facebook. This field is read-only."]),
        "community_display": OOPStringAttribute.descriptions(["en":""]),
        "leftVoiceMail": OOPStringAttribute.descriptions(["en":"Left the voice mail"]),
        "deliveryLastAttemptedOn": OOPTimestampAttribute.descriptions(["en":"Date and time when the delivery of the activity was last attempted."]),
        "exchangeItemId": OOPUUIDAttribute.descriptions(["en":"The message id of activity which is returned from Exchange Server."]),
        "exchangeWebLink": OOPStringAttribute.descriptions(["en":"Shows the web link of Activity of type email."]),
        "postponeActivityProcessingUntil": OOPStringAttribute.descriptions(["en":"For internal use only."]),
        "customers": OOPStringAttribute.descriptions(["en":"Customer with which the activity is associated."]),
        "partners": OOPStringAttribute.descriptions(["en":"Outsource vendor with which activity is associated."]),
        "stateCode": OOPStringAttribute.descriptions(["en":"Shows whether the order close activity is open, completed, or canceled. By default, order close activities are completed."]),
        "stateCode_display": OOPStringAttribute.descriptions(["en":""]),
        "statusCode": OOPStringAttribute.descriptions(["en":"Reason for the status of the order close activity."]),
        "statusCode_display": OOPStringAttribute.descriptions(["en":""]),
        "transactionCurrencyId": OOPLinkAttribute("aplCurrency").descriptions(["en":"Unique identifier of the currency associated with the activitypointer."]),
        "exchangeRate": OOPStringAttribute.descriptions(["en":"Exchange rate for the currency associated with the activitypointer with respect to the base currency."]),
        "traversedPath": OOPStringAttribute.descriptions(["en":"For internal use only."]),
        "processId": OOPUUIDAttribute.descriptions(["en":"Unique identifier of the Process."]),
        "stageId": OOPUUIDAttribute.descriptions(["en":"Unique identifier of the Stage."]),
        "SLAId": OOPLinkAttribute("aplSLA").descriptions(["en":"Choose the service level agreement (SLA) that you want to apply to the case record."]),
        "SLAInvokedId": OOPUUIDAttribute.descriptions(["en":"Last SLA that was applied to this case. This field is for internal use only."]),
        "onHoldTime": OOPAttributeTime.descriptions(["en":"Shows how long, in minutes, that the record was on hold."]),
        "lastOnHoldTime": OOPAttributeTime.descriptions(["en":"Contains the date and time stamp of the last on hold time."]),
        "serviceId": OOPUUIDAttribute.descriptions(["en":"Unique identifier of the service with which the order close activity is associated."]),
        "orderNumber": OOPIntegerAttribute.descriptions(["en":"Order number."]),
        "revision": OOPStringAttribute.descriptions(["en":"Order revision number."]),
        "salesOrderId": OOPUUIDAttribute.descriptions(["en":"Unique identifier of the order with which the order close activity is associated."]),
        "salesOrderIdType": OOPStringAttribute.descriptions(["en":"The name of the entity linked by salesOrderId"]),
        "createdByExternalParty": OOPStringAttribute.descriptions(["en":"Shows the external party who created the record."]),
        "modifiedByExternalParty": OOPStringAttribute.descriptions(["en":"Shows the external party who modified the record."]),
      ])
      .registerPath("crm_ordercloses");
  }
}
mixin(EntityCalls!("CRMOrderClose"));

unittest {
  version(test_model_crm) {
    assert(CRMOrderClose);
  
  auto entity = CRMOrderClose;
  // auto repository = OOPFileRepository("./tests");
/* /*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */ 
  }
}