module models.crm.projects.service_automation.invoices.frequency;

@safe:
import uim.entities;

// InvoiceFrequency of a user in the hierarchy
class DCRMInvoiceFrequencyEntity : DEntity {
  mixin(EntityThis!("CRMInvoiceFrequencyEntity"));

  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([
        "createdOnBehalfBy": UUIDAttribute, //Unique identifier of the delegate user who created the record."]),
        "modifiedOnBehalfBy": UUIDAttribute, //Unique identifier of the delegate user who modified the record."]),
        "organizationId": UUIDAttribute, // Unique identifier for the organization"]),
        "stateCode": StringAttribute, // Status of the Invoice Frequency"]),
        "stateCode_display": StringAttribute, //
        "statusCode": StringAttribute, // Reason for the status of the Invoice Frequency"]),
        "statusCode_display": StringAttribute, //
        "importSequenceNumber": IntegerAttribute, //Sequence number of the import that created this record."]),
        "overriddenCreatedOn": TimestampAttribute, //Date and time that the record was migrated."]),
        "timeZoneRuleVersionNumber": IntegerAttribute, //For internal use only."]),
        "utcConversionTimeZoneCode": StringAttribute, // Time zone code that was in use when the record was created."]),
        "daysOfRun": StringAttribute, // Describes how the run days per period interval are setup. As weekdays (Monday, Tuesday...) or day of period (1st, 2nd…)"]),
        "daysOfRun_display": StringAttribute, //
        "period": StringAttribute, // Select the period used for the setup of invoice frequency: supported values are Monthly, Weekly or Bi Weekly."]),
        "period_display": StringAttribute, //
        "runsPerMonth": StringAttribute, // Select the number of times invoicing should run in a period."]),
        "runsPerMonth_display": StringAttribute, //
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