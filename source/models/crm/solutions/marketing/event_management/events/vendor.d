module models.crm.solutions.marketing.event_management.events.vendor;

@safe:
import uim.entities;

// 
class DCRMEventVendor : DOOPEntity {
  mixin(OOPEntityThis!("CRMEventVendor"));

  override void initialize() {
    super.initialize;

    this
      .attributes([
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
        "eventVendorId": OOPUUIDAttribute.descriptions(["en":"Unique identifier for entity instances"]),
        "stateCode": OOPStringAttribute.descriptions(["en":"Status of the Event Vendor"]),
        "stateCode_display": OOPStringAttribute.descriptions(["en":""]),
        "statusCode": OOPStringAttribute.descriptions(["en":"Reason for the status of the Event Vendor"]),
        "statusCode_display": OOPStringAttribute.descriptions(["en":""]),
        "name": OOPStringAttribute.descriptions(["en":"The name of the custom entity."]),
        "account": OOPStringAttribute.descriptions(["en":""]),
        "type": OOPStringAttribute.descriptions(["en":""]),
        "type_display": OOPStringAttribute.descriptions(["en":""]),
      ])
      .registerPath("crm_eventvendors");
  }
}
mixin(OOPEntityCalls!("CRMEventVendor"));

unittest {
  version(test_model_crm) {
    assert(CRMEventVendor);
  
  auto entity = CRMEventVendor;
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