module models.crm.projects.service_automation.invoices.frequency_detail;

@safe:
import uim.entities;

// InvoiceFrequencyDetail of a user in the hierarchy
class DCRMInvoiceFrequencyDetail : DOOPEntity {
  mixin(EntityThis!("CRMInvoiceFrequencyDetail"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "createdOnBehalfBy": UUIDAttributeClass, //Unique identifier of the delegate user who created the record."]),
        "modifiedOnBehalfBy": UUIDAttributeClass, //Unique identifier of the delegate user who modified the record."]),
        "organizationId": UUIDAttributeClass, // Unique identifier for the organization"]),
        "stateCode": StringAttributeClass, // Status of the Invoice Frequency Detail"]),
        "stateCode_display": StringAttributeClass, //
        "statusCode": StringAttributeClass, // Reason for the status of the Invoice Frequency Detail"]),
        "statusCode_display": StringAttributeClass, //
        "importSequenceNumber": IntegerAttributeClass, //Sequence number of the import that created this record."]),
        "overriddenCreatedOn": TimestampAttributeClass, //Date and time that the record was migrated."]),
        "timeZoneRuleVersionNumber": IntegerAttributeClass, //For internal use only."]),
        "utcConversionTimeZoneCode": StringAttributeClass, // Time zone code that was in use when the record was created."]),
        "dayOfMonth": StringAttributeClass, // Specify the day(s) of the month on which invoicing should run"]),
        "dayOfMonth_display": StringAttributeClass, //
        "invoiceFrequency": StringAttributeClass, // Select the invoice frequency."]),
        "occurrenceOfWeekday": StringAttributeClass, // Specifies which occurrence of a weekday the invoicing job should run if there are multiple occurrences of a weekday in the selected period"]),
        "occurrenceOfWeekday_display": StringAttributeClass, //
        "weekday": StringAttributeClass, // Select the weekday of the invoicing job run."]),
        "weekday_display": StringAttributeClass, //
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