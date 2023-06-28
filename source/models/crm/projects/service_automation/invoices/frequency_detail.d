module models.crm.projects.service_automation.invoices.frequency_detail;

@safe:
import uim.entities;

// InvoiceFrequencyDetail of a user in the hierarchy
class DCRMInvoiceFrequencyDetail : DEntity {
  mixin(EntityThis!("CRMInvoiceFrequencyDetail"));

  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([
        "createdOnBehalfBy": UUIDAttribute, //Unique identifier of the delegate user who created the record."]),
        "modifiedOnBehalfBy": UUIDAttribute, //Unique identifier of the delegate user who modified the record."]),
        "organizationId": UUIDAttribute, // Unique identifier for the organization"]),
        "stateCode": StringAttribute, // Status of the Invoice Frequency Detail"]),
        "stateCode_display": StringAttribute, //
        "statusCode": StringAttribute, // Reason for the status of the Invoice Frequency Detail"]),
        "statusCode_display": StringAttribute, //
        "importSequenceNumber": IntegerAttribute, //Sequence number of the import that created this record."]),
        "overriddenCreatedOn": TimestampAttribute, //Date and time that the record was migrated."]),
        "timeZoneRuleVersionNumber": IntegerAttribute, //For internal use only."]),
        "utcConversionTimeZoneCode": StringAttribute, // Time zone code that was in use when the record was created."]),
        "dayOfMonth": StringAttribute, // Specify the day(s) of the month on which invoicing should run"]),
        "dayOfMonth_display": StringAttribute, //
        "invoiceFrequency": StringAttribute, // Select the invoice frequency."]),
        "occurrenceOfWeekday": StringAttribute, // Specifies which occurrence of a weekday the invoicing job should run if there are multiple occurrences of a weekday in the selected period"]),
        "occurrenceOfWeekday_display": StringAttribute, //
        "weekday": StringAttribute, // Select the weekday of the invoicing job run."]),
        "weekday_display": StringAttribute, //
      ])
      .registerPath("crm_invoicefrequencydetails");
  }
}
mixin(EntityCalls!("CRMInvoiceFrequencyDetail")); 

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