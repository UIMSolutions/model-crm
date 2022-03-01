module models.crm.solutions.marketing.event_management.events.registration;

@safe:
import uim.entities;

// 
class DCRMEventRegistration : DOOPEntity {
  this() { super();
    this.attributes([
      "createdOnBehalfBy": OOPAttributeLink("aplUser").descriptions(["en":"Shows who created the record on behalf of another user. "]),
      "modifiedOnBehalfBy": OOPAttributeLink("aplUser").descriptions(["en":"Shows who last updated the record on behalf of another user."]),
      "overriddenCreatedOn": OOPAttributeTimestamp.descriptions(["en":"Date and time that the record was migrated."]),
      "importSequenceNumber": OOPAttributeNumber.descriptions(["en":"Sequence number of the import that created this record."]),
      "ownerId": OOPUUIDAttribute.descriptions(["en":"Owner Id"]),
      "ownerIdType": OOPStringAttribute.descriptions(["en":"The type of owner, either User or Team."]),
      "owningBusinessUnitId": OOPAttributeLink("aplBusinessUnit").descriptions(["en":"Unique identifier for the business unit that owns the record"]),
      "owningUserId": OOPAttributeLink("aplUser").descriptions(["en":"Unique identifier of the user that owns the activity."]),
      "owningTeamId": OOPAttributeLink("aplTeam").descriptions(["en":"Unique identifier for the team that owns the record."]),
      "timeZoneRuleVersionNumber": OOPAttributeNumber.descriptions(["en":"For internal use only."]),
      "utcConversionTimeZoneCode": OOPStringAttribute.descriptions(["en":"Time zone code that was in use when the record was created."]),
      "eventRegistrationId": OOPUUIDAttribute.descriptions(["en":"Unique identifier for entity instances"]),
      "stateCode": OOPStringAttribute.descriptions(["en":"Status of the Event Registration"]),
      "stateCode_display": OOPStringAttribute.descriptions(["en":""]),
      "statusCode": OOPStringAttribute.descriptions(["en":"Reason for the status of the Event Registration"]),
      "statusCode_display": OOPStringAttribute.descriptions(["en":""]),
      "name": OOPStringAttribute.descriptions(["en":"The name of the custom entity."]),
      "area": OOPStringAttribute.descriptions(["en":""]),
      "area_display": OOPStringAttribute.descriptions(["en":""]),
      "companySize": OOPStringAttribute.descriptions(["en":""]),
      "companySize_display": OOPStringAttribute.descriptions(["en":""]),
      "contactId": OOPAttributeLink("aplContact").descriptions(["en":""]),
      "eventId": OOPUUIDAttribute.descriptions(["en":"Unique identifier for Event associated with Event Registration."]),
      "industry": OOPStringAttribute.descriptions(["en":""]),
      "industry_display": OOPStringAttribute.descriptions(["en":""]),
      "isCanceled": OOPAttributeBoolean.descriptions(["en":""]),
      "memo": OOPStringAttribute.descriptions(["en":""]),
      "primaryRole": OOPStringAttribute.descriptions(["en":"Primary Role of the event attendee."]),
      "primaryRole_display": OOPStringAttribute.descriptions(["en":""]),
      "publishingState": OOPStringAttribute.descriptions(["en":"The publishing state of the event registration."]),
      "publishingState_display": OOPStringAttribute.descriptions(["en":""]),
      "registeredBy": OOPStringAttribute.descriptions(["en":"A lookup to the contact who created this event registration"]),
      "registrationNotificationSeen": OOPStringAttribute.descriptions(["en":"Whether the registration creation notification has been seen or not"]),
      "registrationStatus": OOPStringAttribute.descriptions(["en":""]),
      "syncedWithProvider": OOPStringAttribute.descriptions(["en":"A flag that indicates that the registration was synced with provider"]),
      "syncedWithProvider_display": OOPStringAttribute.descriptions(["en":""]),
      "timesCheckedIn": OOPStringAttribute.descriptions(["en":"Hidden field. Number of Event Check-ins related to this ER.Used as partial aggregation for Check-in count of Event.Increasing and decreasing done by corresponding workflows."]),
      "webinarRegistrationID": OOPStringAttribute.descriptions(["en":"Webinar ID of the Event Registration."]),
      "yearsInIndustry": OOPStringAttribute.descriptions(["en":""]),
      "yearsInIndustry_display": OOPStringAttribute.descriptions(["en":""]),
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

  // mixin(GetEntity!("contact", "contactId", "CRMContact"));

}
auto CRMEventRegistration() { return new DCRMEventRegistration; } 
auto CRMEventRegistration(Json json) { return new DCRMEventRegistration(json); } 

unittest {
  version(uim_entities) {
    assert(CRMEventRegistration);
  
  auto entity = CRMEventRegistration;
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