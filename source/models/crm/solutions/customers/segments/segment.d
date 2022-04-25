module models.crm.solutions.customers.segments.segment;

@safe:
import uim.entities;

// Defines a group of members that exhibit common traits.
class DCRMSegment : DOOPEntity {
  mixin(EntityThis!("CRMSegment"));

  override void initialize() {
    super.initialize;

    this
      .addAttributes([
        "createdOnBehalfBy": OOPStringAttribute.descriptions(["en":"Shows who created the record on behalf of another user."]),
        "modifiedOnBehalfBy": OOPStringAttribute.descriptions(["en":"Shows who last updated the record on behalf of another user."]),
        "overriddenCreatedOn": OOPStringAttribute.descriptions(["en":"Date and time that the record was migrated."]),
        "importSequenceNumber": OOPIntegerAttribute.descriptions(["en":"Sequence number of the import that created this record."]),
        "ownerId": OOPStringAttribute.descriptions(["en":"Owner Id"]),
        "ownerIdType": OOPStringAttribute.descriptions(["en":"The type of owner, either User or Team."]),
        "owningBusinessUnitId": OOPLinkAttribute("aplBusinessUnit").descriptions(["en":"Unique identifier for the business unit that owns the record"]),
        "owningUser": OOPStringAttribute.descriptions(["en":"Unique identifier of the user that owns the activity."]),
        "owningTeam": OOPStringAttribute.descriptions(["en":"Unique identifier for the team that owns the record."]),
        "timeZoneRuleVersionNumber": OOPIntegerAttribute.descriptions(["en":"For internal use only."]),
        "utcConversionTimeZoneCode": OOPStringAttribute.descriptions(["en":"Time zone code that was in use when the record was created."]),
        "lastEvaluationDate": OOPAttributeDate.descriptions(["en":"Latest date when segments are evaluated/refreshed."]),
        "memberCount": OOPStringAttribute.descriptions(["en":"Count of customers/members associated with a segment."]),
        "queryDefinition": OOPStringAttribute.descriptions(["en":"Segment definition including groups, filters, conditions etc."]),
        "segmentId": OOPStringAttribute.descriptions(["en":"Unique identifier for entity instances"]),
        "segmentType": OOPStringAttribute.descriptions(["en":"Segment type."]),
        "segmentType_display": OOPStringAttribute.descriptions(["en":""]),
        "version": OOPStringAttribute.descriptions(["en":"Denotes latest version of a segment for manual tracking."]),
        "stateCode": OOPStringAttribute.descriptions(["en":"Status of the Segment"]),
        "stateCode_display": OOPStringAttribute.descriptions(["en":""]),
        "statusCode": OOPStringAttribute.descriptions(["en":"Reason for the status of the Segment"]),
        "statusCode_display": OOPStringAttribute.descriptions(["en":""]),
      ])
      .registerPath("crm_segments");
  }
}
mixin(EntityCalls!("CRMSegment"));

unittest {
  version(test_model_crm) {
    assert(CRMSegment);

  auto entity = CRMSegment;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}