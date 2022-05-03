module models.crm.projects.lead;

@safe:
import uim.entities;

// Prospect or potential sales opportunity. Leads are converted into accounts, contacts, or opportunities when they are qualified.
class DCRMLeadEntity : DOOPEntity {
  mixin(EntityThis!("CRMLeadEntity"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "createdOnBehalfBy": OOPLinkAttribute("aplUser").descriptions(["en":"Shows who created the record on behalf of another user."]),
        "modifiedOnBehalfBy": OOPLinkAttribute("aplUser").descriptions(["en":"Shows who last updated the record on behalf of another user."]),
        "overriddenCreatedOn": OOPTimestampAttribute.descriptions(["en":"Date and time that the record was migrated."]),
        "importSequenceNumber": OOPIntegerAttribute.descriptions(["en":"Sequence number of the import that created this record."]),
        "ownerId": OOPUUIDAttribute.descriptions(["en":"Owner Id"]),"ownerIdType": OOPStringAttribute.descriptions(["en":"The type of owner, either User or Team."]),
        "owningBusinessUnitId": OOPLinkAttribute("aplBusinessUnit").descriptions(["en":"Unique identifier for the business unit that owns the record"]),"owningUserId": OOPLinkAttribute("aplUser").descriptions(["en":"Unique identifier for the user that owns the record."]),
        "owningTeamId": OOPLinkAttribute("aplTeam").descriptions(["en":"Unique identifier for the team that owns the record."]),
        "timeZoneRuleVersionNumber": OOPIntegerAttribute.descriptions(["en":"For internal use only."]),
        "utcConversionTimeZoneCode": OOPStringAttribute.descriptions(["en":"Time zone code that was in use when the record was created."]),
        "fullName": OOPStringAttribute.descriptions(["en":"Combines and shows the lead's first and last names so the full name can be displayed in views and reports."]),
        "processId": OOPUUIDAttribute.descriptions(["en":"Contains the id of the process associated with the entity."]),
        "stageId": OOPUUIDAttribute.descriptions(["en":"Contains the id of the stage where the entity is located."]),
        "traversedPath": OOPStringAttribute.descriptions(["en":"A comma separated list of string values representing the unique identifiers of stages in a Business Process Flow Instance in the order that they occur."]),
        "parentAccountId": OOPUUIDAttribute.descriptions(["en":"Choose an account to connect this lead to, so that the relationship is visible in reports and analytics."]),
        "parentContactId": OOPLinkAttribute("aplContact").descriptions(["en":"Choose a contact to connect this lead to, so that the relationship is visible in reports and analytics."]),
        "address1AddressId": OOPLinkAttribute("address").descriptions(["en":"Unique identifier for address 1."]),
        "address1AddressTypeCode": OOPStringAttribute.descriptions(["en":"Select the primary address type."]),
        "address1AddressTypeCode_display": OOPStringAttribute.descriptions(["en":""]),"address1City": OOPStringAttribute.descriptions(["en":"Type the city for the primary address."]),
        "address1Composite": OOPStringAttribute.descriptions(["en":"Shows the complete primary address."]),
        "address1Country": OOPStringAttribute.descriptions(["en":"Type the country or region for the primary address."]),
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
        "address1ShippingMethodCode_display": OOPStringAttribute.descriptions(["en":""]),"address1StateOrProvince": OOPStringAttribute.descriptions(["en":"Type the state or province of the primary address."]),
        "address1Telephone1": OOPStringAttribute.descriptions(["en":"Type the main phone number associated with the primary address."]),
        "address1Telephone2": OOPStringAttribute.descriptions(["en":"Type a second phone number associated with the primary address."]),
        "address1Telephone3": OOPStringAttribute.descriptions(["en":"Type a third phone number associated with the primary address."]),
        "address1UPSZone": OOPStringAttribute.descriptions(["en":"Type the UPS zone of the primary address to make sure shipping charges are calculated correctly and deliveries are made promptly, if shipped by UPS."]),
        "address1UTCOffset": OOPStringAttribute.descriptions(["en":"Select the time zone, or UTC offset, for this address so that other people can reference it when they contact someone at this address."]),
        "address2AddressId": OOPLinkAttribute("address").descriptions(["en":"Unique identifier for address 2."]),
        "address2AddressTypeCode": OOPStringAttribute.descriptions(["en":"Select the secondary address type."]),
        "address2AddressTypeCode_display": OOPStringAttribute.descriptions(["en":""]),"address2City": OOPStringAttribute.descriptions(["en":"Type the city for the secondary address."]),
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
        "address2ShippingMethodCode_display": OOPStringAttribute.descriptions(["en":""]),"address2StateOrProvince": OOPStringAttribute.descriptions(["en":"Type the state or province of the secondary address."]),
        "address2Telephone1": OOPStringAttribute.descriptions(["en":"Type the main phone number associated with the secondary address."]),
        "address2Telephone2": OOPStringAttribute.descriptions(["en":"Type a second phone number associated with the secondary address."]),
        "address2Telephone3": OOPStringAttribute.descriptions(["en":"Type a third phone number associated with the secondary address."]),
        "address2UPSZone": OOPStringAttribute.descriptions(["en":"Type the UPS zone of the secondary address to make sure shipping charges are calculated correctly and deliveries are made promptly, if shipped by UPS."]),
        "address2UTCOffset": OOPStringAttribute.descriptions(["en":"Select the time zone, or UTC offset, for this address so that other people can reference it when they contact someone at this address."]),
        "budgetAmount": OOPStringAttribute.descriptions(["en":"Information about the budget amount of the lead's company or organization."]),
        "transactionCurrencyId": OOPLinkAttribute("aplCurrency").descriptions(["en":"Choose the local currency for the record to make sure budgets are reported in the correct currency."]),
        "exchangeRate": OOPStringAttribute.descriptions(["en":"Shows the conversion rate of the record's currency. The exchange rate is used to convert all money fields in the record from the local currency to the system's default currency."]),
        "budgetAmountBase": OOPStringAttribute.descriptions(["en":"Value of the Budget Amount in base currency."]),
        "budgetStatus": OOPStringAttribute.descriptions(["en":"Information about the budget status of the lead's company or organization."]),
        "budgetStatus_display": OOPStringAttribute.descriptions(["en":""]),"companyName": OOPStringAttribute.descriptions(["en":"Type the name of the company associated with the lead. This becomes the account name when the lead is qualified and converted to a customer account."]),
        "confirmInterest": OOPStringAttribute.descriptions(["en":"Select whether the lead confirmed interest in your offerings. This helps in determining the lead quality."]),
        "customerId": OOPUUIDAttribute.descriptions(["en":"The customer account or contact to provide a quick link to additional customer details, such as account information, activities, and opportunities."]),
        "customerIdType": OOPStringAttribute.descriptions(["en":"The type of customer, either Account or Contact."]),
        "decisionMaker": OOPStringAttribute.descriptions(["en":"Select whether your notes include information about who makes the purchase decisions at the lead's company."]),
        "doNotBulkEMail": OOPStringAttribute.descriptions(["en":"Select whether the lead accepts bulk email sent through marketing campaigns or quick campaigns. If Do Not Allow is selected, the lead can be added to marketing lists, but will be excluded from the email."]),
        "doNotEMail": OOPStringAttribute.descriptions(["en":"Select whether the lead allows direct email sent from Microsoft Dynamics 365."]),
        "doNotFax": OOPStringAttribute.descriptions(["en":"Select whether the lead allows faxes."]),
        "doNotPhone": OOPStringAttribute.descriptions(["en":"Select whether the lead allows phone calls."]),
        "doNotPostalMail": OOPStringAttribute.descriptions(["en":"Select whether the lead allows direct mail."]),
        "doNotSendMM": OOPStringAttribute.descriptions(["en":"Select whether the lead accepts marketing materials, such as brochures or catalogs. Leads that opt out can be excluded from marketing initiatives."]),
        "EMailAddress1": OOPStringAttribute.descriptions(["en":"Type the primary email address for the lead."]),
        "EMailAddress2": OOPStringAttribute.descriptions(["en":"Type the secondary email address for the lead."]),
        "EMailAddress3": OOPStringAttribute.descriptions(["en":"Type a third email address for the lead."]),
        "estimatedAmount": OOPStringAttribute.descriptions(["en":"Type the estimated revenue value that this lead will generate to assist in sales forecasting and planning."]),
        "estimatedAmountBase": OOPStringAttribute.descriptions(["en":"Value of the Est. Value in base currency."]),
        "estimatedCloseDate": DateAttributeClass, // Enter the expected close date for the lead, so that the sales team can schedule timely follow-up meetings to move the prospect to the next sales stage."]),
        "estimatedValue": OOPStringAttribute.descriptions(["en":"Type a numeric value of the lead's estimated value, such as a product quantity, if no revenue amount can be specified in the Est. Value field. This can be used for sales forecasting and planning."]),
        "evaluateFit": OOPStringAttribute.descriptions(["en":"Select whether the fit between the lead's requirements and your offerings was evaluated."]),
        "fax": OOPStringAttribute.descriptions(["en":"Type the fax number for the primary contact for the lead."]),
        "firstName": OOPStringAttribute.descriptions(["en":"Type the first name of the primary contact for the lead to make sure the prospect is addressed correctly in sales calls, email, and marketing campaigns."]),
        "industryCode": OOPStringAttribute.descriptions(["en":"Select the primary industry in which the lead's business is focused, for use in marketing segmentation and demographic analysis."]),
        "industryCode_display": OOPStringAttribute.descriptions(["en":""]),"initialCommunication": OOPStringAttribute.descriptions(["en":"Choose whether someone from the sales team contacted this lead earlier."]),
        "initialCommunication_display": OOPStringAttribute.descriptions(["en":""]),"jobTitle": OOPStringAttribute.descriptions(["en":"Type the job title of the primary contact for this lead to make sure the prospect is addressed correctly in sales calls, email, and marketing campaigns."]),
        "lastName": OOPStringAttribute.descriptions(["en":"Type the last name of the primary contact for the lead to make sure the prospect is addressed correctly in sales calls, email, and marketing campaigns."]),
        "lastUsedInCampaign": OOPStringAttribute.descriptions(["en":"Shows the date when the lead was last included in a marketing campaign or quick campaign."]),
        "leadQualityCode": OOPStringAttribute.descriptions(["en":"Select a rating value to indicate the lead's potential to become a customer."]),
        "leadQualityCode_display": OOPStringAttribute.descriptions(["en":""]),"leadSourceCode": OOPStringAttribute.descriptions(["en":"Select the primary marketing source that prompted the lead to contact you."]),
        "leadSourceCode_display": OOPStringAttribute.descriptions(["en":""]),"masterId": OOPUUIDAttribute.descriptions(["en":"Unique identifier of the master lead for merge."]),
        "merged": OOPStringAttribute.descriptions(["en":"Tells whether the lead has been merged with another lead."]),
        "middleName": OOPStringAttribute.descriptions(["en":"Type the middle name or initial of the primary contact for the lead to make sure the prospect is addressed correctly."]),
        "mobilePhone": OOPStringAttribute.descriptions(["en":"Type the mobile phone number for the primary contact for the lead."]),
        "need": OOPStringAttribute.descriptions(["en":"Choose how high the level of need is for the lead's company."]),
        "need_display": OOPStringAttribute.descriptions(["en":""]),"numberOfEmployees": OOPStringAttribute.descriptions(["en":"Type the number of employees that work at the company associated with the lead, for use in marketing segmentation and demographic analysis."]),
        "pager": OOPStringAttribute.descriptions(["en":"Type the pager number for the primary contact for the lead."]),
        "participatesInWorkflow": OOPStringAttribute.descriptions(["en":"Shows whether the lead participates in workflow rules."]),
        "preferredContactMethodCode": OOPStringAttribute.descriptions(["en":"Select the preferred method of contact."]),
        "preferredContactMethodCode_display": OOPStringAttribute.descriptions(["en":""]),"priorityCode": OOPStringAttribute.descriptions(["en":"Select the priority so that preferred customers or critical issues are handled quickly."]),
        "priorityCode_display": OOPStringAttribute.descriptions(["en":""]),"purchaseProcess": OOPStringAttribute.descriptions(["en":"Choose whether an individual or a committee will be involved in the purchase process for the lead."]),
        "purchaseProcess_display": OOPStringAttribute.descriptions(["en":""]),"qualificationComments": OOPStringAttribute.descriptions(["en":"Type comments about the qualification or scoring of the lead."]),
        "revenue": OOPStringAttribute.descriptions(["en":"Type the annual revenue of the company associated with the lead to provide an understanding of the prospect's business."]),
        "revenueBase": OOPStringAttribute.descriptions(["en":"Value of the Annual Revenue in base currency."]),
        "salesStage": OOPStringAttribute.descriptions(["en":"Select the sales stage of this lead to aid the sales team in their efforts to convert this lead to an opportunity."]),
        "salesStage_display": OOPStringAttribute.descriptions(["en":""]),"salesStageCode": OOPStringAttribute.descriptions(["en":"Select the sales process stage for the lead to help determine the probability of the lead converting to an opportunity."]),
        "salesStageCode_display": OOPStringAttribute.descriptions(["en":""]),"salutation": OOPStringAttribute.descriptions(["en":"Type the salutation of the primary contact for this lead to make sure the prospect is addressed correctly in sales calls, email messages, and marketing campaigns."]),
        "scheduleFollowupProspect": OOPStringAttribute.descriptions(["en":"Enter the date and time of the prospecting follow-up meeting with the lead."]),
        "scheduleFollowUpQualify": OOPStringAttribute.descriptions(["en":"Enter the date and time of the qualifying follow-up meeting with the lead."]),
        "SIC": OOPStringAttribute.descriptions(["en":"Type the Standard Industrial Classification (SIC) code that indicates the lead's primary industry of business for use in marketing segmentation and demographic analysis."]),
        "stateCode": OOPStringAttribute.descriptions(["en":"Shows whether the lead is open, qualified, or disqualified. Qualified and disqualified leads are read-only and can't be edited unless they are reactivated."]),
        "stateCode_display": OOPStringAttribute.descriptions(["en":""]),"statusCode": OOPStringAttribute.descriptions(["en":"Select the lead's status."]),
        "statusCode_display": OOPStringAttribute.descriptions(["en":""]),"subject": OOPStringAttribute.descriptions(["en":"Type a subject or descriptive name, such as the expected order, company name, or marketing source list, to identify the lead."]),
        "telephone1": OOPStringAttribute.descriptions(["en":"Type the work phone number for the primary contact for the lead."]),
        "telephone2": OOPStringAttribute.descriptions(["en":"Type the home phone number for the primary contact for the lead."]),
        "telephone3": OOPStringAttribute.descriptions(["en":"Type an alternate phone number for the primary contact for the lead."]),
        "purchaseTimeFrame": OOPStringAttribute.descriptions(["en":"Choose how long the lead will likely take to make the purchase, so the sales team will be aware."]),
        "purchaseTimeFrame_display": OOPStringAttribute.descriptions(["en":""]),"webSiteUrl": OOPUrlAttribute.descriptions(["en":"Type the website URL for the company associated with this lead."]),
        "SLAId": OOPLinkAttribute("aplSLA").descriptions(["en":"Choose the service level agreement (SLA) that you want to apply to the Lead record."]),
        "SLAInvokedId": OOPUUIDAttribute.descriptions(["en":"Last SLA that was applied to this case. This field is for internal use only."]),
        "onHoldTime": TimeAttributeClass, // Shows how long, in minutes, that the record was on hold."]),
        "lastOnHoldTime": TimeAttributeClass, // Contains the date and time stamp of the last on hold time."]),
        "followEmail": OOPStringAttribute.descriptions(["en":"Information about whether to allow following email activity like opens, attachment views and link clicks for emails sent to the lead."]),
        "timeSpentByMeOnEmailAndMeetings": OOPStringAttribute.descriptions(["en":"Total time spent for emails (read and write) and meetings by me in relation to the lead record."]),
        "entityImageId": OOPUUIDAttribute.descriptions(["en":""]),
        "accountId": OOPLinkAttribute("aplAccount").descriptions(["en":"Unique identifier of the account with which the lead is associated."]),
        "contactId": OOPLinkAttribute("aplContact").descriptions(["en":"Unique identifier of the contact with which the lead is associated."]),
        "yomiCompanyName": OOPStringAttribute.descriptions(["en":"Type the phonetic spelling of the lead's company name, if the name is specified in Japanese, to make sure the name is pronounced correctly in phone calls with the prospect."]),
        "yomiFirstName": OOPStringAttribute.descriptions(["en":"Type the phonetic spelling of the lead's first name, if the name is specified in Japanese, to make sure the name is pronounced correctly in phone calls with the prospect."]),
        "yomiFullName": OOPStringAttribute.descriptions(["en":"Combines and shows the lead's Yomi first and last names so the full phonetic name can be displayed in views and reports."]),
        "yomiLastName": OOPStringAttribute.descriptions(["en":"Type the phonetic spelling of the lead's last name, if the name is specified in Japanese, to make sure the name is pronounced correctly in phone calls with the prospect."]),
        "yomiMiddleName": OOPStringAttribute.descriptions(["en":"Type the phonetic spelling of the lead's middle name, if the name is specified in Japanese, to make sure the name is pronounced correctly in phone calls with the prospect."]),
        "campaignId": OOPUUIDAttribute.descriptions(["en":"Choose the campaign that the lead was generated from to track the effectiveness of marketing campaigns and identify communications received by the lead."]),
        "relatedObjectId": OOPUUIDAttribute.descriptions(["en":"Related Campaign Response."]),
        "originatingCaseId": OOPUUIDAttribute.descriptions(["en":"This attribute is used for Sample Service Business Processes."]),
        "qualifyingOpportunityId": OOPUUIDAttribute.descriptions(["en":"Choose the opportunity that the lead was qualified on and then converted to."]),
        "GDPROptOut": OOPStringAttribute.descriptions(["en":"Describes whether lead is opted out or not"]),"orderType": OOPStringAttribute.descriptions(["en":"Whether the Opportunity created when qualifying this Lead is for an Item- based or a Work-based sale"]),"orderType_display": OOPStringAttribute.descriptions(["en":""]),    
      ])
      .registerPath("crm_leads");
  }
}
mixin(EntityCalls!("CRMLeadEntity"));

unittest {
  version(test_model_crm) {
    assert(CRMLeadEntity);
  
  auto entity = CRMLeadEntity;
  // auto repository = OOPFileRepository("./tests");
/* /*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */ 
  }
}