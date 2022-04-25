module models.crm.sales.competitors.competitor;

@safe:
import uim.entities;

// Business competing for the sale represented by a lead or opportunity.
class DCRMCompetitor : DOOPEntity {
  mixin(EntityThis!("CRMCompetitor"));

  override void initialize() {
    super.initialize;

    this
      .addAttributes([
        "createdOnBehalfBy": OOPLinkAttribute("aplUser").descriptions(["en":"Shows who created the record on behalf of another user."]),
        "modifiedOnBehalfBy": OOPLinkAttribute("aplUser").descriptions(["en":"Shows who last updated the record on behalf of another user."]),
        "organizationId": OOPLinkAttribute("aplOrganization").descriptions(["en":"Unique identifier for the organization"]),
        "importSequenceNumber": OOPIntegerAttribute.descriptions(["en":"Sequence number of the import that created this record."]),
        "overriddenCreatedOn": OOPTimestampAttribute.descriptions(["en":"Date and time that the record was migrated."]),
        "timeZoneRuleVersionNumber": OOPIntegerAttribute.descriptions(["en":"For internal use only."]),
        "utcConversionTimeZoneCode": OOPStringAttribute.descriptions(["en":"Time zone code that was in use when the record was created."]),
        "processId": OOPUUIDAttribute.descriptions(["en":"Contains the id of the process associated with the entity."]),
        "stageId": OOPUUIDAttribute.descriptions(["en":"Contains the id of the stage where the entity is located."]),
        "traversedPath": OOPStringAttribute.descriptions(["en":"A comma separated list of string values representing the unique identifiers of stages in a Business Process Flow Instance in the order that they occur."]),
        "address1AddressId": OOPLinkAttribute("address").descriptions(["en":"Unique identifier for address 1."]),
        "address1AddressTypeCode": OOPStringAttribute.descriptions(["en":"Select the primary address type."]),
        "address1AddressTypeCode_display": OOPStringAttribute.descriptions(["en":""]),
        "address1City": OOPStringAttribute.descriptions(["en":"Type the city for the primary address."]),
        "address1Country": OOPStringAttribute.descriptions(["en":"Type the country or region for the primary address."]),
        "address1Composite": OOPStringAttribute.descriptions(["en":"Shows the complete primary address."]),
        "address1County": OOPStringAttribute.descriptions(["en":"Type the county for the primary address."]),
        "address1Fax": OOPStringAttribute.descriptions(["en":"Type the fax number associated with the primary address."]),
        "address1Latitude": OOPStringAttribute.descriptions(["en":"Type the latitude value for the primary address for use in mapping and other applications."]),
        "address1Line1": OOPStringAttribute.descriptions(["en":"Type the first line of the primary address."]),
        "address1Line2": OOPStringAttribute.descriptions(["en":"Type the second line of the primary address."]),
        "address1Line3": OOPStringAttribute.descriptions(["en":"Type the third line of the primary address."]),
        "address1Longitude": OOPStringAttribute.descriptions(["en":"Type the longitude value for the primary address for use in mapping and other applications."]),
        "address1Name": OOPStringAttribute.descriptions(["en":"Type a descriptive name for the primary address, such as Corporate Headquarters."]),
        "address1PostalCode": OOPStringAttribute.descriptions(["en":"Type the ZIP Code or postal code for the primary address."]),
        "address1PostOfficeBox": OOPStringAttribute.descriptions(["en":"Type the post office box number of the primary address."]),
        "address1ShippingMethodCode": OOPStringAttribute.descriptions(["en":"Select a shipping method for deliveries sent to this address."]),
        "address1ShippingMethodCode_display": OOPStringAttribute.descriptions(["en":""]), 
        "address1StateOrProvince": OOPStringAttribute.descriptions(["en":"Type the state or province of the primary address."]),
        "address1Telephone1": OOPStringAttribute.descriptions(["en":"Type the main phone number associated with the primary address."]),
        "address1Telephone2": OOPStringAttribute.descriptions(["en":"Type a second phone number associated with the primary address."]),
        "address1Telephone3": OOPStringAttribute.descriptions(["en":"Type a third phone number associated with the primary address."]),
        "address1UPSZone": OOPStringAttribute.descriptions(["en":"Type the UPS zone of the primary address to make sure shipping charges are calculated correctly and deliveries are made promptly, if shipped by UPS."]),
        "address1UTCOffset": OOPStringAttribute.descriptions(["en":"Select the time zone, or UTC offset, for this address so that other people can reference it when they contact someone at this address."]),
        "address2AddressId": OOPLinkAttribute("address").descriptions(["en":"Unique identifier for address 2."]),
        "address2AddressTypeCode": OOPStringAttribute.descriptions(["en":"Select the secondary address type."]),
        "address2AddressTypeCode_display": OOPStringAttribute.descriptions(["en":""]),
        "address2City": OOPStringAttribute.descriptions(["en":"Type the city for the secondary address."]),
        "address2Composite": OOPStringAttribute.descriptions(["en":"Shows the complete secondary address."]),
        "address2Country": OOPStringAttribute.descriptions(["en":"Type the country or region for the secondary address."]),
        "address2County": OOPStringAttribute.descriptions(["en":"Type the county for the secondary address."]),
        "address2Fax": OOPStringAttribute.descriptions(["en":"Type the fax number associated with the secondary address."]),
        "address2Latitude": OOPStringAttribute.descriptions(["en":"Type the latitude value for the secondary address for use in mapping and other applications."]),
        "address2Line1": OOPStringAttribute.descriptions(["en":"Type the first line of the secondary address."]),
        "address2Line2": OOPStringAttribute.descriptions(["en":"Type the second line of the secondary address."]),
        "address2Line3": OOPStringAttribute.descriptions(["en":"Type the third line of the secondary address."]),
        "address2Longitude": OOPStringAttribute.descriptions(["en":"Type the longitude value for the secondary address for use in mapping and other applications."]),
        "address2Name": OOPStringAttribute.descriptions(["en":"Type a descriptive name for the secondary address, such as Corporate Headquarters."]),
        "address2PostalCode": OOPStringAttribute.descriptions(["en":"Type the ZIP Code or postal code for the secondary address."]),
        "address2PostOfficeBox": OOPStringAttribute.descriptions(["en":"Type the post office box number of the secondary address."]),
        "address2ShippingMethodCode": OOPStringAttribute.descriptions(["en":"Select a shipping method for deliveries sent to this address."]),
        "address2ShippingMethodCode_display": OOPStringAttribute.descriptions(["en":""]), 
        "address2StateOrProvince": OOPStringAttribute.descriptions(["en":"Type the state or province of the secondary address."]),
        "address2Telephone1": OOPStringAttribute.descriptions(["en":"Type the main phone number associated with the secondary address."]),
        "address2Telephone2": OOPStringAttribute.descriptions(["en":"Type a second phone number associated with the secondary address."]),
        "address2Telephone3": OOPStringAttribute.descriptions(["en":"Type a third phone number associated with the secondary address."]),
        "address2UPSZone": OOPStringAttribute.descriptions(["en":"Type the UPS zone of the secondary address to make sure shipping charges are calculated correctly and deliveries are made promptly , if shipped by UPS."]),
        "address2UTCOffset": OOPStringAttribute.descriptions(["en":"Select the time zone, or UTC offset, for this address so that other people can reference it when they contact someone at this address."]),
        "keyProductCode": OOPIntegerAttribute.descriptions(["en":"Type the competitor's primary product, service, or specialty."]),
        "opportunities": OOPStringAttribute.descriptions(["en":"Type notes or other information about the competitive opportunities or selling points you can make."]),
        "overview": OOPStringAttribute.descriptions(["en":"Type notes or other information about the competitor's business, such as location, revenue, or distribution channel."]),
        "referenceInfoUrl": OOPUrlAttribute.descriptions(["en":"Type the URL for the website used to obtain reference information about the competitor."]),
        "reportedRevenue": OOPStringAttribute.descriptions(["en":"Type the amount of revenue reported in the competitor's annual report or other source."]),
        "transactionCurrencyId": OOPLinkAttribute("aplCurrency").descriptions(["en":"Choose the local currency for the record to make sure budgets are reported in the correct currency."]),
        "exchangeRate": OOPStringAttribute.descriptions(["en":"Shows the conversion rate of the record's currency. The exchange rate is used to convert all money fields in the record from the local currency to the system's default currency."]),
        "reportedRevenueBase": OOPStringAttribute.descriptions(["en":"Value of the Reported Revenue in base currency."]),
        "reportingQuarter": OOPStringAttribute.descriptions(["en":"Type the quarter number during which the competitor's reported revenue was recorded or announced for use in reporting and analysis."]),
        "reportingYear": OOPStringAttribute.descriptions(["en":"Type the fiscal year during which the competitor's reported revenue was announced for use in reporting and analysis."]),
        "stockExchange": OOPStringAttribute.descriptions(["en":"Type the stock exchange at which the competitor is listed to track their stock and financial performance of the company."]),
        "strengths": OOPStringAttribute.descriptions(["en":"Type notes or other information about the competitor's strengths, such as top-selling products and targeted industries or markets."]),
        "threats": OOPStringAttribute.descriptions(["en":"Type notes or other information about the competitor's threats to your organization when you sell to the same prospect or customer."]),
        "tickerSymbol": OOPStringAttribute.descriptions(["en":"Type the stock exchange symbol for the competitor to track financial performance of the company. You can click the code entered in this field to access the latest trading information from MSN Money."]),
        "weaknesses": OOPStringAttribute.descriptions(["en":"Type notes or other information about the competitor's weaknesses or areas in which your organization outperforms the competitor."]),
        "webSiteUrl": OOPUrlAttribute.descriptions(["en":"Type the website URL for the competitor."]), 
        "winPercentage": OOPPercentageAttribute.descriptions(["en":"Type the percentage of your organization's lost opportunities that are won by the competitor to identify your strongest competitors."]),
        "entityImageId": OOPUUIDAttribute.descriptions(["en":""]),
        "yomiName": OOPStringAttribute.descriptions(["en":"Type the phonetic spelling of the competitor's name, if specified in Japanese, to make sure the name is pronounced correctly in phone calls and other communications."]),
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