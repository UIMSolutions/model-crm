module models.crm.projects.rating_value;

@safe:
import uim.entities;

// A unique value associated with a rating model that allows providing a user friendly rating value..
class DCRMRatingValue : DOOPEntity {
  mixin(EntityThis!("CRMRatingValue"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "createdOnBehalfBy": OOPLinkAttribute("aplUser").descriptions(["en":"Unique identifier of the delegate user who created the record."]),
        "modifiedOnBehalfBy": OOPLinkAttribute("aplUser").descriptions(["en":"Unique identifier of the delegate user who modified the record."]),
        "overriddenCreatedOn": OOPTimestampAttribute.descriptions(["en":"Date and time that the record was migrated."]),
        "importSequenceNumber": OOPIntegerAttribute.descriptions(["en":"Sequence number of the import that created this record."]),
        "ownerId": UUIDAttributeClass, // Owner Id"]),
        "ownerIdType": StringAttributeClass, // The type of owner, either User or Team."]),
        "owningBusinessUnitId": OOPLinkAttribute("aplBusinessUnit").descriptions(["en":"Unique identifier for the business unit that owns the record"]),
        "owningUserId": OOPLinkAttribute("aplUser").descriptions(["en":"Unique identifier of the user that owns the activity."]),
        "owningTeamId": OOPLinkAttribute("aplTeam").descriptions(["en":"Unique identifier for the team that owns the record."]),
        "timeZoneRuleVersionNumber": OOPIntegerAttribute.descriptions(["en":"For internal use only."]),
        "utcConversionTimeZoneCode": StringAttributeClass, // Time zone code that was in use when the record was created."]),
        "ratingValueId": UUIDAttributeClass, // Unique identifier of the rating value."]),
        "ratingModel": StringAttributeClass, // Select the model that this rating value is associated with."]),
        "stateCode": StringAttributeClass, // Status of the Rating Value"]),
        "stateCode_display": StringAttributeClass, //
        "statusCode": StringAttributeClass, // Reason for the status of the Rating Value"]),
        "statusCode_display": StringAttributeClass, //
        "value": StringAttributeClass, // Type a rating value which is unique to the rating model it is associated with and lies within the range specified on the model."]),
        "exchangeRate": StringAttributeClass, // Exchange rate for the currency associated with the ratingvalue with respect to the base currency."]),
        "transactionCurrencyId": OOPLinkAttribute("aplCurrency").descriptions(["en":"Exchange rate for the currency associated with the RatingValue with respect to the base currency."]),
        "isDefault": BooleanAttributeClass, //
      ])
      .registerPath("crm_ratingvalues");
  }
}
mixin(EntityCalls!("CRMRatingValue"));

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