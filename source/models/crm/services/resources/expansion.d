module models.crm.services.resources.expansion;

@safe:
import uim.entities;

// 
class DCRMResourceExpansion : DOOPEntity {
  mixin(EntityThis!("CRMResourceExpansion"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "resourceGroupExpansionId": UUIDAttributeClass, // Unique identifier of the resource expansion record."]),
        "importSequenceNumber": IntegerAttributeClass, //Sequence number of the import that created this record."]),
        "overriddenCreatedOn": StringAttributeClass, // Date and time that the record was migrated."]),
        "timeZoneRuleVersionNumber": IntegerAttributeClass, //For internal use only."]),
        "utcConversionTimeZoneCode": StringAttributeClass, // Time zone code that was in use when the record was created."]),
        "itemId": UUIDAttributeClass, // Item that is part of expansion of resource identified by object ID. One object ID can have many item IDs."]),
        "methodCode": StringAttributeClass, // Code for retrieval method."]),
        "methodCode_display": StringAttributeClass, //
        "modifiedOn": StringAttributeClass, // Date and time when the record was last modified."]),
        "objectId": UUIDAttributeClass, // Object being expanded."]),
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