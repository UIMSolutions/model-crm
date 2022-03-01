module models.crm.solutions.marketing.form_page;

@safe:
import uim.entities;

// 
  class DCRMFormPage : DOOPEntity {
  this() { super();
    this.attributes([
      "createdOnBehalfBy": OOPStringAttribute.descriptions(["en":"Shows who created the record on behalf of another user."]), 
      "modifiedOnBehalfBy": OOPStringAttribute.descriptions(["en":"Shows who last updated the record on behalf of another user."]), 
      "overriddenCreatedOn": OOPStringAttribute.descriptions(["en":"Date and time that the record was migrated."]), 
      "importSequenceNumber": OOPAttributeNumber.descriptions(["en":"Sequence number of the import that created this record."]), 
      "ownerId": OOPStringAttribute.descriptions(["en":"Owner Id"]), 
      "ownerIdType": OOPStringAttribute.descriptions(["en":"The type of owner, either User or Team."]), 
      "owningBusinessUnitId": OOPAttributeLink("aplBusinessUnit").descriptions(["en":"Unique identifier for the business unit that owns the record"]), 
      "owningUser": OOPStringAttribute.descriptions(["en":"Unique identifier of the user that owns the activity."]), 
      "owningTeam": OOPStringAttribute.descriptions(["en":"Unique identifier for the team that owns the record."]), 
      "timeZoneRuleVersionNumber": OOPAttributeNumber.descriptions(["en":"For internal use only."]), 
      "UTCConversionTimeZoneCode": OOPStringAttribute.descriptions(["en":"Time zone code that was in use when the record was created."]), 
      "formpageId": OOPStringAttribute.descriptions(["en":"Unique ID for entity instances."]), 
      "stateCode": OOPStringAttribute.descriptions(["en":"Status of the form page"]), 
      "stateCode_display": OOPStringAttribute.descriptions(["en":""]), 
      "statusCode": OOPStringAttribute.descriptions(["en":"Form page status reason"]), 
      "statusCode_display": OOPStringAttribute.descriptions(["en":""]), 
      "confirmationMessage": OOPStringAttribute.descriptions(["en":""]), 
      "errorMessage": OOPStringAttribute.descriptions(["en":""]), 
      "marketingFormId": OOPStringAttribute.descriptions(["en":"Usage of a marketing form on a marketing page."]), 
      "limitExceededMessage": OOPStringAttribute.descriptions(["en":""]), 
      "marketingPage": OOPStringAttribute.descriptions(["en":"The marketing page contains a marketing form."]), 
      "webSite": OOPStringAttribute.descriptions(["en":"Web site contains Marketing Form"]), 
      "redirectUrl": OOPAttributeUrl.descriptions(["en":""]), 
      "javascriptcode": OOPStringAttribute.descriptions(["en":""]), 
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
auto CRMFormPage() { return new DCRMFormPage; } 
auto CRMFormPage(Json json) { return new DCRMFormPage(json); } 

unittest {
  version(test_model_crm) {
    assert(CRMFormPage);
  
  auto entity = CRMFormPage;
  // auto repository = OOPFileRepository("./tests");
/* /*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */ 
  }
}