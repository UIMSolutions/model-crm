module models.crm.projects.rating_value;

@safe:
import uim.entities;

// A unique value associated with a rating model that allows providing a user friendly rating value..
class DCRMRatingValue : DOOPEntity {
  mixin(OOPEntityThis!("CRMRatingValue"));

  override void initialize() {
    super.initialize;

    this
      .addAttributes([
        "createdOnBehalfBy": OOPLinkAttribute("aplUser").descriptions(["en":"Unique identifier of the delegate user who created the record."]),
        "modifiedOnBehalfBy": OOPLinkAttribute("aplUser").descriptions(["en":"Unique identifier of the delegate user who modified the record."]),
        "overriddenCreatedOn": OOPTimestampAttribute.descriptions(["en":"Date and time that the record was migrated."]),
        "importSequenceNumber": OOPIntegerAttribute.descriptions(["en":"Sequence number of the import that created this record."]),
        "ownerId": OOPUUIDAttribute.descriptions(["en":"Owner Id"]),
        "ownerIdType": OOPStringAttribute.descriptions(["en":"The type of owner, either User or Team."]),
        "owningBusinessUnitId": OOPLinkAttribute("aplBusinessUnit").descriptions(["en":"Unique identifier for the business unit that owns the record"]),
        "owningUserId": OOPLinkAttribute("aplUser").descriptions(["en":"Unique identifier of the user that owns the activity."]),
        "owningTeamId": OOPLinkAttribute("aplTeam").descriptions(["en":"Unique identifier for the team that owns the record."]),
        "timeZoneRuleVersionNumber": OOPIntegerAttribute.descriptions(["en":"For internal use only."]),
        "utcConversionTimeZoneCode": OOPStringAttribute.descriptions(["en":"Time zone code that was in use when the record was created."]),
        "ratingValueId": OOPUUIDAttribute.descriptions(["en":"Unique identifier of the rating value."]),
        "ratingModel": OOPStringAttribute.descriptions(["en":"Select the model that this rating value is associated with."]),
        "stateCode": OOPStringAttribute.descriptions(["en":"Status of the Rating Value"]),
        "stateCode_display": OOPStringAttribute.descriptions(["en":""]),
        "statusCode": OOPStringAttribute.descriptions(["en":"Reason for the status of the Rating Value"]),
        "statusCode_display": OOPStringAttribute.descriptions(["en":""]),
        "value": OOPStringAttribute.descriptions(["en":"Type a rating value which is unique to the rating model it is associated with and lies within the range specified on the model."]),
        "exchangeRate": OOPStringAttribute.descriptions(["en":"Exchange rate for the currency associated with the ratingvalue with respect to the base currency."]),
        "transactionCurrencyId": OOPLinkAttribute("aplCurrency").descriptions(["en":"Exchange rate for the currency associated with the RatingValue with respect to the base currency."]),
        "isDefault": OOPBooleanAttribute.descriptions(["en":""]),
      ])
      .registerPath("crm_ratingvalues");
  }
}
mixin(OOPEntityCalls!("CRMRatingValue"));

unittest {
  version(test_model_crm) {
    assert(CRMRatingValue);
  
  auto entity = CRMRatingValue;
  // auto repository = OOPFileRepository("./tests");
/* /*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */ 
  }
}