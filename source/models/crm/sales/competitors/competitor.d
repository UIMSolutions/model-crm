module models.crm.sales.competitors.competitor;

@safe:
import uim.entities;

// Business competing for the sale represented by a lead or opportunity.
class DCRMCompetitor : DOOPEntity {
  mixin(EntityThis!("CRMCompetitor"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "createdOnBehalfBy": UUIDAttributeClass, //Shows who created the record on behalf of another user."]),
        "modifiedOnBehalfBy": UUIDAttributeClass, //Shows who last updated the record on behalf of another user."]),
        "organizationId": UUIDAttributeClass, // Unique identifier for the organization"]),
        "importSequenceNumber": IntegerAttributeClass, //Sequence number of the import that created this record."]),
        "overriddenCreatedOn": TimestampAttributeClass, //Date and time that the record was migrated."]),
        "timeZoneRuleVersionNumber": IntegerAttributeClass, //For internal use only."]),
        "utcConversionTimeZoneCode": StringAttributeClass, // Time zone code that was in use when the record was created."]),
        "processId": UUIDAttributeClass, // Contains the id of the process associated with the entity."]),
        "stageId": UUIDAttributeClass, // Contains the id of the stage where the entity is located."]),
        "traversedPath": StringAttributeClass, // A comma separated list of string values representing the unique identifiers of stages in a Business Process Flow Instance in the order that they occur."]),
        "address1AddressId": OOPLinkAttribute("address").descriptions(["en":"Unique identifier for address 1."]),
        "address1AddressTypeCode": StringAttributeClass, // Select the primary address type."]),
        "address1AddressTypeCode_display": StringAttributeClass, //
        "address1City": StringAttributeClass, // Type the city for the primary address."]),
        "address1Country": StringAttributeClass, // Type the country or region for the primary address."]),
        "address1Composite": StringAttributeClass, // Shows the complete primary address."]),
        "address1County": StringAttributeClass, // Type the county for the primary address."]),
        "address1Fax": StringAttributeClass, // Type the fax number associated with the primary address."]),
        "address1Latitude": StringAttributeClass, // Type the latitude value for the primary address for use in mapping and other applications."]),
        "address1Line1": StringAttributeClass, // Type the first line of the primary address."]),
        "address1Line2": StringAttributeClass, // Type the second line of the primary address."]),
        "address1Line3": StringAttributeClass, // Type the third line of the primary address."]),
        "address1Longitude": StringAttributeClass, // Type the longitude value for the primary address for use in mapping and other applications."]),
        "address1Name": StringAttributeClass, // Type a descriptive name for the primary address, such as Corporate Headquarters."]),
        "address1PostalCode": StringAttributeClass, // Type the ZIP Code or postal code for the primary address."]),
        "address1PostOfficeBox": StringAttributeClass, // Type the post office box number of the primary address."]),
        "address1ShippingMethodCode": StringAttributeClass, // Select a shipping method for deliveries sent to this address."]),
        "address1ShippingMethodCode_display": StringAttributeClass, // 
        "address1StateOrProvince": StringAttributeClass, // Type the state or province of the primary address."]),
        "address1Telephone1": StringAttributeClass, // Type the main phone number associated with the primary address."]),
        "address1Telephone2": StringAttributeClass, // Type a second phone number associated with the primary address."]),
        "address1Telephone3": StringAttributeClass, // Type a third phone number associated with the primary address."]),
        "address1UPSZone": StringAttributeClass, // Type the UPS zone of the primary address to make sure shipping charges are calculated correctly and deliveries are made promptly, if shipped by UPS."]),
        "address1UTCOffset": StringAttributeClass, // Select the time zone, or UTC offset, for this address so that other people can reference it when they contact someone at this address."]),
        "address2AddressId": OOPLinkAttribute("address").descriptions(["en":"Unique identifier for address 2."]),
        "address2AddressTypeCode": StringAttributeClass, // Select the secondary address type."]),
        "address2AddressTypeCode_display": StringAttributeClass, //
        "address2City": StringAttributeClass, // Type the city for the secondary address."]),
        "address2Composite": StringAttributeClass, // Shows the complete secondary address."]),
        "address2Country": StringAttributeClass, // Type the country or region for the secondary address."]),
        "address2County": StringAttributeClass, // Type the county for the secondary address."]),
        "address2Fax": StringAttributeClass, // Type the fax number associated with the secondary address."]),
        "address2Latitude": StringAttributeClass, // Type the latitude value for the secondary address for use in mapping and other applications."]),
        "address2Line1": StringAttributeClass, // Type the first line of the secondary address."]),
        "address2Line2": StringAttributeClass, // Type the second line of the secondary address."]),
        "address2Line3": StringAttributeClass, // Type the third line of the secondary address."]),
        "address2Longitude": StringAttributeClass, // Type the longitude value for the secondary address for use in mapping and other applications."]),
        "address2Name": StringAttributeClass, // Type a descriptive name for the secondary address, such as Corporate Headquarters."]),
        "address2PostalCode": StringAttributeClass, // Type the ZIP Code or postal code for the secondary address."]),
        "address2PostOfficeBox": StringAttributeClass, // Type the post office box number of the secondary address."]),
        "address2ShippingMethodCode": StringAttributeClass, // Select a shipping method for deliveries sent to this address."]),
        "address2ShippingMethodCode_display": StringAttributeClass, // 
        "address2StateOrProvince": StringAttributeClass, // Type the state or province of the secondary address."]),
        "address2Telephone1": StringAttributeClass, // Type the main phone number associated with the secondary address."]),
        "address2Telephone2": StringAttributeClass, // Type a second phone number associated with the secondary address."]),
        "address2Telephone3": StringAttributeClass, // Type a third phone number associated with the secondary address."]),
        "address2UPSZone": StringAttributeClass, // Type the UPS zone of the secondary address to make sure shipping charges are calculated correctly and deliveries are made promptly , if shipped by UPS."]),
        "address2UTCOffset": StringAttributeClass, // Select the time zone, or UTC offset, for this address so that other people can reference it when they contact someone at this address."]),
        "keyProductCode": IntegerAttributeClass, //Type the competitor's primary product, service, or specialty."]),
        "opportunities": StringAttributeClass, // Type notes or other information about the competitive opportunities or selling points you can make."]),
        "overview": StringAttributeClass, // Type notes or other information about the competitor's business, such as location, revenue, or distribution channel."]),
        "referenceInfoUrl": OOPUrlAttribute.descriptions(["en":"Type the URL for the website used to obtain reference information about the competitor."]),
        "reportedRevenue": StringAttributeClass, // Type the amount of revenue reported in the competitor's annual report or other source."]),
        "transactionCurrencyId": OOPLinkAttribute("aplCurrency").descriptions(["en":"Choose the local currency for the record to make sure budgets are reported in the correct currency."]),
        "exchangeRate": StringAttributeClass, // Shows the conversion rate of the record's currency. The exchange rate is used to convert all money fields in the record from the local currency to the system's default currency."]),
        "reportedRevenueBase": StringAttributeClass, // Value of the Reported Revenue in base currency."]),
        "reportingQuarter": StringAttributeClass, // Type the quarter number during which the competitor's reported revenue was recorded or announced for use in reporting and analysis."]),
        "reportingYear": StringAttributeClass, // Type the fiscal year during which the competitor's reported revenue was announced for use in reporting and analysis."]),
        "stockExchange": StringAttributeClass, // Type the stock exchange at which the competitor is listed to track their stock and financial performance of the company."]),
        "strengths": StringAttributeClass, // Type notes or other information about the competitor's strengths, such as top-selling products and targeted industries or markets."]),
        "threats": StringAttributeClass, // Type notes or other information about the competitor's threats to your organization when you sell to the same prospect or customer."]),
        "tickerSymbol": StringAttributeClass, // Type the stock exchange symbol for the competitor to track financial performance of the company. You can click the code entered in this field to access the latest trading information from MSN Money."]),
        "weaknesses": StringAttributeClass, // Type notes or other information about the competitor's weaknesses or areas in which your organization outperforms the competitor."]),
        "webSiteUrl": OOPUrlAttribute.descriptions(["en":"Type the website URL for the competitor."]), 
        "winPercentage": OOPPercentageAttribute.descriptions(["en":"Type the percentage of your organization's lost opportunities that are won by the competitor to identify your strongest competitors."]),
        "entityImageId": UUIDAttributeClass, //
        "yomiName": StringAttributeClass, // Type the phonetic spelling of the competitor's name, if specified in Japanese, to make sure the name is pronounced correctly in phone calls and other communications."]),
      ])
      .registerPath("crm_competitors");
  }
}
mixin(EntityCalls!("CRMCompetitor"));

unittest {
  version(test_model_crm) {
    assert(CRMCompetitor);

  auto entity = CRMCompetitor;
  
  // auto repository = OOPFileRepository("./tests");
/*   repository.create("entities", entity.entityClasses, entity.toJson);
  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}