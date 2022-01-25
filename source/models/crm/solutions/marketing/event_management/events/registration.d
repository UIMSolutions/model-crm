module models.crm.solutions.marketing.event_management.events.registration;

@safe:
import uim.entities;

// 
class DAPLEventRegistration : DOOPEntity {
  this() { super();
    this.attributes([
      "createdOnBehalfBy": OOPAttributeLink("aplUser").descriptions(["en":"Shows who created the record on behalf of another user. "]),
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
      "eventRegistrationId": OOPAttributeUUID.descriptions(["en":"Unique identifier for entity instances"]),
      "stateCode": OOPAttributeString.descriptions(["en":"Status of the Event Registration"]),
      "stateCode_display": OOPAttributeString.descriptions(["en":""]),
      "statusCode": OOPAttributeString.descriptions(["en":"Reason for the status of the Event Registration"]),
      "statusCode_display": OOPAttributeString.descriptions(["en":""]),
      "name": OOPAttributeString.descriptions(["en":"The name of the custom entity."]),
      "area": OOPAttributeString.descriptions(["en":""]),
      "area_display": OOPAttributeString.descriptions(["en":""]),
      "companySize": OOPAttributeString.descriptions(["en":""]),
      "companySize_display": OOPAttributeString.descriptions(["en":""]),
      "contactId": OOPAttributeLink("aplContact").descriptions(["en":""]),
      "eventId": OOPAttributeUUID.descriptions(["en":"Unique identifier for Event associated with Event Registration."]),
      "industry": OOPAttributeString.descriptions(["en":""]),
      "industry_display": OOPAttributeString.descriptions(["en":""]),
      "isCanceled": OOPAttributeBoolean.descriptions(["en":""]),
      "memo": OOPAttributeString.descriptions(["en":""]),
      "primaryRole": OOPAttributeString.descriptions(["en":"Primary Role of the event attendee."]),
      "primaryRole_display": OOPAttributeString.descriptions(["en":""]),
      "publishingState": OOPAttributeString.descriptions(["en":"The publishing state of the event registration."]),
      "publishingState_display": OOPAttributeString.descriptions(["en":""]),
      "registeredBy": OOPAttributeString.descriptions(["en":"A lookup to the contact who created this event registration"]),
      "registrationNotificationSeen": OOPAttributeString.descriptions(["en":"Whether the registration creation notification has been seen or not"]),
      "registrationStatus": OOPAttributeString.descriptions(["en":""]),
      "syncedWithProvider": OOPAttributeString.descriptions(["en":"A flag that indicates that the registration was synced with provider"]),
      "syncedWithProvider_display": OOPAttributeString.descriptions(["en":""]),
      "timesCheckedIn": OOPAttributeString.descriptions(["en":"Hidden field. Number of Event Check-ins related to this ER.Used as partial aggregation for Check-in count of Event.Increasing and decreasing done by corresponding workflows."]),
      "webinarRegistrationID": OOPAttributeString.descriptions(["en":"Webinar ID of the Event Registration."]),
      "yearsInIndustry": OOPAttributeString.descriptions(["en":""]),
      "yearsInIndustry_display": OOPAttributeString.descriptions(["en":""]),
    ]);
  }

  override string entityClass() { return "aplEventRegistration"; }
  override string entityClasses() { return "aplEventRegistrations"; }

  this(UUID myId) { 
    this(); this.id(myId); }
  this(string myName) { 
    this(); this.name(myName); }
  this(UUID myId, string myName) { 
    this(); this.id(myId).name(myName); }
  this(Json aJson) { 
    this(); this.fromJson(aJson); }

  // mixin(GetEntity!("contact", "contactId", "APLContact"));

}
auto APLEventRegistration() { return new DAPLEventRegistration; } 
auto APLEventRegistration(Json json) { return new DAPLEventRegistration(json); } 

unittest {
  version(uim_entities) {
    assert(APLEventRegistration);
  
  auto entity = APLEventRegistration;
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