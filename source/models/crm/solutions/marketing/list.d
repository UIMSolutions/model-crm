module models.crm.solutions.marketing.list;

@safe:
import uim.entities;

// Group of existing or potential customers created for a marketing campaign or other sales purposes.
class DAPLMarketingList : DOOPEntity {
  this() { super();
    this.attributes([
      "createdOnBehalfBy": OOPAttributeString.descriptions(["en":"Shows who created the record on behalf of another user."]),
      "modifiedOnBehalfBy": OOPAttributeString.descriptions(["en":"Shows who last updated the record on behalf of another user."]),
      "overriddenCreatedOn": OOPAttributeString.descriptions(["en":"Date and time that the record was migrated."]),
      "importSequenceNumber": OOPAttributeNumber.descriptions(["en":"Sequence number of the import that created this record."]),
      "ownerId": OOPAttributeString.descriptions(["en":"Owner Id"]),
      "ownerIdType": OOPAttributeString.descriptions(["en":"The type of owner, either User or Team."]),
      "owningBusinessUnitId": OOPAttributeLink("aplBusinessUnit").descriptions(["en":"Unique identifier for the business unit that owns the record"]),
      "owningUser": OOPAttributeString.descriptions(["en":"Unique identifier of the user that owns the activity."]),
      "owningTeam": OOPAttributeString.descriptions(["en":"Unique identifier for the team that owns the record."]),
      "timeZoneRuleVersionNumber": OOPAttributeNumber.descriptions(["en":"For internal use only."]),
      "utcConversionTimeZoneCode": OOPAttributeString.descriptions(["en":"Time zone code that was in use when the record was created."]),
      "versionNumber": OOPAttributeNumber.descriptions(["en":"Version Number"]),
      "listId": OOPAttributeString.descriptions(["en":"Unique identifier of the marketing list."]),
      "listName": OOPAttributeString.descriptions(["en":"Type a name for the marketing list so that it is identified correctly in lists."]),
      "processId": OOPAttributeString.descriptions(["en":"Contains the id of the process associated with the entity."]),
      "stageId": OOPAttributeString.descriptions(["en":"Contains the id of the stage where the entity is located."]),
      "traversedPath": OOPAttributeString.descriptions(["en":"A comma separated list of string values representing the unique identifiers of stages in a Business Process Flow Instance in the order that they occur."]),
      "cost": OOPAttributeString.descriptions(["en":"Type the cost of obtaining the marketing list."]),
      "transactionCurrencyId": OOPAttributeString.descriptions(["en":"Choose the local currency for the record to make sure budgets are reported in the correct currency."]),
      "exchangeRate": OOPAttributeString.descriptions(["en":"Shows the conversion rate of the record's currency. The exchange rate is used to convert all money fields in the record from the local currency to the system's default currency."]),
      "costBase": OOPAttributeString.descriptions(["en":"Value of the Cost in base currency."]),
      "createdFromCode": OOPAttributeString.descriptions(["en":"Select the type of members that this marketing list will contain: accounts, contacts, or leads. Each list can have only one member type and this value can't be changed after the marketing list is created."]),
      "createdFromCode_display": OOPAttributeString.descriptions(["en":""]),
      "doNotSendOnOptOut": OOPAttributeString.descriptions(["en":"Select whether to override the opt-out settings on leads, contacts, and accounts for the members of the target marketing lists of the campaign activity. If No is selected, those who have chosen to opt out won't be excluded from the list. This means they will receive marketing materials."]),
      "ignoreInactiveListMembers": OOPAttributeString.descriptions(["en":"Select whether inactive accounts, contacts, or leads should be excluded from the campaign activity distribution when the marketing list is included in a campaign."]),
      "lastUsedOn": OOPAttributeString.descriptions(["en":"Shows the date and time when the marketing list was last used in a campaign or in the creation of activities or opportunities."]),
      "lockStatus": OOPAttributeString.descriptions(["en":"Select whether the marketing list is locked. If Yes is selected, no additional members can be added to the marketing list."]),
      "memberCount": OOPAttributeString.descriptions(["en":"Shows the sum of all members in the marketing list."]),
      "memberType": OOPAttributeString.descriptions(["en":"Type of the members that can be stored in the marketing list."]),
      "purpose": OOPAttributeString.descriptions(["en":"Type the intended use of the marketing list to identify its key segments, target offers, or business group."]),
      "query": OOPAttributeString.descriptions(["en":"Query used for retrieving members of marketing list."]),
      "source": OOPAttributeString.descriptions(["en":"Type the source of the marketing list, such as a third-party supplier or internal database."]),
      "stateCode": OOPAttributeString.descriptions(["en":"Shows whether the marketing list is active or inactive. Inactive marketing lists are read-only and can't be edited unless they are reactivated."]),
      "stateCode_display": OOPAttributeString.descriptions(["en":""]),
      "statusCode": OOPAttributeString.descriptions(["en":"Select the marketing list's status."]),
      "statusCode_display": OOPAttributeString.descriptions(["en":""]),
      "type": OOPAttributeString.descriptions(["en":"Select whether you want the marketing list to be static or dynamic. The members in a static marketing list are unchanging. A dynamic marketing list is based on a dynamic query that retrieves the updated list of members"]),
      "issubscription": OOPAttributeString.descriptions(["en":""]),
    ]);
  }

  override string entityClass() { return "aplMarketingList"; }
  override string entityClasses() { return "aplMarketingLists"; }

  this(UUID myId) { 
    this(); this.id(myId); }
  this(string myName) { 
    this(); this.name(myName); }
  this(UUID myId, string myName) { 
    this(); this.id(myId).name(myName); }
  this(Json aJson) { 
    this(); this.fromJson(aJson); }
}
auto APLMarketingList() { return new DAPLMarketingList; } 
auto APLMarketingList(Json json) { return new DAPLMarketingList(json); } 

unittest {
  version(uim_entities) {
    assert(APLMarketingList);
  
  auto entity = APLMarketingList;
  // auto repository = OOPFileRepository("./tests");
/* /*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */ 
  }
}