module models.crm.solutions.customers.activity;

@safe:
import uim.entities;

// An activity performed by a user that has observational value to the business.
class DCRMCustomerActivity : DOOPEntity {
  mixin(EntityThis!("CRMCustomerActivity"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "createdOnBehalfBy": StringAttributeClass, // Shows who created the record on behalf of another user."]),
        "modifiedOnBehalfBy": StringAttributeClass, // Shows who last updated the record on behalf of another user."]),
        "overriddenCreatedOn": StringAttributeClass, // Date and time that the record was migrated."]),
        "importSequenceNumber": IntegerAttributeClass, //Sequence number of the import that created this record."]),
        "ownerId": StringAttributeClass, // Owner Id"]),
        "ownerIdType": StringAttributeClass, // The type of owner, either User or Team."]),
        "owningBusinessUnitId": UUIDAttributeClass, //Unique identifier for the business unit that owns the record"]),
        "owningUser": StringAttributeClass, // Unique identifier of the user that owns the activity."]),
        "owningTeam": StringAttributeClass, // Unique identifier for the team that owns the record."]),
        "timeZoneRuleVersionNumber": IntegerAttributeClass, //For internal use only."]),
        "utcConversionTimeZoneCode": StringAttributeClass, // Time zone code that was in use when the record was created."]),
        "activityName": StringAttributeClass, // Specific fields that includes data on customer's activity."]),
        "activityType": StringAttributeClass, //
        "actualEndDate": DateAttributeClass, // End time of an activity."]),
        "actualStartDate": DateAttributeClass, // Start time of an activity."]),
        "attachmentReferences": StringAttributeClass, // References to any attachment(s) for an activity."]),
        "community": StringAttributeClass, // Activity community."]),
        "customerActivityId": StringAttributeClass, // Unique identifier for entity instances"]),
        "customerProfileId": StringAttributeClass, //
        "mentions": StringAttributeClass, // Activity mentions."]),
        "message": StringAttributeClass, // Message."]),
        "numberOfResponses": StringAttributeClass, // Number of responses for/on an activity, like, number of emails on a thread, number of likes on a LinkedIn, Facebook post etc."]),
        "sentiment": StringAttributeClass, // Activity sentiment."]),
        "subject": StringAttributeClass, // Activity subject."]),
        "Url": OOPUrlAttribute.descriptions(["en":""]),
        "version": StringAttributeClass, // Denotes latest version of an activity for manual tracking."]),
        "viralityScore": StringAttributeClass, // Virality score for an activity."]),
        "stateCode": StringAttributeClass, // Status of the CustomerActivity"]),
        "stateCode_display": StringAttributeClass, //
        "statusCode": StringAttributeClass, // Reason for the status of the CustomerActivity"]),
        "statusCode_display": StringAttributeClass, //
      ])
      .registerPath("crm_customeractivities");
  }
}
mixin(EntityCalls!("CRMCustomerActivity"));

unittest {
  version(test_model_crm) {
    assert(CRMCustomerActivity);

  auto entity = CRMCustomerActivity;
  // auto repository = OOPFileRepository("./tests");
/* /*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */ 
  }
}