module models.crm.solutions.customers.activity;

@safe:
import uim.entities;

// An activity performed by a user that has observational value to the business.
class DCRMCustomerActivity : DEntity {
  mixin(EntityThis!("CRMCustomerActivity"));

  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([
        "createdOnBehalfBy": StringAttribute, // Shows who created the record on behalf of another user."]),
        "modifiedOnBehalfBy": StringAttribute, // Shows who last updated the record on behalf of another user."]),
        "overriddenCreatedOn": StringAttribute, // Date and time that the record was migrated."]),
        "importSequenceNumber": IntegerAttribute, //Sequence number of the import that created this record."]),
        "ownerId": UUIDAttribute, // Owner Id"]),
        "ownerIdType": StringAttribute, // The type of owner, either User or Team."]),
        "owningBusinessUnitId": UUIDAttribute, //Unique identifier for the business unit that owns the record"]),
        "owningUser": StringAttribute, // Unique identifier of the user that owns the activity."]),
        "owningTeam": StringAttribute, // Unique identifier for the team that owns the record."]),
        "timeZoneRuleVersionNumber": IntegerAttribute, //For internal use only."]),
        "utcConversionTimeZoneCode": StringAttribute, // Time zone code that was in use when the record was created."]),
        "activityName": StringAttribute, // Specific fields that includes data on customer's activity."]),
        "activityType": StringAttribute, //
        "actualEndDate": DateAttribute, // End time of an activity."]),
        "actualStartDate": DateAttribute, // Start time of an activity."]),
        "attachmentReferences": StringAttribute, // References to any attachment(s) for an activity."]),
        "community": StringAttribute, // Activity community."]),
        "customerActivityId": UUIDAttribute, // Unique identifier for entity instances"]),
        "customerProfileId": UUIDAttribute, //
        "mentions": StringAttribute, // Activity mentions."]),
        "message": StringAttribute, // Message."]),
        "numberOfResponses": StringAttribute, // Number of responses for/on an activity, like, number of emails on a thread, number of likes on a LinkedIn, Facebook post etc."]),
        "sentiment": StringAttribute, // Activity sentiment."]),
        "subject": StringAttribute, // Activity subject."]),
        "Url": UrlAttribute, // "]),
        "version": StringAttribute, // Denotes latest version of an activity for manual tracking."]),
        "viralityScore": StringAttribute, // Virality score for an activity."]),
        "stateCode": StringAttribute, // Status of the CustomerActivity"]),
        "stateCode_display": StringAttribute, //
        "statusCode": StringAttribute, // Reason for the status of the CustomerActivity"]),
        "statusCode_display": StringAttribute, //
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