module models.crm.projects.rating_value;

@safe:
import uim.entities;

// A unique value associated with a rating model that allows providing a user friendly rating value..
class DAPLRatingValue : DOOPEntity {
  this() { super();
    this.attributes([
      "createdOnBehalfBy": OOPAttributeLink("aplUser").descriptions(["en":"Unique identifier of the delegate user who created the record."]),
      "modifiedOnBehalfBy": OOPAttributeLink("aplUser").descriptions(["en":"Unique identifier of the delegate user who modified the record."]),
      "overriddenCreatedOn": OOPAttributeTimestamp.descriptions(["en":"Date and time that the record was migrated."]),
      "importSequenceNumber": OOPAttributeNumber.descriptions(["en":"Sequence number of the import that created this record."]),
      "ownerId": OOPAttributeUUID.descriptions(["en":"Owner Id"]),
      "ownerIdType": OOPAttributeString.descriptions(["en":"The type of owner, either User or Team."]),
      "owningBusinessUnitId": OOPAttributeLink("aplBusinessUnit").descriptions(["en":"Unique identifier for the business unit that owns the record"]),
      "owningUserId": OOPAttributeLink("aplUser").descriptions(["en":"Unique identifier of the user that owns the activity."]),
      "owningTeamId": OOPAttributeLink("aplTeam").descriptions(["en":"Unique identifier for the team that owns the record."]),
      "timeZoneRuleVersionNumber": OOPAttributeNumber.descriptions(["en":"For internal use only."]),
      "utcConversionTimeZoneCode": OOPAttributeString.descriptions(["en":"Time zone code that was in use when the record was created."]),
      "ratingValueId": OOPAttributeUUID.descriptions(["en":"Unique identifier of the rating value."]),
      "ratingModel": OOPAttributeString.descriptions(["en":"Select the model that this rating value is associated with."]),
      "stateCode": OOPAttributeString.descriptions(["en":"Status of the Rating Value"]),
      "stateCode_display": OOPAttributeString.descriptions(["en":""]),
      "statusCode": OOPAttributeString.descriptions(["en":"Reason for the status of the Rating Value"]),
      "statusCode_display": OOPAttributeString.descriptions(["en":""]),
      "value": OOPAttributeString.descriptions(["en":"Type a rating value which is unique to the rating model it is associated with and lies within the range specified on the model."]),
      "exchangeRate": OOPAttributeString.descriptions(["en":"Exchange rate for the currency associated with the ratingvalue with respect to the base currency."]),
      "transactionCurrencyId": OOPAttributeLink("aplCurrency").descriptions(["en":"Exchange rate for the currency associated with the RatingValue with respect to the base currency."]),
      "isDefault": OOPAttributeBoolean.descriptions(["en":""]),
    ]);
  }

  override string entityClass() { return "aplRatingValue"; }
  override string entityClasses() { return "aplRatingValues"; }

  this(UUID myId) { 
    this(); this.id(myId); }
  this(string myName) { 
    this(); this.name(myName); }
  this(UUID myId, string myName) { 
    this(); this.id(myId).name(myName); }
  this(Json aJson) { 
    this(); this.fromJson(aJson); }
}
auto APLRatingValue() { return new DAPLRatingValue; } 
auto APLRatingValue(Json json) { return new DAPLRatingValue(json); } 

unittest {
  version(uim_entities) {
    assert(APLRatingValue);
  
  auto entity = APLRatingValue;
  // auto repository = OOPFileRepository("./tests");
/* /*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */ 
  }
}