module models.crm.services.resources.specification;


@safe:
import uim.entities;

// Selection rule that allows the scheduling engine to select a number of resources from a pool of resources. The rules can be associated with a service.
class DCRMResourceSpecification : DEntity {
  mixin(EntityThis!("CRMResourceSpecification"));

  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([
        "createdOnBehalfBy": StringAttribute, // Unique identifier of the delegate user who created the resourcespec."]),
        "modifiedOnBehalfBy": StringAttribute, // Unique identifier of the delegate user who last modified the resourcespec."]),
        "businessUnitId": UUIDAttribute, //Unique identifier of the business unit with which the resource specification is associated."]),
        "importSequenceNumber": IntegerAttribute, //Sequence number of the import that created this record."]),
        "overriddenCreatedOn": StringAttribute, // Date and time that the record was migrated."]),
        "timeZoneRuleVersionNumber": IntegerAttribute, //For internal use only."]),
        "utcConversionTimeZoneCode": StringAttribute, // Time zone code that was in use when the record was created."]),
        "constraints": StringAttribute, // Additional constraints, specified as expressions, which are used to filter a set of valid resources."]),
        "effortRequired": StringAttribute, // Number that specifies the minimal effort required from resources."]),
        "groupObjectId": UUIDAttribute, // Unique identifier of the scheduling group with which the resource specification is associated."]),
        "objectiveExpression": StringAttribute, // Search strategy to use for the resource specification."]),
        "objectTypeCode": StringAttribute, // Type of entity with which the resource specification is associated."]),
        "organizationId": UUIDAttribute, // Unique identifier of the organization with which the resource specification is associated."]),
        "requiredCount": StringAttribute, // Required number of resources that must be available. Use -1 to indicate all resources."]),
        "sameSite": StringAttribute, // Value that specifies that all valid and available resources must be in the same site."]),
      ])
      .registerPath("crm_resourcespecifications");
  }
}
mixin(EntityCalls!("CRMResourceSpecification"));

unittest {
  version(test_model_crm) {
    assert(CRMResourceSpecification);
  
  auto entity = CRMResourceSpecification;
  // auto repository = OOPFileRepository("./tests");
/* /*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */ 
  }
}