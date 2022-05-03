module models.crm.services.resources.resource;

@safe:
import uim.entities;

// 
class DCRMResource : DOOPEntity {
  mixin(EntityThis!("CRMResource"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "resourceId": UserIdAttributeClass, // Unique identifier of the resource."]),
        "businessUnitId": UserIdAttributeClass, // Business Unit Id"]),
        "importSequenceNumber": UserIdAttributeClass, // Sequence number of the import that created this record."]),
        "overriddenCreatedOn": UserIdAttributeClass, // Date and time that the record was migrated."]),
        "timeZoneRuleVersionNumber": UserIdAttributeClass, // For internal use only."]),
        "utcConversionTimeZoneCode": UserIdAttributeClass, // Time zone code that was in use when the record was created."]),
        "calendarId": UUIDAttributeClass, // Unique identifier of the calendar for the resource."]),
        "displayInServiceViews": UserIdAttributeClass, // For internal use only."]),
        "isDisabled": BooleanAttributeClass, // Information about whether the resource is enabled."]),
        "objectTypeCode": UserIdAttributeClass, // Type of entity with which the resource is associated."]),
        "organizationId": UserIdAttributeClass, // Unique identifier of the organization with which the resource is associated."]),
        "siteId": UserIdAttributeClass, // Unique identifier of the site at which the resource is located."]),
        "entityImageId": UserIdAttributeClass, // "])
      ])
      .registerPath("crm_resources");
  }
}
mixin(EntityCalls!("CRMResource"));

unittest {
  version(test_model_crm) {
    assert(CRMResource);
  
  auto entity = CRMResource;
  // auto repository = OOPFileRepository("./tests");
/* /*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */ 
  }
}