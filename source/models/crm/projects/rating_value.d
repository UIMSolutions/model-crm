module models.crm.projects.rating_value;

@safe:
import uim.entities;

// A unique value associated with a rating model that allows providing a user friendly rating value..
class DCRMRatingValue : DEntity {
  mixin(EntityThis!("CRMRatingValue"));

  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([
        "createdOnBehalfBy": UUIDAttribute, //Unique identifier of the delegate user who created the record."]),
        "modifiedOnBehalfBy": UUIDAttribute, //Unique identifier of the delegate user who modified the record."]),
        "overriddenCreatedOn": TimestampAttribute, //Date and time that the record was migrated."]),
        "importSequenceNumber": IntegerAttribute, //Sequence number of the import that created this record."]),
        "ownerId": UUIDAttribute, // Owner Id"]),
        "ownerIdType": StringAttribute, // The type of owner, either User or Team."]),
        "owningBusinessUnitId": UUIDAttribute, //Unique identifier for the business unit that owns the record"]),
        "owningUserId": UUIDAttribute, //Unique identifier of the user that owns the activity."]),
        "owningTeamId": UUIDAttribute, //Unique identifier for the team that owns the record."]),
        "timeZoneRuleVersionNumber": IntegerAttribute, //For internal use only."]),
        "utcConversionTimeZoneCode": StringAttribute, // Time zone code that was in use when the record was created."]),
        "ratingValueId": UUIDAttribute, // Unique identifier of the rating value."]),
        "ratingModel": StringAttribute, // Select the model that this rating value is associated with."]),
        "stateCode": StringAttribute, // Status of the Rating Value"]),
        "stateCode_display": StringAttribute, //
        "statusCode": StringAttribute, // Reason for the status of the Rating Value"]),
        "statusCode_display": StringAttribute, //
        "value": StringAttribute, // Type a rating value which is unique to the rating model it is associated with and lies within the range specified on the model."]),
        "exchangeRate": StringAttribute, // Exchange rate for the currency associated with the ratingvalue with respect to the base currency."]),
        "transactionCurrencyId": CurrencyIdAttribute, // Exchange rate for the currency associated with the RatingValue with respect to the base currency."]),
        "isDefault": BooleanAttribute, //
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