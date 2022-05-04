module models.crm.services.resources.specification;


@safe:
import uim.entities;

// Selection rule that allows the scheduling engine to select a number of resources from a pool of resources. The rules can be associated with a service.
class DCRMResourceSpecification : DOOPEntity {
  mixin(EntityThis!("CRMResourceSpecification"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "createdOnBehalfBy": StringAttributeClass, // Unique identifier of the delegate user who created the resourcespec."]),
        "modifiedOnBehalfBy": StringAttributeClass, // Unique identifier of the delegate user who last modified the resourcespec."]),
        "businessUnitId": UUIDAttributeClass, //Unique identifier of the business unit with which the resource specification is associated."]),
        "importSequenceNumber": IntegerAttributeClass, //Sequence number of the import that created this record."]),
        "overriddenCreatedOn": StringAttributeClass, // Date and time that the record was migrated."]),
        "timeZoneRuleVersionNumber": IntegerAttributeClass, //For internal use only."]),
        "utcConversionTimeZoneCode": StringAttributeClass, // Time zone code that was in use when the record was created."]),
        "constraints": StringAttributeClass, // Additional constraints, specified as expressions, which are used to filter a set of valid resources."]),
        "effortRequired": StringAttributeClass, // Number that specifies the minimal effort required from resources."]),
        "groupObjectId": UUIDAttributeClass, // Unique identifier of the scheduling group with which the resource specification is associated."]),
        "objectiveExpression": StringAttributeClass, // Search strategy to use for the resource specification."]),
        "objectTypeCode": StringAttributeClass, // Type of entity with which the resource specification is associated."]),
        "organizationId": UUIDAttributeClass, // Unique identifier of the organization with which the resource specification is associated."]),
        "requiredCount": StringAttributeClass, // Required number of resources that must be available. Use -1 to indicate all resources."]),
        "sameSite": StringAttributeClass, // Value that specifies that all valid and available resources must be in the same site."]),
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