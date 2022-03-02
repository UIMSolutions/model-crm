module models.crm.projects.service_automation.invoices.frequency_detail;

@safe:
import uim.entities;

// InvoiceFrequencyDetail of a user in the hierarchy
class DCRMInvoiceFrequencyDetail : DOOPEntity {
  mixin(OOPEntityThis!("CRMInvoiceFrequencyDetail"));

  override void initialize() {
    super.initialize;

    this
      .addAttributes([
        "createdOnBehalfBy": OOPLinkAttribute("aplUser").descriptions(["en":"Unique identifier of the delegate user who created the record."]),
        "modifiedOnBehalfBy": OOPLinkAttribute("aplUser").descriptions(["en":"Unique identifier of the delegate user who modified the record."]),
        "organizationId": OOPLinkAttribute("aplOrganization").descriptions(["en":"Unique identifier for the organization"]),
        "stateCode": OOPStringAttribute.descriptions(["en":"Status of the Invoice Frequency Detail"]),
        "stateCode_display": OOPStringAttribute.descriptions(["en":""]),
        "statusCode": OOPStringAttribute.descriptions(["en":"Reason for the status of the Invoice Frequency Detail"]),
        "statusCode_display": OOPStringAttribute.descriptions(["en":""]),
        "importSequenceNumber": OOPIntegerAttribute.descriptions(["en":"Sequence number of the import that created this record."]),
        "overriddenCreatedOn": OOPTimestampAttribute.descriptions(["en":"Date and time that the record was migrated."]),
        "timeZoneRuleVersionNumber": OOPIntegerAttribute.descriptions(["en":"For internal use only."]),
        "utcConversionTimeZoneCode": OOPStringAttribute.descriptions(["en":"Time zone code that was in use when the record was created."]),
        "dayOfMonth": OOPStringAttribute.descriptions(["en":"Specify the day(s) of the month on which invoicing should run"]),
        "dayOfMonth_display": OOPStringAttribute.descriptions(["en":""]),
        "invoiceFrequency": OOPStringAttribute.descriptions(["en":"Select the invoice frequency."]),
        "occurrenceOfWeekday": OOPStringAttribute.descriptions(["en":"Specifies which occurrence of a weekday the invoicing job should run if there are multiple occurrences of a weekday in the selected period"]),
        "occurrenceOfWeekday_display": OOPStringAttribute.descriptions(["en":""]),
        "weekday": OOPStringAttribute.descriptions(["en":"Select the weekday of the invoicing job run."]),
        "weekday_display": OOPStringAttribute.descriptions(["en":""]),
      ])
      .registerPath("crm_invoicefrequencydetails");
  }
}
mixin(OOPEntityCalls!("CRMInvoiceFrequencyDetail")); 

unittest {
  version(test_model_crm) {
    assert(CRMInvoiceFrequencyDetail);

  auto entity = CRMInvoiceFrequencyDetail;
  // auto repository = OOPFileRepository("./tests");
 /*/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */ 
  }
}