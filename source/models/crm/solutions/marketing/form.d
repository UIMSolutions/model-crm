module models.crm.solutions.marketing.form;

@safe:
import uim.entities;

// 
class DAPLMarketingForm : DOOPEntity {
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
      "utcConversionTimeZoneCode": OOPAttributeString.descriptions(["en":"Time zone code that was in use when the record was created."]),
      "marketingFormId": OOPAttributeString.descriptions(["en":"Unique ID for entity instances"]),
      "stateCode": OOPAttributeString.descriptions(["en":"Status of the marketing form"]),
      "stateCode_display": OOPAttributeString.descriptions(["en":""]),
      "statusCode": OOPAttributeString.descriptions(["en":"Reason for the status of the marketing form"]),
      "statusCode_display": OOPAttributeString.descriptions(["en":""]),
      "allowPrefill": OOPAttributeString.descriptions(["en":""]),
      "contactMatchingStrategy": OOPAttributeString.descriptions(["en":""]),
      "updateContactsLeads": OOPAttributeString.descriptions(["en":""]),
      "updateContactsLeads_display": OOPAttributeString.descriptions(["en":""]),
      "marketingFormTemplate": OOPAttributeString.descriptions(["en":""]),
      "formControlMapping": OOPAttributeString.descriptions(["en":""]),
      "formDefinition": OOPAttributeString.descriptions(["en":"JSON definition of the fields related to the Marketing form entity."]),
      "insightsPlaceholder": OOPAttributeString.descriptions(["en":""]),
      "leadMatchingStrategy": OOPAttributeString.descriptions(["en":""]),
      "validForPageType": OOPAttributeString.descriptions(["en":""]),
      "validForPageType_display": OOPAttributeString.descriptions(["en":""]),
      "purpose": OOPAttributeString.descriptions(["en":""]),
      "purpose_display": OOPAttributeString.descriptions(["en":""]),
      "visualStyle": OOPAttributeString.descriptions(["en":""]),
      "visualStyle_display": OOPAttributeString.descriptions(["en":""]),
    ]);
  }

  override string entityClass() { return "aplMarketingForm"; }
  override string entityClasses() { return "aplMarketingForms"; }

  this(UUID myId) { 
    this(); this.id(myId); }
  this(string myName) { 
    this(); this.name(myName); }
  this(UUID myId, string myName) { 
    this(); this.id(myId).name(myName); }
  this(Json aJson) { 
    this(); this.fromJson(aJson); }
}
auto APLMarketingForm() { return new DAPLMarketingForm; } 
auto APLMarketingForm(Json json) { return new DAPLMarketingForm(json); } 

unittest {
  version(uim_entities) {
    assert(APLMarketingForm);
  
  auto entity = APLMarketingForm;
  // auto repository = OOPFileRepository("./tests");
/* /*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */ 
  }
}