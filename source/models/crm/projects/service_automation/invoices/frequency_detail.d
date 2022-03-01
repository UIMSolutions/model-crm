module models.crm.projects.service_automation.invoices.frequency_detail;

@safe:
import uim.entities;

// InvoiceFrequencyDetail of a user in the hierarchy
class DCRMInvoiceFrequencyDetail : DOOPEntity {
  this() { super();
    this.attributes([
      "createdOnBehalfBy": OOPAttributeLink("aplUser").descriptions(["en":"Unique identifier of the delegate user who created the record."]),
      "modifiedOnBehalfBy": OOPAttributeLink("aplUser").descriptions(["en":"Unique identifier of the delegate user who modified the record."]),
      "organizationId": OOPAttributeLink("aplOrganization").descriptions(["en":"Unique identifier for the organization"]),
      "stateCode": OOPStringAttribute.descriptions(["en":"Status of the Invoice Frequency Detail"]),
      "stateCode_display": OOPStringAttribute.descriptions(["en":""]),
      "statusCode": OOPStringAttribute.descriptions(["en":"Reason for the status of the Invoice Frequency Detail"]),
      "statusCode_display": OOPStringAttribute.descriptions(["en":""]),
      "importSequenceNumber": OOPAttributeNumber.descriptions(["en":"Sequence number of the import that created this record."]),
      "overriddenCreatedOn": OOPAttributeTimestamp.descriptions(["en":"Date and time that the record was migrated."]),
      "timeZoneRuleVersionNumber": OOPAttributeNumber.descriptions(["en":"For internal use only."]),
      "utcConversionTimeZoneCode": OOPStringAttribute.descriptions(["en":"Time zone code that was in use when the record was created."]),
      "dayOfMonth": OOPStringAttribute.descriptions(["en":"Specify the day(s) of the month on which invoicing should run"]),
      "dayOfMonth_display": OOPStringAttribute.descriptions(["en":""]),
      "invoiceFrequency": OOPStringAttribute.descriptions(["en":"Select the invoice frequency."]),
      "occurrenceOfWeekday": OOPStringAttribute.descriptions(["en":"Specifies which occurrence of a weekday the invoicing job should run if there are multiple occurrences of a weekday in the selected period"]),
      "occurrenceOfWeekday_display": OOPStringAttribute.descriptions(["en":""]),
      "weekday": OOPStringAttribute.descriptions(["en":"Select the weekday of the invoicing job run."]),
      "weekday_display": OOPStringAttribute.descriptions(["en":""]),
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

  // mixin(GetEntity!("organization", "organizationId", "CRMOrganization"));

}
auto CRMInvoiceFrequencyDetail() { return new DCRMInvoiceFrequencyDetail; } 
auto CRMInvoiceFrequencyDetail(Json json) { return new DCRMInvoiceFrequencyDetail(json); } 

unittest {
  version(uim_entities) {
    assert(CRMInvoiceFrequencyDetail);

  auto entity = CRMInvoiceFrequencyDetail;
  // auto repository = OOPFileRepository("./tests");
 /*/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */ 
  }
}