module models.crm.solutions.marketing.form_page;

@safe:
import uim.entities;

// 
  class DAPLFormPage : DOOPEntity {
  this() { super();
    this.attributes([
      "createdOnBehalfBy": OOPAttributeString.descriptions(["en":"Shows who created the record on behalf of another user."]), 
      "modifiedOnBehalfBy": OOPAttributeString.descriptions(["en":"Shows who last updated the record on behalf of another user."]), 
      "overriddenCreatedOn": OOPAttributeString.descriptions(["en":"Date and time that the record was migrated."]), 
      "importSequenceNumber": OOPAttributeNumber.descriptions(["en":"Sequence number of the import that created this record."]), 
      "ownerId": OOPAttributeString.descriptions(["en":"Owner Id"]), 
      "ownerIdType": OOPAttributeString.descriptions(["en":"The type of owner, either User or Team."]), 
      "owningBusinessUnitId": OOPAttributeLink("aplBusinessUnit").descriptions(["en":"Unique identifier for the business unit that owns the record"]), 
      "owningUser": OOPAttributeString.descriptions(["en":"Unique identifier of the user that owns the activity."]), 
      "owningTeam": OOPAttributeString.descriptions(["en":"Unique identifier for the team that owns the record."]), 
      "timeZoneRuleVersionNumber": OOPAttributeNumber.descriptions(["en":"For internal use only."]), 
      "UTCConversionTimeZoneCode": OOPAttributeString.descriptions(["en":"Time zone code that was in use when the record was created."]), 
      "formpageId": OOPAttributeString.descriptions(["en":"Unique ID for entity instances."]), 
      "stateCode": OOPAttributeString.descriptions(["en":"Status of the form page"]), 
      "stateCode_display": OOPAttributeString.descriptions(["en":""]), 
      "statusCode": OOPAttributeString.descriptions(["en":"Form page status reason"]), 
      "statusCode_display": OOPAttributeString.descriptions(["en":""]), 
      "confirmationMessage": OOPAttributeString.descriptions(["en":""]), 
      "errorMessage": OOPAttributeString.descriptions(["en":""]), 
      "marketingFormId": OOPAttributeString.descriptions(["en":"Usage of a marketing form on a marketing page."]), 
      "limitExceededMessage": OOPAttributeString.descriptions(["en":""]), 
      "marketingPage": OOPAttributeString.descriptions(["en":"The marketing page contains a marketing form."]), 
      "webSite": OOPAttributeString.descriptions(["en":"Web site contains Marketing Form"]), 
      "redirectUrl": OOPAttributeUrl.descriptions(["en":""]), 
      "javascriptcode": OOPAttributeString.descriptions(["en":""]), 
    ]);
  }

  override string entityClass() { return "aplFormPage"; }
  override string entityClasses() { return "aplFormPages"; }

  this(UUID myId) { 
    this(); this.id(myId); }
  this(string myName) { 
    this(); this.name(myName); }
  this(UUID myId, string myName) { 
    this(); this.id(myId).name(myName); }
  this(Json aJson) { 
    this(); this.fromJson(aJson); }
}
auto APLFormPage() { return new DAPLFormPage; } 
auto APLFormPage(Json json) { return new DAPLFormPage(json); } 

unittest {
  version(uim_entities) {
    assert(APLFormPage);
  
  auto entity = APLFormPage;
  // auto repository = OOPFileRepository("./tests");
/* /*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */ 
  }
}