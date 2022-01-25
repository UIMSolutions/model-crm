module models.crm.projects.service_automation.invoices.frequency;

@safe:
import uim.entities;

// InvoiceFrequency of a user in the hierarchy
class DAPLInvoiceFrequency : DOOPEntity {
  this() { super();
    this.attributes([
      "createdOnBehalfBy": OOPAttributeLink("aplUser").descriptions(["en":"Unique identifier of the delegate user who created the record."]),
      "modifiedOnBehalfBy": OOPAttributeLink("aplUser").descriptions(["en":"Unique identifier of the delegate user who modified the record."]),
      "organizationId": OOPAttributeLink("aplOrganization").descriptions(["en":"Unique identifier for the organization"]),
      "stateCode": OOPAttributeString.descriptions(["en":"Status of the Invoice Frequency"]),
      "stateCode_display": OOPAttributeString.descriptions(["en":""]),
      "statusCode": OOPAttributeString.descriptions(["en":"Reason for the status of the Invoice Frequency"]),
      "statusCode_display": OOPAttributeString.descriptions(["en":""]),
      "importSequenceNumber": OOPAttributeNumber.descriptions(["en":"Sequence number of the import that created this record."]),
      "overriddenCreatedOn": OOPAttributeTimestamp.descriptions(["en":"Date and time that the record was migrated."]),
      "timeZoneRuleVersionNumber": OOPAttributeNumber.descriptions(["en":"For internal use only."]),
      "utcConversionTimeZoneCode": OOPAttributeString.descriptions(["en":"Time zone code that was in use when the record was created."]),
      "daysOfRun": OOPAttributeString.descriptions(["en":"Describes how the run days per period interval are setup. As weekdays (Monday, Tuesday...) or day of period (1st, 2nd…)"]),
      "daysOfRun_display": OOPAttributeString.descriptions(["en":""]),
      "period": OOPAttributeString.descriptions(["en":"Select the period used for the setup of invoice frequency: supported values are Monthly, Weekly or Bi Weekly."]),
      "period_display": OOPAttributeString.descriptions(["en":""]),
      "runsPerMonth": OOPAttributeString.descriptions(["en":"Select the number of times invoicing should run in a period."]),
      "runsPerMonth_display": OOPAttributeString.descriptions(["en":""]),
    ]);
  }

  override string entityClass() { return "aplInvoiceFrequency"; }
  override string entityClasses() { return "aplInvoiceFrequencies"; }

  this(UUID myId) { 
    this(); this.id(myId); }
  this(string myName) { 
    this(); this.name(myName); }
  this(UUID myId, string myName) { 
    this(); this.id(myId).name(myName); }
  this(Json aJson) { 
    this(); this.fromJson(aJson); }

  // mixin(GetEntity!("organization", "organizationId", "APLOrganization"));
}
auto APLInvoiceFrequency() { return new DAPLInvoiceFrequency; } 
auto APLInvoiceFrequency(Json json) { return new DAPLInvoiceFrequency(json); } 

unittest {
  version(uim_entities) {
    assert(APLInvoiceFrequency);

  auto entity = APLInvoiceFrequency;
  // auto repository = OOPFileRepository("./tests");
/* /*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */ 
  }
}