module models.crm.sales.competitors.competitor;

@safe:
import uim.entities;

// Business competing for the sale represented by a lead or opportunity.
class DAPLCompetitor : DOOPEntity {
  this() { super();
    this.attributes([
      "createdOnBehalfBy": OOPAttributeLink("aplUser").descriptions(["en":"Shows who created the record on behalf of another user."]),
      "modifiedOnBehalfBy": OOPAttributeLink("aplUser").descriptions(["en":"Shows who last updated the record on behalf of another user."]),
      "organizationId": OOPAttributeLink("aplOrganization").descriptions(["en":"Unique identifier for the organization"]),
      "importSequenceNumber": OOPAttributeNumber.descriptions(["en":"Sequence number of the import that created this record."]),
      "overriddenCreatedOn": OOPAttributeTimestamp.descriptions(["en":"Date and time that the record was migrated."]),
      "timeZoneRuleVersionNumber": OOPAttributeNumber.descriptions(["en":"For internal use only."]),
      "utcConversionTimeZoneCode": OOPAttributeString.descriptions(["en":"Time zone code that was in use when the record was created."]),
      "processId": OOPAttributeUUID.descriptions(["en":"Contains the id of the process associated with the entity."]),
      "stageId": OOPAttributeUUID.descriptions(["en":"Contains the id of the stage where the entity is located."]),
      "traversedPath": OOPAttributeString.descriptions(["en":"A comma separated list of string values representing the unique identifiers of stages in a Business Process Flow Instance in the order that they occur."]),
      "address1AddressId": OOPAttributeLink("address").descriptions(["en":"Unique identifier for address 1."]),
      "address1AddressTypeCode": OOPAttributeString.descriptions(["en":"Select the primary address type."]),
      "address1AddressTypeCode_display": OOPAttributeString.descriptions(["en":""]),
      "address1City": OOPAttributeString.descriptions(["en":"Type the city for the primary address."]),
      "address1Country": OOPAttributeString.descriptions(["en":"Type the country or region for the primary address."]),
      "address1Composite": OOPAttributeString.descriptions(["en":"Shows the complete primary address."]),
      "address1County": OOPAttributeString.descriptions(["en":"Type the county for the primary address."]),
      "address1Fax": OOPAttributeString.descriptions(["en":"Type the fax number associated with the primary address."]),
      "address1Latitude": OOPAttributeString.descriptions(["en":"Type the latitude value for the primary address for use in mapping and other applications."]),
      "address1Line1": OOPAttributeString.descriptions(["en":"Type the first line of the primary address."]),
      "address1Line2": OOPAttributeString.descriptions(["en":"Type the second line of the primary address."]),
      "address1Line3": OOPAttributeString.descriptions(["en":"Type the third line of the primary address."]),
      "address1Longitude": OOPAttributeString.descriptions(["en":"Type the longitude value for the primary address for use in mapping and other applications."]),
      "address1Name": OOPAttributeString.descriptions(["en":"Type a descriptive name for the primary address, such as Corporate Headquarters."]),
      "address1PostalCode": OOPAttributeString.descriptions(["en":"Type the ZIP Code or postal code for the primary address."]),
      "address1PostOfficeBox": OOPAttributeString.descriptions(["en":"Type the post office box number of the primary address."]),
      "address1ShippingMethodCode": OOPAttributeString.descriptions(["en":"Select a shipping method for deliveries sent to this address."]),
      "address1ShippingMethodCode_display": OOPAttributeString.descriptions(["en":""]), 
      "address1StateOrProvince": OOPAttributeString.descriptions(["en":"Type the state or province of the primary address."]),
      "address1Telephone1": OOPAttributeString.descriptions(["en":"Type the main phone number associated with the primary address."]),
      "address1Telephone2": OOPAttributeString.descriptions(["en":"Type a second phone number associated with the primary address."]),
      "address1Telephone3": OOPAttributeString.descriptions(["en":"Type a third phone number associated with the primary address."]),
      "address1UPSZone": OOPAttributeString.descriptions(["en":"Type the UPS zone of the primary address to make sure shipping charges are calculated correctly and deliveries are made promptly, if shipped by UPS."]),
      "address1UTCOffset": OOPAttributeString.descriptions(["en":"Select the time zone, or UTC offset, for this address so that other people can reference it when they contact someone at this address."]),
      "address2AddressId": OOPAttributeLink("address").descriptions(["en":"Unique identifier for address 2."]),
      "address2AddressTypeCode": OOPAttributeString.descriptions(["en":"Select the secondary address type."]),
      "address2AddressTypeCode_display": OOPAttributeString.descriptions(["en":""]),
      "address2City": OOPAttributeString.descriptions(["en":"Type the city for the secondary address."]),
      "address2Composite": OOPAttributeString.descriptions(["en":"Shows the complete secondary address."]),
      "address2Country": OOPAttributeString.descriptions(["en":"Type the country or region for the secondary address."]),
      "address2County": OOPAttributeString.descriptions(["en":"Type the county for the secondary address."]),
      "address2Fax": OOPAttributeString.descriptions(["en":"Type the fax number associated with the secondary address."]),
      "address2Latitude": OOPAttributeString.descriptions(["en":"Type the latitude value for the secondary address for use in mapping and other applications."]),
      "address2Line1": OOPAttributeString.descriptions(["en":"Type the first line of the secondary address."]),
      "address2Line2": OOPAttributeString.descriptions(["en":"Type the second line of the secondary address."]),
      "address2Line3": OOPAttributeString.descriptions(["en":"Type the third line of the secondary address."]),
      "address2Longitude": OOPAttributeString.descriptions(["en":"Type the longitude value for the secondary address for use in mapping and other applications."]),
      "address2Name": OOPAttributeString.descriptions(["en":"Type a descriptive name for the secondary address, such as Corporate Headquarters."]),
      "address2PostalCode": OOPAttributeString.descriptions(["en":"Type the ZIP Code or postal code for the secondary address."]),
      "address2PostOfficeBox": OOPAttributeString.descriptions(["en":"Type the post office box number of the secondary address."]),
      "address2ShippingMethodCode": OOPAttributeString.descriptions(["en":"Select a shipping method for deliveries sent to this address."]),
      "address2ShippingMethodCode_display": OOPAttributeString.descriptions(["en":""]), 
      "address2StateOrProvince": OOPAttributeString.descriptions(["en":"Type the state or province of the secondary address."]),
      "address2Telephone1": OOPAttributeString.descriptions(["en":"Type the main phone number associated with the secondary address."]),
      "address2Telephone2": OOPAttributeString.descriptions(["en":"Type a second phone number associated with the secondary address."]),
      "address2Telephone3": OOPAttributeString.descriptions(["en":"Type a third phone number associated with the secondary address."]),
      "address2UPSZone": OOPAttributeString.descriptions(["en":"Type the UPS zone of the secondary address to make sure shipping charges are calculated correctly and deliveries are made promptly , if shipped by UPS."]),
      "address2UTCOffset": OOPAttributeString.descriptions(["en":"Select the time zone, or UTC offset, for this address so that other people can reference it when they contact someone at this address."]),
      "keyProductCode": OOPAttributeInteger.descriptions(["en":"Type the competitor's primary product, service, or specialty."]),
      "opportunities": OOPAttributeString.descriptions(["en":"Type notes or other information about the competitive opportunities or selling points you can make."]),
      "overview": OOPAttributeString.descriptions(["en":"Type notes or other information about the competitor's business, such as location, revenue, or distribution channel."]),
      "referenceInfoUrl": OOPAttributeUrl.descriptions(["en":"Type the URL for the website used to obtain reference information about the competitor."]),
      "reportedRevenue": OOPAttributeString.descriptions(["en":"Type the amount of revenue reported in the competitor's annual report or other source."]),
      "transactionCurrencyId": OOPAttributeLink("aplCurrency").descriptions(["en":"Choose the local currency for the record to make sure budgets are reported in the correct currency."]),
      "exchangeRate": OOPAttributeString.descriptions(["en":"Shows the conversion rate of the record's currency. The exchange rate is used to convert all money fields in the record from the local currency to the system's default currency."]),
      "reportedRevenueBase": OOPAttributeString.descriptions(["en":"Value of the Reported Revenue in base currency."]),
      "reportingQuarter": OOPAttributeString.descriptions(["en":"Type the quarter number during which the competitor's reported revenue was recorded or announced for use in reporting and analysis."]),
      "reportingYear": OOPAttributeString.descriptions(["en":"Type the fiscal year during which the competitor's reported revenue was announced for use in reporting and analysis."]),
      "stockExchange": OOPAttributeString.descriptions(["en":"Type the stock exchange at which the competitor is listed to track their stock and financial performance of the company."]),
      "strengths": OOPAttributeString.descriptions(["en":"Type notes or other information about the competitor's strengths, such as top-selling products and targeted industries or markets."]),
      "threats": OOPAttributeString.descriptions(["en":"Type notes or other information about the competitor's threats to your organization when you sell to the same prospect or customer."]),
      "tickerSymbol": OOPAttributeString.descriptions(["en":"Type the stock exchange symbol for the competitor to track financial performance of the company. You can click the code entered in this field to access the latest trading information from MSN Money."]),
      "weaknesses": OOPAttributeString.descriptions(["en":"Type notes or other information about the competitor's weaknesses or areas in which your organization outperforms the competitor."]),
      "webSiteUrl": OOPAttributeUrl.descriptions(["en":"Type the website URL for the competitor."]), 
      "winPercentage": OOPAttributePercentage.descriptions(["en":"Type the percentage of your organization's lost opportunities that are won by the competitor to identify your strongest competitors."]),
      "entityImageId": OOPAttributeUUID.descriptions(["en":""]),
      "yomiName": OOPAttributeString.descriptions(["en":"Type the phonetic spelling of the competitor's name, if specified in Japanese, to make sure the name is pronounced correctly in phone calls and other communications."]),
    ]);
  }

  override string entityClass() { return "aplCompetitor"; }
  override string entityClasses() { return "aplCompetitors"; }

  this(UUID myId) { 
    this(); this.id(myId); }
  this(string myName) { 
    this(); this.name(myName); }
  this(UUID myId, string myName) { 
    this(); this.id(myId).name(myName); }
  this(Json aJson) { 
    this(); this.fromJson(aJson); }

  // mixin(GetEntity!("organization", "organizationId", "APLOrganization"));
}
auto APLCompetitor() { return new DAPLCompetitor; } 
auto APLCompetitor(Json json) { return new DAPLCompetitor(json); } 

unittest {
  version(uim_entities) {
    assert(APLCompetitor);

  auto entity = APLCompetitor;
  
  // auto repository = OOPFileRepository("./tests");
/*   repository.create("entities", entity.entityClasses, entity.toJson);
  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}