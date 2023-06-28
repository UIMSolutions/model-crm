module models.crm.sales.opportunities.relationship;

@safe:
import uim.entities;

// Association between a competitor and a product offered by the competitor.
class DCRMOpportunityRelationship : DEntity {
  mixin(EntityThis!("CRMOpportunityRelationship"));

  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([
        "createdOnBehalfBy": UUIDAttribute, //Shows who created the record on behalf of another user."]),
        "modifiedOnBehalfBy": UUIDAttribute, //Shows who last updated the record on behalf of another user."]),
        "overriddenCreatedOn": TimestampAttribute, //Date and time that the record was migrated."]),
        "importSequenceNumber": IntegerAttribute, //Sequence number of the import that created this record."]),
        "ownerId": UUIDAttribute, // Owner Id"]),
        "ownerIdType": StringAttribute, // The type of owner, either User or Team."]),
        "owningBusinessUnitId": UUIDAttribute, //Unique identifier for the business unit that owns the record"]),
        "owningUserId": UUIDAttribute, //Unique identifier of the user that owns the activity."]),
        "owningTeamId": UUIDAttribute, //Unique identifier for the team that owns the record."]),
        "timeZoneRuleVersionNumber": IntegerAttribute, //For internal use only."]),
        "utcConversionTimeZoneCode": StringAttribute, // Time zone code that was in use when the record was created."]),
        "customerOpportunityRoleId": UUIDAttribute, // Unique identifier of the opportunity relationship."]),
        "customerId": UUIDAttribute, // The customer account or contact to provide a quick link to additional customer details, such as account information, activities, and opportunities."]),
        "customerIdType":StringAttribute, // The type of customer, either Account or Contact."]),
        "opportunityId": UUIDAttribute, // Choose the opportunity that the specified account or contact is related to. The opportunity relationship will be displayed in the Relationships view on the selected opportunity."]),
        "opportunityRoleId": UUIDAttribute, // Choose the role or nature of the relationship that the customer has with the opportunity. The field is read-only until a customer has been selected. Administrators can configure role values under Business Management in the Settings area."]),
        "opportunityStateCode": StringAttribute, // Status of the opportunity."]),
        "opportunityStatusCode": StringAttribute, // Reason for the status of the opportunity."]),
      ])
      .registerPath("crm_opportunityrelationships");
  }
}
mixin(EntityCalls!("CRMOpportunityRelationship"));
unittest {
  version(test_model_crm) {
    assert(CRMOpportunityRelationship);
  
  auto entity = CRMOpportunityRelationship;
  // auto repository = OOPFileRepository("./tests");
/* /*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */ 
  }
}