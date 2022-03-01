module models.crm.solutions.marketing.list;

@safe:
import uim.entities;

// Group of existing or potential customers created for a marketing campaign or other sales purposes.
class DCRMMarketingList : DOOPEntity {
  this() { super();
    this.attributes([
      "createdOnBehalfBy": OOPStringAttribute.descriptions(["en":"Shows who created the record on behalf of another user."]),
      "modifiedOnBehalfBy": OOPStringAttribute.descriptions(["en":"Shows who last updated the record on behalf of another user."]),
      "overriddenCreatedOn": OOPStringAttribute.descriptions(["en":"Date and time that the record was migrated."]),
      "importSequenceNumber": OOPAttributeNumber.descriptions(["en":"Sequence number of the import that created this record."]),
      "ownerId": OOPStringAttribute.descriptions(["en":"Owner Id"]),
      "ownerIdType": OOPStringAttribute.descriptions(["en":"The type of owner, either User or Team."]),
      "owningBusinessUnitId": OOPAttributeLink("aplBusinessUnit").descriptions(["en":"Unique identifier for the business unit that owns the record"]),
      "owningUser": OOPStringAttribute.descriptions(["en":"Unique identifier of the user that owns the activity."]),
      "owningTeam": OOPStringAttribute.descriptions(["en":"Unique identifier for the team that owns the record."]),
      "timeZoneRuleVersionNumber": OOPAttributeNumber.descriptions(["en":"For internal use only."]),
      "utcConversionTimeZoneCode": OOPStringAttribute.descriptions(["en":"Time zone code that was in use when the record was created."]),
      "versionNumber": OOPAttributeNumber.descriptions(["en":"Version Number"]),
      "listId": OOPStringAttribute.descriptions(["en":"Unique identifier of the marketing list."]),
      "listName": OOPStringAttribute.descriptions(["en":"Type a name for the marketing list so that it is identified correctly in lists."]),
      "processId": OOPStringAttribute.descriptions(["en":"Contains the id of the process associated with the entity."]),
      "stageId": OOPStringAttribute.descriptions(["en":"Contains the id of the stage where the entity is located."]),
      "traversedPath": OOPStringAttribute.descriptions(["en":"A comma separated list of string values representing the unique identifiers of stages in a Business Process Flow Instance in the order that they occur."]),
      "cost": OOPStringAttribute.descriptions(["en":"Type the cost of obtaining the marketing list."]),
      "transactionCurrencyId": OOPStringAttribute.descriptions(["en":"Choose the local currency for the record to make sure budgets are reported in the correct currency."]),
      "exchangeRate": OOPStringAttribute.descriptions(["en":"Shows the conversion rate of the record's currency. The exchange rate is used to convert all money fields in the record from the local currency to the system's default currency."]),
      "costBase": OOPStringAttribute.descriptions(["en":"Value of the Cost in base currency."]),
      "createdFromCode": OOPStringAttribute.descriptions(["en":"Select the type of members that this marketing list will contain: accounts, contacts, or leads. Each list can have only one member type and this value can't be changed after the marketing list is created."]),
      "createdFromCode_display": OOPStringAttribute.descriptions(["en":""]),
      "doNotSendOnOptOut": OOPStringAttribute.descriptions(["en":"Select whether to override the opt-out settings on leads, contacts, and accounts for the members of the target marketing lists of the campaign activity. If No is selected, those who have chosen to opt out won't be excluded from the list. This means they will receive marketing materials."]),
      "ignoreInactiveListMembers": OOPStringAttribute.descriptions(["en":"Select whether inactive accounts, contacts, or leads should be excluded from the campaign activity distribution when the marketing list is included in a campaign."]),
      "lastUsedOn": OOPStringAttribute.descriptions(["en":"Shows the date and time when the marketing list was last used in a campaign or in the creation of activities or opportunities."]),
      "lockStatus": OOPStringAttribute.descriptions(["en":"Select whether the marketing list is locked. If Yes is selected, no additional members can be added to the marketing list."]),
      "memberCount": OOPStringAttribute.descriptions(["en":"Shows the sum of all members in the marketing list."]),
      "memberType": OOPStringAttribute.descriptions(["en":"Type of the members that can be stored in the marketing list."]),
      "purpose": OOPStringAttribute.descriptions(["en":"Type the intended use of the marketing list to identify its key segments, target offers, or business group."]),
      "query": OOPStringAttribute.descriptions(["en":"Query used for retrieving members of marketing list."]),
      "source": OOPStringAttribute.descriptions(["en":"Type the source of the marketing list, such as a third-party supplier or internal database."]),
      "stateCode": OOPStringAttribute.descriptions(["en":"Shows whether the marketing list is active or inactive. Inactive marketing lists are read-only and can't be edited unless they are reactivated."]),
      "stateCode_display": OOPStringAttribute.descriptions(["en":""]),
      "statusCode": OOPStringAttribute.descriptions(["en":"Select the marketing list's status."]),
      "statusCode_display": OOPStringAttribute.descriptions(["en":""]),
      "type": OOPStringAttribute.descriptions(["en":"Select whether you want the marketing list to be static or dynamic. The members in a static marketing list are unchanging. A dynamic marketing list is based on a dynamic query that retrieves the updated list of members"]),
      "issubscription": OOPStringAttribute.descriptions(["en":""]),
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
auto CRMMarketingList() { return new DCRMMarketingList; } 
auto CRMMarketingList(Json json) { return new DCRMMarketingList(json); } 

unittest {
  version(uim_entities) {
    assert(CRMMarketingList);
  
  auto entity = CRMMarketingList;
  // auto repository = OOPFileRepository("./tests");
/* /*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */ 
  }
}