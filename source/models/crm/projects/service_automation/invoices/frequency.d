module models.crm.projects.service_automation.invoices.frequency;

@safe:
import uim.entities;

// InvoiceFrequency of a user in the hierarchy
class DCRMInvoiceFrequency : DOOPEntity {
  mixin(OOPEntityThis!("CRMInvoiceFrequency"));

  override void initialize() {
    super.initialize;

    this
      .attributes([
        "createdOnBehalfBy": OOPAttributeLink("aplUser").descriptions(["en":"Unique identifier of the delegate user who created the record."]),
        "modifiedOnBehalfBy": OOPAttributeLink("aplUser").descriptions(["en":"Unique identifier of the delegate user who modified the record."]),
        "organizationId": OOPAttributeLink("aplOrganization").descriptions(["en":"Unique identifier for the organization"]),
        "stateCode": OOPStringAttribute.descriptions(["en":"Status of the Invoice Frequency"]),
        "stateCode_display": OOPStringAttribute.descriptions(["en":""]),
        "statusCode": OOPStringAttribute.descriptions(["en":"Reason for the status of the Invoice Frequency"]),
        "statusCode_display": OOPStringAttribute.descriptions(["en":""]),
        "importSequenceNumber": OOPAttributeNumber.descriptions(["en":"Sequence number of the import that created this record."]),
        "overriddenCreatedOn": OOPAttributeTimestamp.descriptions(["en":"Date and time that the record was migrated."]),
        "timeZoneRuleVersionNumber": OOPAttributeNumber.descriptions(["en":"For internal use only."]),
        "utcConversionTimeZoneCode": OOPStringAttribute.descriptions(["en":"Time zone code that was in use when the record was created."]),
        "daysOfRun": OOPStringAttribute.descriptions(["en":"Describes how the run days per period interval are setup. As weekdays (Monday, Tuesday...) or day of period (1st, 2nd…)"]),
        "daysOfRun_display": OOPStringAttribute.descriptions(["en":""]),
        "period": OOPStringAttribute.descriptions(["en":"Select the period used for the setup of invoice frequency: supported values are Monthly, Weekly or Bi Weekly."]),
        "period_display": OOPStringAttribute.descriptions(["en":""]),
        "runsPerMonth": OOPStringAttribute.descriptions(["en":"Select the number of times invoicing should run in a period."]),
        "runsPerMonth_display": OOPStringAttribute.descriptions(["en":""]),
      ])
      .registerPath("crm_invoicefrequencies");
  }
}
mixin(OOPEntityCalls!("CRMInvoiceFrequency"));

unittest {
  version(uim_entities) {
    assert(CRMInvoiceFrequency);

  auto entity = CRMInvoiceFrequency;
  // auto repository = OOPFileRepository("./tests");
/* /*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */ 
  }
}