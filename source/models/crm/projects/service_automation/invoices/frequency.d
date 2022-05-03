module models.crm.projects.service_automation.invoices.frequency;

@safe:
import uim.entities;

// InvoiceFrequency of a user in the hierarchy
class DCRMInvoiceFrequencyEntity : DOOPEntity {
  mixin(EntityThis!("CRMInvoiceFrequencyEntity"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "createdOnBehalfBy": OOPLinkAttribute("aplUser").descriptions(["en":"Unique identifier of the delegate user who created the record."]),
        "modifiedOnBehalfBy": OOPLinkAttribute("aplUser").descriptions(["en":"Unique identifier of the delegate user who modified the record."]),
        "organizationId": OOPLinkAttribute("aplOrganization").descriptions(["en":"Unique identifier for the organization"]),
        "stateCode": StringAttributeClass, // Status of the Invoice Frequency"]),
        "stateCode_display": StringAttributeClass, //
        "statusCode": StringAttributeClass, // Reason for the status of the Invoice Frequency"]),
        "statusCode_display": StringAttributeClass, //
        "importSequenceNumber": OOPIntegerAttribute.descriptions(["en":"Sequence number of the import that created this record."]),
        "overriddenCreatedOn": OOPTimestampAttribute.descriptions(["en":"Date and time that the record was migrated."]),
        "timeZoneRuleVersionNumber": OOPIntegerAttribute.descriptions(["en":"For internal use only."]),
        "utcConversionTimeZoneCode": StringAttributeClass, // Time zone code that was in use when the record was created."]),
        "daysOfRun": StringAttributeClass, // Describes how the run days per period interval are setup. As weekdays (Monday, Tuesday...) or day of period (1st, 2nd…)"]),
        "daysOfRun_display": StringAttributeClass, //
        "period": StringAttributeClass, // Select the period used for the setup of invoice frequency: supported values are Monthly, Weekly or Bi Weekly."]),
        "period_display": StringAttributeClass, //
        "runsPerMonth": StringAttributeClass, // Select the number of times invoicing should run in a period."]),
        "runsPerMonth_display": StringAttributeClass, //
      ])
      .registerPath("crm_invoicefrequencies");
  }
}
mixin(EntityCalls!("CRMInvoiceFrequencyEntity"));

unittest {
  version(test_model_crm) {
    assert(CRMInvoiceFrequencyEntity);

  auto entity = CRMInvoiceFrequencyEntity;
  // auto repository = OOPFileRepository("./tests");
/* /*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */ 
  }
}