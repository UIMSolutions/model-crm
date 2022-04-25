module models.crm.services.resources.resource;

@safe:
import uim.entities;

// 
class DCRMResource : DOOPEntity {
  mixin(EntityThis!("CRMResource"));

  override void initialize() {
    super.initialize;

    this
      .addAttributes([
        "resourceId": OOPAttributeUserId.descriptions(["en":"Unique identifier of the resource."]),
        "businessUnitId": OOPAttributeUserId.descriptions(["en":"Business Unit Id"]),
        "importSequenceNumber": OOPAttributeUserId.descriptions(["en":"Sequence number of the import that created this record."]),
        "overriddenCreatedOn": OOPAttributeUserId.descriptions(["en":"Date and time that the record was migrated."]),
        "timeZoneRuleVersionNumber": OOPAttributeUserId.descriptions(["en":"For internal use only."]),
        "utcConversionTimeZoneCode": OOPAttributeUserId.descriptions(["en":"Time zone code that was in use when the record was created."]),
        "calendarId": OOPUUIDAttribute.descriptions(["en":"Unique identifier of the calendar for the resource."]),
        "displayInServiceViews": OOPAttributeUserId.descriptions(["en":"For internal use only."]),
        "isDisabled": OOPBooleanAttribute.descriptions(["en":"Information about whether the resource is enabled."]),
        "objectTypeCode": OOPAttributeUserId.descriptions(["en":"Type of entity with which the resource is associated."]),
        "organizationId": OOPAttributeUserId.descriptions(["en":"Unique identifier of the organization with which the resource is associated."]),
        "siteId": OOPAttributeUserId.descriptions(["en":"Unique identifier of the site at which the resource is located."]),
        "entityImageId": OOPAttributeUserId.descriptions(["en":""])
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