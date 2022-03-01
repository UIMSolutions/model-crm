module models.crm.solutions.marketing.event_management.events.team_member;

@safe:
import uim.entities;

// 
class DCRMEventTeamMember : DOOPEntity {
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
      "versionNumber": OOPAttributeNumber.descriptions(["en":"Version Number"]),
      "eventTeamMemberId": OOPUUIDAttribute.descriptions(["en":"Unique identifier for entity instances"]),
      "stateCode": OOPStringAttribute.descriptions(["en":"Status of the Event Team Member"]),
      "stateCode_display": OOPStringAttribute.descriptions(["en":""]),
      "statusCode": OOPStringAttribute.descriptions(["en":"Reason for the status of the Event Team Member"]),
      "statusCode_display": OOPStringAttribute.descriptions(["en":""]),
      "name": OOPStringAttribute.descriptions(["en":"The name of the custom entity."]),
      "company": OOPStringAttribute.descriptions(["en":""]),
      "contact": OOPStringAttribute.descriptions(["en":""]),
      "description": OOPStringAttribute.descriptions(["en":""]),
      "email": OOPStringAttribute.descriptions(["en":""]),
      "memberType": OOPStringAttribute.descriptions(["en":""]),
      "memberType_display": OOPStringAttribute.descriptions(["en":""]),
      "phone": OOPStringAttribute.descriptions(["en":""]),
      "role": OOPStringAttribute.descriptions(["en":""]),
      "role_display": OOPStringAttribute.descriptions(["en":""]),
      "user": OOPStringAttribute.descriptions(["en":""]),
    ]);
  }

  override string entityClass() { return "aplEventTeamMember"; }
  override string entityClasses() { return "aplEventTeamMembers"; }

  this(UUID myId) { 
    this(); this.id(myId); }
  this(string myName) { 
    this(); this.name(myName); }
  this(UUID myId, string myName) { 
    this(); this.id(myId).name(myName); }
  this(Json aJson) { 
    this(); this.fromJson(aJson); }
}
auto CRMEventTeamMember() { return new DCRMEventTeamMember; } 
auto CRMEventTeamMember(Json json) { return new DCRMEventTeamMember(json); } 

unittest {
  version(test_model_crm) {
    assert(CRMEventTeamMember);
  
  auto entity = CRMEventTeamMember;
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