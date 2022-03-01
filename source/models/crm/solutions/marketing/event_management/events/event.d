module models.crm.solutions.marketing.event_management.events.event;

@safe:
import uim.entities;

// Container to manage and plan marketing activities that take place at a specific venue or location.
class DCRMEvent : DOOPEntity {
  this() { super();
    this.attributes([
      "createdOnBehalfBy": OOPStringAttribute.descriptions(["en":"Shows who created the record on behalf of another user."]),
      "modifiedOnBehalfBy": OOPStringAttribute.descriptions(["en":"Shows who last updated the record on behalf of another user."]),
      "overriddenCreatedOn": OOPStringAttribute.descriptions(["en":"Date and time that the record was migrated."]),
      "importSequenceNumber": OOPAttributeNumber.descriptions(["en":"Sequence number of the import that created this record."]),
      "ownerId": OOPUUIDAttribute.descriptions(["en":"Owner Id"]),
      "ownerIdType": OOPStringAttribute.descriptions(["en":"The type of owner, either User or Team."]),
      "owningBusinessUnitId": OOPAttributeLink("aplBusinessUnit").descriptions(["en":"Unique identifier for the business unit that owns the record"]),
      "owningUserId": OOPStringAttribute.descriptions(["en":"Unique identifier of the user that owns the activity."]),
      "owningTeamId": OOPStringAttribute.descriptions(["en":"Unique identifier for the team that owns the record."]),
      "timeZoneRuleVersionNumber": OOPAttributeNumber.descriptions(["en":"For internal use only."]),
      "utcConversionTimeZoneCode": OOPStringAttribute.descriptions(["en":"Time zone code that was in use when the record was created."]),
      "eventId": OOPUUIDAttribute.descriptions(["en":"Unique identifier for entity instances"]),
      "stateCode": OOPStringAttribute.descriptions(["en":"Status of the Event"]),
      "stateCode_display": OOPStringAttribute.descriptions(["en":""]),
      "statusCode": OOPStringAttribute.descriptions(["en":"Reason for the status of the Event"]),
      "statusCode_display": OOPStringAttribute.descriptions(["en":""]),
      "processId": OOPUUIDAttribute.descriptions(["en":"Contains the id of the process associated with the entity."]),
      "stageId": OOPUUIDAttribute.descriptions(["en":"Contains the id of the stage where the entity is located."]),
      "traversedPath": OOPStringAttribute.descriptions(["en":"A comma separated list of string values representing the unique identifiers of stages in a Business Process Flow Instance in the order that they occur."]),
      "entityImageId": OOPUUIDAttribute.descriptions(["en":""]),
      "baseRecurrentEventID": OOPStringAttribute.descriptions(["en":""]),
      "bookedFlightReservations": OOPStringAttribute.descriptions(["en":"Flight reservations booking status"]),
      "bookedFlightReservations_display": OOPStringAttribute.descriptions(["en":""]),
      "bookRooms": OOPStringAttribute.descriptions(["en":""]),
      "bookRooms_display": OOPStringAttribute.descriptions(["en":""]),
      "budgetAllocated": OOPStringAttribute.descriptions(["en":""]),
      "transactionCurrencyId": OOPAttributeLink("aplCurrency").descriptions(["en":"Unique identifier of the currency associated with the entity."]),
      "exchangeRate": OOPStringAttribute.descriptions(["en":"Exchange rate for the currency associated with the entity with respect to the base currency."]),
      "budgetAllocatedBase": OOPStringAttribute.descriptions(["en":"Value of the Budget Allocated in base currency."]),
      "cateringRequired": OOPStringAttribute.descriptions(["en":""]),
      "cateringRequired_display": OOPStringAttribute.descriptions(["en":""]),
      "checkInCount": OOPStringAttribute.descriptions(["en":"Check-in count"]),
      "confirmedHotelChoices": OOPStringAttribute.descriptions(["en":"Hotel choices confirmation status"]),
      "confirmedHotelChoices_display": OOPStringAttribute.descriptions(["en":""]),
      "countdownInDays": OOPStringAttribute.descriptions(["en":""]),
      "createMarketingCollateral": OOPStringAttribute.descriptions(["en":""]),
      "createMarketingCollateral_display": OOPStringAttribute.descriptions(["en":""]),
      "definePackagesandPricing": OOPStringAttribute.descriptions(["en":""]),
      "definePackagesandPricing_display": OOPStringAttribute.descriptions(["en":""]),
      "defineSessions": OOPStringAttribute.descriptions(["en":""]),
      "defineSessions_display": OOPStringAttribute.descriptions(["en":""]),
      "defineTeam": OOPStringAttribute.descriptions(["en":""]),
      "defineTeam_display": OOPStringAttribute.descriptions(["en":""]),
      "description": OOPStringAttribute.descriptions(["en":""]),
      "developMarketingPlan": OOPStringAttribute.descriptions(["en":""]),
      "developMarketingPlan_display": OOPStringAttribute.descriptions(["en":""]),
      "earlyBirdCutOffDate": OOPAttributeDate.descriptions(["en":""]),
      "eventDebriefing": OOPStringAttribute.descriptions(["en":""]),
      "eventDebriefing_display": OOPStringAttribute.descriptions(["en":""]),
      "eventEndDate": OOPAttributeDate.descriptions(["en":""]),
      "eventFormat": OOPStringAttribute.descriptions(["en":""]),
      "eventFormat_display": OOPStringAttribute.descriptions(["en":""]),
      "eventStartDate": OOPAttributeDate.descriptions(["en":""]),
      "eventTimeZone": OOPStringAttribute.descriptions(["en":""]),
      "eventTimeZoneName": OOPStringAttribute.descriptions(["en":""]),
      "eventType": OOPStringAttribute.descriptions(["en":""]),
      "eventType_display": OOPStringAttribute.descriptions(["en":""]),
      "eventVenueCost": OOPStringAttribute.descriptions(["en":""]),
      "eventVenueCostBase": OOPStringAttribute.descriptions(["en":"Value of the Event Venue Cost in base currency."]),
      "expectedOutcome": OOPStringAttribute.descriptions(["en":""]),
      "followUpOnLeads": OOPStringAttribute.descriptions(["en":""]),
      "followUpOnLeads_display": OOPStringAttribute.descriptions(["en":""]),
      "guestLogistics": OOPStringAttribute.descriptions(["en":"Whether guest logistics are required or not."]),
      "guestLogistics_display": OOPStringAttribute.descriptions(["en":""]),
      "identifySpeakers": OOPStringAttribute.descriptions(["en":""]),
      "identifySpeakers_display": OOPStringAttribute.descriptions(["en":""]),
      "identifySponsors": OOPStringAttribute.descriptions(["en":""]),
      "identifySponsors_display": OOPStringAttribute.descriptions(["en":""]),
      "isRecurringEvent": OOPAttributeBoolean.descriptions(["en":""]),
      "isTemplate": OOPAttributeBoolean.descriptions(["en":""]),
      "isTemplate_display": OOPAttributeBoolean.descriptions(["en":""]),
      "language": OOPStringAttribute.descriptions(["en":"The language of the webinar"]),
      "language_display": OOPStringAttribute.descriptions(["en":""]),
      "makePaymentsDue": OOPStringAttribute.descriptions(["en":""]),
      "makePaymentsDue_display": OOPStringAttribute.descriptions(["en":""]),
      "manageRegistrationCount": OOPStringAttribute.descriptions(["en":""]),
      "manageRegistrationCount_display": OOPStringAttribute.descriptions(["en":""]),
      "maximumEventCapacity": OOPStringAttribute.descriptions(["en":""]),
      "maxNumberOfRegistrations": OOPStringAttribute.descriptions(["en":""]),
      "miscellaneousCosts": OOPStringAttribute.descriptions(["en":""]),
      "miscellaneousCostsBase": OOPStringAttribute.descriptions(["en":"Value of the Miscellaneous Costs in base currency."]),
      "notifyAuthoritiesOfEvent": OOPStringAttribute.descriptions(["en":""]),
      "notifyAuthoritiesOfEvent_display": OOPStringAttribute.descriptions(["en":""]),
      "planRegistration": OOPStringAttribute.descriptions(["en":""]),
      "planRegistration_display": OOPStringAttribute.descriptions(["en":""]),
      "presentationManagerUrl": OOPAttributeUrl.descriptions(["en":""]),
      "primaryGoal": OOPStringAttribute.descriptions(["en":""]),
      "primaryGoal_display": OOPStringAttribute.descriptions(["en":""]),
      "primaryVenue": OOPStringAttribute.descriptions(["en":""]),
      "producer": OOPStringAttribute.descriptions(["en":""]),
      "publicEventUrl": OOPAttributeUrl.descriptions(["en":""]),
      "publishStatus": OOPStringAttribute.descriptions(["en":""]),
      "publishStatus_display": OOPStringAttribute.descriptions(["en":""]),
      "readableEventID": OOPStringAttribute.descriptions(["en":""]),
      "recurrencePattern": OOPStringAttribute.descriptions(["en":""]),
      "recurrentEventStatus": OOPStringAttribute.descriptions(["en":""]),
      "registrationCount": OOPStringAttribute.descriptions(["en":"Registration count of the Event."]),
      "registrationsTarget": OOPStringAttribute.descriptions(["en":""]),
      "requestSponsorship": OOPStringAttribute.descriptions(["en":""]),
      "requestSponsorship_display": OOPStringAttribute.descriptions(["en":""]),
      "revenueFromSponsorship": OOPStringAttribute.descriptions(["en":""]),
      "revenueFromSponsorshipBase": OOPStringAttribute.descriptions(["en":"Value of the Revenue from Sponsorship in base currency."]),
      "scheduleAirportPickups": OOPStringAttribute.descriptions(["en":"Airport pickups scheduling status"]),
      "scheduleAirportPickups_display": OOPStringAttribute.descriptions(["en":""]),
      "scheduleSessions": OOPStringAttribute.descriptions(["en":""]),
      "scheduleSessions_display": OOPStringAttribute.descriptions(["en":""]),
      "selectSpeakers": OOPStringAttribute.descriptions(["en":""]),
      "selectSpeakers_display": OOPStringAttribute.descriptions(["en":""]),
      "selectVendors": OOPStringAttribute.descriptions(["en":""]),
      "selectVendors_display": OOPStringAttribute.descriptions(["en":""]),
      "sendEventInvitation": OOPStringAttribute.descriptions(["en":"Event invitation sending status"]),
      "sendEventInvitation_display": OOPStringAttribute.descriptions(["en":""]),
      "sendMarketingMaterial": OOPStringAttribute.descriptions(["en":""]),
      "sendMarketingMaterial_display": OOPStringAttribute.descriptions(["en":""]),
      "sendPreEventReminders": OOPStringAttribute.descriptions(["en":""]),
      "sendPreEventReminders_display": OOPStringAttribute.descriptions(["en":""]),
      "sendThankYouEmails": OOPStringAttribute.descriptions(["en":""]),
      "sendThankYouEmails_display": OOPStringAttribute.descriptions(["en":""]),
      "showWaitlist": OOPStringAttribute.descriptions(["en":""]),
      "targetRevenue": OOPStringAttribute.descriptions(["en":""]),
      "targetRevenueBase": OOPStringAttribute.descriptions(["en":"Value of the Target Revenue in base currency."]),
      "teamDebriefing": OOPStringAttribute.descriptions(["en":""]),
      "teamDebriefing_display": OOPStringAttribute.descriptions(["en":""]),
      "totalCostOfEventsActivities": OOPStringAttribute.descriptions(["en":""]),
      "totalCostOfEventsActivitiesBase": OOPStringAttribute.descriptions(["en":"Value of the Total Cost of Events Activities in base currency."]),
      "totalCostOfExternalMembers": OOPStringAttribute.descriptions(["en":""]),
      "totalCostOfExternalMembersBase": OOPStringAttribute.descriptions(["en":"Value of the Total cost of External Members in base currency."]),
      "totalRegistrationFee": OOPStringAttribute.descriptions(["en":""]),
      "totalRegistrationFeeBase": OOPStringAttribute.descriptions(["en":"Value of the Total Registration Fee in base currency."]),
      "totalRevenueFromTheEvent": OOPStringAttribute.descriptions(["en":""]),
      "totalRevenueFromTheEventBase": OOPStringAttribute.descriptions(["en":"Value of the Total Revenue from the event in base currency."]),
      "waitlistStartingPoint": OOPStringAttribute.descriptions(["en":"Waitlist Starting Point"]),
      "waitlistthisEvent": OOPStringAttribute.descriptions(["en":""]),
      "waitlistthisEvent_display": OOPStringAttribute.descriptions(["en":""]),
      "webinarConfigurationId": OOPUUIDAttribute.descriptions(["en":"Webinar Configuration"]),
      "webinarID": OOPStringAttribute.descriptions(["en":"Webinar ID of the Event."]),
      "webinarNotificationSeen": OOPStringAttribute.descriptions(["en":"Whether the webinar creation notification has been seen or not"]),
      "webinarOperation": OOPStringAttribute.descriptions(["en":""]),
      "webinarStatus": OOPStringAttribute.descriptions(["en":""]),
      "webinarStatusReason": OOPStringAttribute.descriptions(["en":""]),
      "webinarType": OOPStringAttribute.descriptions(["en":""]),
      "webinarUrl": OOPAttributeUrl.descriptions(["en":"URL of the webinar. This might be URL of external webinar provider."]),
      "sendSurveys": OOPStringAttribute.descriptions(["en":""]),
      "sendSurveys_display": OOPStringAttribute.descriptions(["en":""]),
      "eventURLspecified": OOPStringAttribute.descriptions(["en":"Determines whether an event URL is specified."]),
      "sessionsCount": OOPStringAttribute.descriptions(["en":"The number of sessions in this event"]),
      "sessionsCountDate": OOPAttributeDate.descriptions(["en":"Last Updated time of rollup field Session count."]),
      "sessionsCountState": OOPStringAttribute.descriptions(["en":"State of rollup field Session count."]),
      "allowAnonymousRegistrations": OOPStringAttribute.descriptions(["en":""]),
      "portalBannerImage": OOPStringAttribute.descriptions(["en":"The portal banner image."]),
      "eventUrl": OOPAttributeUrl.descriptions(["en":""]),
    ]);
  }

