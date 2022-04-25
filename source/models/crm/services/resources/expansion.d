module models.crm.services.resources.expansion;

@safe:
import uim.entities;

// 
class DCRMResourceExpansion : DOOPEntity {
  mixin(EntityThis!("CRMResourceExpansion"));

  override void initialize() {
    super.initialize;

    this
      .addAttributes([
        "resourceGroupExpansionId": OOPUUIDAttribute.descriptions(["en":"Unique identifier of the resource expansion record."]),
        "importSequenceNumber": OOPIntegerAttribute.descriptions(["en":"Sequence number of the import that created this record."]),
        "overriddenCreatedOn": OOPStringAttribute.descriptions(["en":"Date and time that the record was migrated."]),
        "timeZoneRuleVersionNumber": OOPIntegerAttribute.descriptions(["en":"For internal use only."]),
        "utcConversionTimeZoneCode": OOPStringAttribute.descriptions(["en":"Time zone code that was in use when the record was created."]),
        "itemId": OOPUUIDAttribute.descriptions(["en":"Item that is part of expansion of resource identified by object ID. One object ID can have many item IDs."]),
        "methodCode": OOPStringAttribute.descriptions(["en":"Code for retrieval method."]),
        "methodCode_display": OOPStringAttribute.descriptions(["en":""]),
        "modifiedOn": OOPStringAttribute.descriptions(["en":"Date and time when the record was last modified."]),
        "objectId": OOPUUIDAttribute.descriptions(["en":"Object being expanded."]),
      ])
      .registerPath("crm_resourceexpansions");
  }
}
mixin(EntityCalls!("CRMResourceExpansion"));

unittest {
  version(test_model_crm) {
    assert(CRMResourceExpansion);
  
  auto entity = CRMResourceExpansion;
  // auto repository = OOPFileRepository("./tests");
/* /*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */ 
  }
}