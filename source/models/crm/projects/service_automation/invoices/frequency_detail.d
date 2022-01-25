module models.crm.projects.service_automation.invoices.frequency_detail;

@safe:
import uim.entities;

// InvoiceFrequencyDetail of a user in the hierarchy
class DAPLInvoiceFrequencyDetail : DOOPEntity {
  this() { super();
    this.attributes([
      "createdOnBehalfBy": OOPAttributeLink("aplUser").descriptions(["en":"Unique identifier of the delegate user who created the record."]),
      "modifiedOnBehalfBy": OOPAttributeLink("aplUser").descriptions(["en":"Unique identifier of the delegate user who modified the record."]),
      "organizationId": OOPAttributeLink("aplOrganization").descriptions(["en":"Unique identifier for the organization"]),
      "stateCode": OOPAttributeString.descriptions(["en":"Status of the Invoice Frequency Detail"]),
      "stateCode_display": OOPAttributeString.descriptions(["en":""]),
      "statusCode": OOPAttributeString.descriptions(["en":"Reason for the status of the Invoice Frequency Detail"]),
      "statusCode_display": OOPAttributeString.descriptions(["en":""]),
      "importSequenceNumber": OOPAttributeNumber.descriptions(["en":"Sequence number of the import that created this record."]),
      "overriddenCreatedOn": OOPAttributeTimestamp.descriptions(["en":"Date and time that the record was migrated."]),
      "timeZoneRuleVersionNumber": OOPAttributeNumber.descriptions(["en":"For internal use only."]),
      "utcConversionTimeZoneCode": OOPAttributeString.descriptions(["en":"Time zone code that was in use when the record was created."]),
      "dayOfMonth": OOPAttributeString.descriptions(["en":"Specify the day(s) of the month on which invoicing should run"]),
      "dayOfMonth_display": OOPAttributeString.descriptions(["en":""]),
      "invoiceFrequency": OOPAttributeString.descriptions(["en":"Select the invoice frequency."]),
      "occurrenceOfWeekday": OOPAttributeString.descriptions(["en":"Specifies which occurrence of a weekday the invoicing job should run if there are multiple occurrences of a weekday in the selected period"]),
      "occurrenceOfWeekday_display": OOPAttributeString.descriptions(["en":""]),
      "weekday": OOPAttributeString.descriptions(["en":"Select the weekday of the invoicing job run."]),
      "weekday_display": OOPAttributeString.descriptions(["en":""]),
    ]);
  }

  override string entityClass() { return "aplInvoiceFrequencyDetail"; }
  override string entityClasses() { return "aplInvoiceFrequencyDetails"; }

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
auto APLInvoiceFrequencyDetail() { return new DAPLInvoiceFrequencyDetail; } 
auto APLInvoiceFrequencyDetail(Json json) { return new DAPLInvoiceFrequencyDetail(json); } 

unittest {
  version(uim_entities) {
    assert(APLInvoiceFrequencyDetail);

  auto entity = APLInvoiceFrequencyDetail;
  // auto repository = OOPFileRepository("./tests");
 /*/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */ 
  }
}