  override string entityClass() { return "aplEvent"; }
  override string entityClasses() { return "aplEvents"; }

  this(UUID myId) { 
    this(); this.id(myId); }
  this(string myName) { 
    this(); this.name(myName); }
  this(UUID myId, string myName) { 
    this(); this.id(myId).name(myName); }
  this(Json aJson) { 
    this(); this.fromJson(aJson); }
}
auto CRMEvent() { return new DCRMEvent; } 
auto CRMEvent(Json json) { return new DCRMEvent(json); } 

unittest {
  version(test_model_crm) {
    assert(CRMEvent);
  
  auto entity = CRMEvent;
  // auto repository = OOPFileRepository("./tests");
/* /*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */ 
  }
}

// ------------- JS Scripts

/* auto entity(string classname, string myApi) {  
  string result;
  
  result ~= jsClass(classname, [
    jsMethod("constructor", ["data"], "")
  ]);

  result ~= "async function fetchThemes(sessionId) {
  try {
    let response = await fetch(myApi, {
      method: \"POST\",
      body: JSON.stringify({ sessionId: sessionId }),
      headers: { \"Content-Type\": \"application/json\" },
    });
    let data = await response.json();
    return data.entities;
  } catch (error) {
    console.log(error);
  }
}";

  return result;
}

auto entities() {  
  return 
    jsLet([
      "unsortButtons":"[nameSort, displaySort]",
      "sortButtons":"[nameUp, nameDown, displayUp, displayDown]",
    ])~

  jsFetchEntities()~
  jsListEntities()~
  jsRenderEntities()~
  jsDoSelectEntities()~

  jsEvent("viewEntities", "'input'", "doPageEntities")~
  jsEvent("prevEntities", "'click'", "goPrevEntities")~
  jsEvent("nextEntities", "'click'", "goNextEntities")~

  jsEvent("btnClearSearch", "'click'", "clearSearch")~
  jsEvent("headDisplay", "'click'", "sortDisplay")~
  jsEvent("headName", "'click'", "sortName")~
  jsEvent("cbSelectAllEntities", "'click'", "doSelectEntities");

}

auto createEntities() {  
  return 
    jsCreateEntity();
}

auto readEntity() {  
  return 
    jsViewEntity();
}

auto updateEntity() {  
  return 
    jsEditEntity();
}

auto deleteEntity() {  
  return 
    jsDeleteEntity();
}

unittest {
  auto f = File("../../PUBLIC/js/apps/entities/applications/foundations/crm/solutions/portals/forums/thread_type.js", "w"); // open for writing
  f.write(
    jsLet(["myApi": "'/api/v1/thread_types'"])~
    entity("ThreadType")~ 
    entities()~
    createEntities()~
    updateEntity()~
    deleteEntity()
  );
}
 */