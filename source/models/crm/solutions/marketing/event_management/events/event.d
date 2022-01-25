module models.crm.solutions.marketing.event_management.events.event;

@safe:
import uim.entities;

// Container to manage and plan marketing activities that take place at a specific venue or location.
class DAPLEvent : DOOPEntity {
  this() { super();
    this.attributes([
      "createdOnBehalfBy": OOPAttributeString.descriptions(["en":"Shows who created the record on behalf of another user."]),
      "modifiedOnBehalfBy": OOPAttributeString.descriptions(["en":"Shows who last updated the record on behalf of another user."]),
      "overriddenCreatedOn": OOPAttributeString.descriptions(["en":"Date and time that the record was migrated."]),
      "importSequenceNumber": OOPAttributeNumber.descriptions(["en":"Sequence number of the import that created this record."]),
      "ownerId": OOPAttributeUUID.descriptions(["en":"Owner Id"]),
      "ownerIdType": OOPAttributeString.descriptions(["en":"The type of owner, either User or Team."]),
      "owningBusinessUnitId": OOPAttributeLink("aplBusinessUnit").descriptions(["en":"Unique identifier for the business unit that owns the record"]),
      "owningUserId": OOPAttributeString.descriptions(["en":"Unique identifier of the user that owns the activity."]),
      "owningTeamId": OOPAttributeString.descriptions(["en":"Unique identifier for the team that owns the record."]),
      "timeZoneRuleVersionNumber": OOPAttributeNumber.descriptions(["en":"For internal use only."]),
      "utcConversionTimeZoneCode": OOPAttributeString.descriptions(["en":"Time zone code that was in use when the record was created."]),
      "eventId": OOPAttributeUUID.descriptions(["en":"Unique identifier for entity instances"]),
      "stateCode": OOPAttributeString.descriptions(["en":"Status of the Event"]),
      "stateCode_display": OOPAttributeString.descriptions(["en":""]),
      "statusCode": OOPAttributeString.descriptions(["en":"Reason for the status of the Event"]),
      "statusCode_display": OOPAttributeString.descriptions(["en":""]),
      "processId": OOPAttributeUUID.descriptions(["en":"Contains the id of the process associated with the entity."]),
      "stageId": OOPAttributeUUID.descriptions(["en":"Contains the id of the stage where the entity is located."]),
      "traversedPath": OOPAttributeString.descriptions(["en":"A comma separated list of string values representing the unique identifiers of stages in a Business Process Flow Instance in the order that they occur."]),
      "entityImageId": OOPAttributeUUID.descriptions(["en":""]),
      "baseRecurrentEventID": OOPAttributeString.descriptions(["en":""]),
      "bookedFlightReservations": OOPAttributeString.descriptions(["en":"Flight reservations booking status"]),
      "bookedFlightReservations_display": OOPAttributeString.descriptions(["en":""]),
      "bookRooms": OOPAttributeString.descriptions(["en":""]),
      "bookRooms_display": OOPAttributeString.descriptions(["en":""]),
      "budgetAllocated": OOPAttributeString.descriptions(["en":""]),
      "transactionCurrencyId": OOPAttributeLink("aplCurrency").descriptions(["en":"Unique identifier of the currency associated with the entity."]),
      "exchangeRate": OOPAttributeString.descriptions(["en":"Exchange rate for the currency associated with the entity with respect to the base currency."]),
      "budgetAllocatedBase": OOPAttributeString.descriptions(["en":"Value of the Budget Allocated in base currency."]),
      "cateringRequired": OOPAttributeString.descriptions(["en":""]),
      "cateringRequired_display": OOPAttributeString.descriptions(["en":""]),
      "checkInCount": OOPAttributeString.descriptions(["en":"Check-in count"]),
      "confirmedHotelChoices": OOPAttributeString.descriptions(["en":"Hotel choices confirmation status"]),
      "confirmedHotelChoices_display": OOPAttributeString.descriptions(["en":""]),
      "countdownInDays": OOPAttributeString.descriptions(["en":""]),
      "createMarketingCollateral": OOPAttributeString.descriptions(["en":""]),
      "createMarketingCollateral_display": OOPAttributeString.descriptions(["en":""]),
      "definePackagesandPricing": OOPAttributeString.descriptions(["en":""]),
      "definePackagesandPricing_display": OOPAttributeString.descriptions(["en":""]),
      "defineSessions": OOPAttributeString.descriptions(["en":""]),
      "defineSessions_display": OOPAttributeString.descriptions(["en":""]),
      "defineTeam": OOPAttributeString.descriptions(["en":""]),
      "defineTeam_display": OOPAttributeString.descriptions(["en":""]),
      "description": OOPAttributeString.descriptions(["en":""]),
      "developMarketingPlan": OOPAttributeString.descriptions(["en":""]),
      "developMarketingPlan_display": OOPAttributeString.descriptions(["en":""]),
      "earlyBirdCutOffDate": OOPAttributeDate.descriptions(["en":""]),
      "eventDebriefing": OOPAttributeString.descriptions(["en":""]),
      "eventDebriefing_display": OOPAttributeString.descriptions(["en":""]),
      "eventEndDate": OOPAttributeDate.descriptions(["en":""]),
      "eventFormat": OOPAttributeString.descriptions(["en":""]),
      "eventFormat_display": OOPAttributeString.descriptions(["en":""]),
      "eventStartDate": OOPAttributeDate.descriptions(["en":""]),
      "eventTimeZone": OOPAttributeString.descriptions(["en":""]),
      "eventTimeZoneName": OOPAttributeString.descriptions(["en":""]),
      "eventType": OOPAttributeString.descriptions(["en":""]),
      "eventType_display": OOPAttributeString.descriptions(["en":""]),
      "eventVenueCost": OOPAttributeString.descriptions(["en":""]),
      "eventVenueCostBase": OOPAttributeString.descriptions(["en":"Value of the Event Venue Cost in base currency."]),
      "expectedOutcome": OOPAttributeString.descriptions(["en":""]),
      "followUpOnLeads": OOPAttributeString.descriptions(["en":""]),
      "followUpOnLeads_display": OOPAttributeString.descriptions(["en":""]),
      "guestLogistics": OOPAttributeString.descriptions(["en":"Whether guest logistics are required or not."]),
      "guestLogistics_display": OOPAttributeString.descriptions(["en":""]),
      "identifySpeakers": OOPAttributeString.descriptions(["en":""]),
      "identifySpeakers_display": OOPAttributeString.descriptions(["en":""]),
      "identifySponsors": OOPAttributeString.descriptions(["en":""]),
      "identifySponsors_display": OOPAttributeString.descriptions(["en":""]),
      "isRecurringEvent": OOPAttributeBoolean.descriptions(["en":""]),
      "isTemplate": OOPAttributeBoolean.descriptions(["en":""]),
      "isTemplate_display": OOPAttributeBoolean.descriptions(["en":""]),
      "language": OOPAttributeString.descriptions(["en":"The language of the webinar"]),
      "language_display": OOPAttributeString.descriptions(["en":""]),
      "makePaymentsDue": OOPAttributeString.descriptions(["en":""]),
      "makePaymentsDue_display": OOPAttributeString.descriptions(["en":""]),
      "manageRegistrationCount": OOPAttributeString.descriptions(["en":""]),
      "manageRegistrationCount_display": OOPAttributeString.descriptions(["en":""]),
      "maximumEventCapacity": OOPAttributeString.descriptions(["en":""]),
      "maxNumberOfRegistrations": OOPAttributeString.descriptions(["en":""]),
      "miscellaneousCosts": OOPAttributeString.descriptions(["en":""]),
      "miscellaneousCostsBase": OOPAttributeString.descriptions(["en":"Value of the Miscellaneous Costs in base currency."]),
      "notifyAuthoritiesOfEvent": OOPAttributeString.descriptions(["en":""]),
      "notifyAuthoritiesOfEvent_display": OOPAttributeString.descriptions(["en":""]),
      "planRegistration": OOPAttributeString.descriptions(["en":""]),
      "planRegistration_display": OOPAttributeString.descriptions(["en":""]),
      "presentationManagerUrl": OOPAttributeUrl.descriptions(["en":""]),
      "primaryGoal": OOPAttributeString.descriptions(["en":""]),
      "primaryGoal_display": OOPAttributeString.descriptions(["en":""]),
      "primaryVenue": OOPAttributeString.descriptions(["en":""]),
      "producer": OOPAttributeString.descriptions(["en":""]),
      "publicEventUrl": OOPAttributeUrl.descriptions(["en":""]),
      "publishStatus": OOPAttributeString.descriptions(["en":""]),
      "publishStatus_display": OOPAttributeString.descriptions(["en":""]),
      "readableEventID": OOPAttributeString.descriptions(["en":""]),
      "recurrencePattern": OOPAttributeString.descriptions(["en":""]),
      "recurrentEventStatus": OOPAttributeString.descriptions(["en":""]),
      "registrationCount": OOPAttributeString.descriptions(["en":"Registration count of the Event."]),
      "registrationsTarget": OOPAttributeString.descriptions(["en":""]),
      "requestSponsorship": OOPAttributeString.descriptions(["en":""]),
      "requestSponsorship_display": OOPAttributeString.descriptions(["en":""]),
      "revenueFromSponsorship": OOPAttributeString.descriptions(["en":""]),
      "revenueFromSponsorshipBase": OOPAttributeString.descriptions(["en":"Value of the Revenue from Sponsorship in base currency."]),
      "scheduleAirportPickups": OOPAttributeString.descriptions(["en":"Airport pickups scheduling status"]),
      "scheduleAirportPickups_display": OOPAttributeString.descriptions(["en":""]),
      "scheduleSessions": OOPAttributeString.descriptions(["en":""]),
      "scheduleSessions_display": OOPAttributeString.descriptions(["en":""]),
      "selectSpeakers": OOPAttributeString.descriptions(["en":""]),
      "selectSpeakers_display": OOPAttributeString.descriptions(["en":""]),
      "selectVendors": OOPAttributeString.descriptions(["en":""]),
      "selectVendors_display": OOPAttributeString.descriptions(["en":""]),
      "sendEventInvitation": OOPAttributeString.descriptions(["en":"Event invitation sending status"]),
      "sendEventInvitation_display": OOPAttributeString.descriptions(["en":""]),
      "sendMarketingMaterial": OOPAttributeString.descriptions(["en":""]),
      "sendMarketingMaterial_display": OOPAttributeString.descriptions(["en":""]),
      "sendPreEventReminders": OOPAttributeString.descriptions(["en":""]),
      "sendPreEventReminders_display": OOPAttributeString.descriptions(["en":""]),
      "sendThankYouEmails": OOPAttributeString.descriptions(["en":""]),
      "sendThankYouEmails_display": OOPAttributeString.descriptions(["en":""]),
      "showWaitlist": OOPAttributeString.descriptions(["en":""]),
      "targetRevenue": OOPAttributeString.descriptions(["en":""]),
      "targetRevenueBase": OOPAttributeString.descriptions(["en":"Value of the Target Revenue in base currency."]),
      "teamDebriefing": OOPAttributeString.descriptions(["en":""]),
      "teamDebriefing_display": OOPAttributeString.descriptions(["en":""]),
      "totalCostOfEventsActivities": OOPAttributeString.descriptions(["en":""]),
      "totalCostOfEventsActivitiesBase": OOPAttributeString.descriptions(["en":"Value of the Total Cost of Events Activities in base currency."]),
      "totalCostOfExternalMembers": OOPAttributeString.descriptions(["en":""]),
      "totalCostOfExternalMembersBase": OOPAttributeString.descriptions(["en":"Value of the Total cost of External Members in base currency."]),
      "totalRegistrationFee": OOPAttributeString.descriptions(["en":""]),
      "totalRegistrationFeeBase": OOPAttributeString.descriptions(["en":"Value of the Total Registration Fee in base currency."]),
      "totalRevenueFromTheEvent": OOPAttributeString.descriptions(["en":""]),
      "totalRevenueFromTheEventBase": OOPAttributeString.descriptions(["en":"Value of the Total Revenue from the event in base currency."]),
      "waitlistStartingPoint": OOPAttributeString.descriptions(["en":"Waitlist Starting Point"]),
      "waitlistthisEvent": OOPAttributeString.descriptions(["en":""]),
      "waitlistthisEvent_display": OOPAttributeString.descriptions(["en":""]),
      "webinarConfigurationId": OOPAttributeUUID.descriptions(["en":"Webinar Configuration"]),
      "webinarID": OOPAttributeString.descriptions(["en":"Webinar ID of the Event."]),
      "webinarNotificationSeen": OOPAttributeString.descriptions(["en":"Whether the webinar creation notification has been seen or not"]),
      "webinarOperation": OOPAttributeString.descriptions(["en":""]),
      "webinarStatus": OOPAttributeString.descriptions(["en":""]),
      "webinarStatusReason": OOPAttributeString.descriptions(["en":""]),
      "webinarType": OOPAttributeString.descriptions(["en":""]),
      "webinarUrl": OOPAttributeUrl.descriptions(["en":"URL of the webinar. This might be URL of external webinar provider."]),
      "sendSurveys": OOPAttributeString.descriptions(["en":""]),
      "sendSurveys_display": OOPAttributeString.descriptions(["en":""]),
      "eventURLspecified": OOPAttributeString.descriptions(["en":"Determines whether an event URL is specified."]),
      "sessionsCount": OOPAttributeString.descriptions(["en":"The number of sessions in this event"]),
      "sessionsCountDate": OOPAttributeDate.descriptions(["en":"Last Updated time of rollup field Session count."]),
      "sessionsCountState": OOPAttributeString.descriptions(["en":"State of rollup field Session count."]),
      "allowAnonymousRegistrations": OOPAttributeString.descriptions(["en":""]),
      "portalBannerImage": OOPAttributeString.descriptions(["en":"The portal banner image."]),
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
auto APLEvent() { return new DAPLEvent; } 
auto APLEvent(Json json) { return new DAPLEvent(json); } 

unittest {
  version(uim_entities) {
    assert(APLEvent);
  
  auto entity = APLEvent;
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