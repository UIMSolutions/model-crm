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
        "createdOnBehalfBy": UUIDAttributeClass, //Shows who created the record on behalf of another user."]),
        "modifiedOnBehalfBy": UUIDAttributeClass, //Shows who last updated the record on behalf of another user."]),
        "overriddenCreatedOn": TimestampAttributeClass, //Date and time that the record was migrated."]),
        "importSequenceNumber": IntegerAttributeClass, //Sequence number of the import that created this record."]),
        "ownerId": UUIDAttributeClass, // Owner Id"]),"ownerIdType": StringAttributeClass, // The type of owner, either User or Team."]),
        "owningBusinessUnitId": UUIDAttributeClass, //Unique identifier for the business unit that owns the record"]),"owningUserId": UUIDAttributeClass, //Unique identifier for the user that owns the record."]),
        "owningTeamId": UUIDAttributeClass, //Unique identifier for the team that owns the record."]),
        "timeZoneRuleVersionNumber": IntegerAttributeClass, //For internal use only."]),
        "utcConversionTimeZoneCode": StringAttributeClass, // Time zone code that was in use when the record was created."]),
        "fullName": StringAttributeClass, // Combines and shows the lead's first and last names so the full name can be displayed in views and reports."]),
        "processId": UUIDAttributeClass, // Contains the id of the process associated with the entity."]),
        "stageId": UUIDAttributeClass, // Contains the id of the stage where the entity is located."]),
        "traversedPath": StringAttributeClass, // A comma separated list of string values representing the unique identifiers of stages in a Business Process Flow Instance in the order that they occur."]),
        "parentAccountId": UUIDAttributeClass, // Choose an account to connect this lead to, so that the relationship is visible in reports and analytics."]),
        "parentContactId": UUIDAttributeClass, // Choose a contact to connect this lead to, so that the relationship is visible in reports and analytics."]),
        "address1AddressId": UUIDAttributeClass, // address").descriptions(["en":"Unique identifier for address 1."]),
        "address1AddressTypeCode": StringAttributeClass, // Select the primary address type."]),
        "address1AddressTypeCode_display": StringAttributeClass, //"address1City": StringAttributeClass, // Type the city for the primary address."]),
        "address1Composite": StringAttributeClass, // Shows the complete primary address."]),
        "address1Country": StringAttributeClass, // Type the country or region for the primary address."]),
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
        "address1ShippingMethodCode_display": StringAttributeClass, //"address1StateOrProvince": StringAttributeClass, // Type the state or province of the primary address."]),
        "address1Telephone1": StringAttributeClass, // Type the main phone number associated with the primary address."]),
        "address1Telephone2": StringAttributeClass, // Type a second phone number associated with the primary address."]),
        "address1Telephone3": StringAttributeClass, // Type a third phone number associated with the primary address."]),
        "address1UPSZone": StringAttributeClass, // Type the UPS zone of the primary address to make sure shipping charges are calculated correctly and deliveries are made promptly, if shipped by UPS."]),
        "address1UTCOffset": StringAttributeClass, // Select the time zone, or UTC offset, for this address so that other people can reference it when they contact someone at this address."]),
        "address2AddressId": UUIDAttributeClass, // address").descriptions(["en":"Unique identifier for address 2."]),
        "address2AddressTypeCode": StringAttributeClass, // Select the secondary address type."]),
        "address2AddressTypeCode_display": StringAttributeClass, //"address2City": StringAttributeClass, // Type the city for the secondary address."]),
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
        "address2ShippingMethodCode_display": StringAttributeClass, //"address2StateOrProvince": StringAttributeClass, // Type the state or province of the secondary address."]),
        "address2Telephone1": StringAttributeClass, // Type the main phone number associated with the secondary address."]),
        "address2Telephone2": StringAttributeClass, // Type a second phone number associated with the secondary address."]),
        "address2Telephone3": StringAttributeClass, // Type a third phone number associated with the secondary address."]),
        "address2UPSZone": StringAttributeClass, // Type the UPS zone of the secondary address to make sure shipping charges are calculated correctly and deliveries are made promptly, if shipped by UPS."]),
        "address2UTCOffset": StringAttributeClass, // Select the time zone, or UTC offset, for this address so that other people can reference it when they contact someone at this address."]),
        "budgetAmount": StringAttributeClass, // Information about the budget amount of the lead's company or organization."]),
        "transactionCurrencyId": CurrencyIdAttributeClass, // Choose the local currency for the record to make sure budgets are reported in the correct currency."]),
        "exchangeRate": StringAttributeClass, // Shows the conversion rate of the record's currency. The exchange rate is used to convert all money fields in the record from the local currency to the system's default currency."]),
        "budgetAmountBase": StringAttributeClass, // Value of the Budget Amount in base currency."]),
        "budgetStatus": StringAttributeClass, // Information about the budget status of the lead's company or organization."]),
        "budgetStatus_display": StringAttributeClass, //"companyName": StringAttributeClass, // Type the name of the company associated with the lead. This becomes the account name when the lead is qualified and converted to a customer account."]),
        "confirmInterest": StringAttributeClass, // Select whether the lead confirmed interest in your offerings. This helps in determining the lead quality."]),
        "customerId": UUIDAttributeClass, // The customer account or contact to provide a quick link to additional customer details, such as account information, activities, and opportunities."]),
        "customerIdType": StringAttributeClass, // The type of customer, either Account or Contact."]),
        "decisionMaker": StringAttributeClass, // Select whether your notes include information about who makes the purchase decisions at the lead's company."]),
        "doNotBulkEMail": StringAttributeClass, // Select whether the lead accepts bulk email sent through marketing campaigns or quick campaigns. If Do Not Allow is selected, the lead can be added to marketing lists, but will be excluded from the email."]),
        "doNotEMail": StringAttributeClass, // Select whether the lead allows direct email sent from Microsoft Dynamics 365."]),
        "doNotFax": StringAttributeClass, // Select whether the lead allows faxes."]),
        "doNotPhone": StringAttributeClass, // Select whether the lead allows phone calls."]),
        "doNotPostalMail": StringAttributeClass, // Select whether the lead allows direct mail."]),
        "doNotSendMM": StringAttributeClass, // Select whether the lead accepts marketing materials, such as brochures or catalogs. Leads that opt out can be excluded from marketing initiatives."]),
        "EMailAddress1": StringAttributeClass, // Type the primary email address for the lead."]),
        "EMailAddress2": StringAttributeClass, // Type the secondary email address for the lead."]),
        "EMailAddress3": StringAttributeClass, // Type a third email address for the lead."]),
        "estimatedAmount": StringAttributeClass, // Type the estimated revenue value that this lead will generate to assist in sales forecasting and planning."]),
        "estimatedAmountBase": StringAttributeClass, // Value of the Est. Value in base currency."]),
        "estimatedCloseDate": DateAttributeClass, // Enter the expected close date for the lead, so that the sales team can schedule timely follow-up meetings to move the prospect to the next sales stage."]),
        "estimatedValue": StringAttributeClass, // Type a numeric value of the lead's estimated value, such as a product quantity, if no revenue amount can be specified in the Est. Value field. This can be used for sales forecasting and planning."]),
        "evaluateFit": StringAttributeClass, // Select whether the fit between the lead's requirements and your offerings was evaluated."]),
        "fax": StringAttributeClass, // Type the fax number for the primary contact for the lead."]),
        "firstName": StringAttributeClass, // Type the first name of the primary contact for the lead to make sure the prospect is addressed correctly in sales calls, email, and marketing campaigns."]),
        "industryCode": StringAttributeClass, // Select the primary industry in which the lead's business is focused, for use in marketing segmentation and demographic analysis."]),
        "industryCode_display": StringAttributeClass, //"initialCommunication": StringAttributeClass, // Choose whether someone from the sales team contacted this lead earlier."]),
        "initialCommunication_display": StringAttributeClass, //"jobTitle": StringAttributeClass, // Type the job title of the primary contact for this lead to make sure the prospect is addressed correctly in sales calls, email, and marketing campaigns."]),
        "lastName": StringAttributeClass, // Type the last name of the primary contact for the lead to make sure the prospect is addressed correctly in sales calls, email, and marketing campaigns."]),
        "lastUsedInCampaign": StringAttributeClass, // Shows the date when the lead was last included in a marketing campaign or quick campaign."]),
        "leadQualityCode": StringAttributeClass, // Select a rating value to indicate the lead's potential to become a customer."]),
        "leadQualityCode_display": StringAttributeClass, //"leadSourceCode": StringAttributeClass, // Select the primary marketing source that prompted the lead to contact you."]),
        "leadSourceCode_display": StringAttributeClass, //"masterId": UUIDAttributeClass, // Unique identifier of the master lead for merge."]),
        "merged": StringAttributeClass, // Tells whether the lead has been merged with another lead."]),
        "middleName": StringAttributeClass, // Type the middle name or initial of the primary contact for the lead to make sure the prospect is addressed correctly."]),
        "mobilePhone": StringAttributeClass, // Type the mobile phone number for the primary contact for the lead."]),
        "need": StringAttributeClass, // Choose how high the level of need is for the lead's company."]),
        "need_display": StringAttributeClass, //"numberOfEmployees": StringAttributeClass, // Type the number of employees that work at the company associated with the lead, for use in marketing segmentation and demographic analysis."]),
        "pager": StringAttributeClass, // Type the pager number for the primary contact for the lead."]),
        "participatesInWorkflow": StringAttributeClass, // Shows whether the lead participates in workflow rules."]),
        "preferredContactMethodCode": StringAttributeClass, // Select the preferred method of contact."]),
        "preferredContactMethodCode_display": StringAttributeClass, //"priorityCode": StringAttributeClass, // Select the priority so that preferred customers or critical issues are handled quickly."]),
        "priorityCode_display": StringAttributeClass, //"purchaseProcess": StringAttributeClass, // Choose whether an individual or a committee will be involved in the purchase process for the lead."]),
        "purchaseProcess_display": StringAttributeClass, //"qualificationComments": StringAttributeClass, // Type comments about the qualification or scoring of the lead."]),
        "revenue": StringAttributeClass, // Type the annual revenue of the company associated with the lead to provide an understanding of the prospect's business."]),
        "revenueBase": StringAttributeClass, // Value of the Annual Revenue in base currency."]),
        "salesStage": StringAttributeClass, // Select the sales stage of this lead to aid the sales team in their efforts to convert this lead to an opportunity."]),
        "salesStage_display": StringAttributeClass, //"salesStageCode": StringAttributeClass, // Select the sales process stage for the lead to help determine the probability of the lead converting to an opportunity."]),
        "salesStageCode_display": StringAttributeClass, //"salutation": StringAttributeClass, // Type the salutation of the primary contact for this lead to make sure the prospect is addressed correctly in sales calls, email messages, and marketing campaigns."]),
        "scheduleFollowupProspect": StringAttributeClass, // Enter the date and time of the prospecting follow-up meeting with the lead."]),
        "scheduleFollowUpQualify": StringAttributeClass, // Enter the date and time of the qualifying follow-up meeting with the lead."]),
        "SIC": StringAttributeClass, // Type the Standard Industrial Classification (SIC) code that indicates the lead's primary industry of business for use in marketing segmentation and demographic analysis."]),
        "stateCode": StringAttributeClass, // Shows whether the lead is open, qualified, or disqualified. Qualified and disqualified leads are read-only and can't be edited unless they are reactivated."]),
        "stateCode_display": StringAttributeClass, //"statusCode": StringAttributeClass, // Select the lead's status."]),
        "statusCode_display": StringAttributeClass, //"subject": StringAttributeClass, // Type a subject or descriptive name, such as the expected order, company name, or marketing source list, to identify the lead."]),
        "telephone1": StringAttributeClass, // Type the work phone number for the primary contact for the lead."]),
        "telephone2": StringAttributeClass, // Type the home phone number for the primary contact for the lead."]),
        "telephone3": StringAttributeClass, // Type an alternate phone number for the primary contact for the lead."]),
        "purchaseTimeFrame": StringAttributeClass, // Choose how long the lead will likely take to make the purchase, so the sales team will be aware."]),
        "purchaseTimeFrame_display": StringAttributeClass, //"webSiteUrl": UrlAttributeClass, // Type the website URL for the company associated with this lead."]),
        "SLAId": UUIDAttributeClass, // aplSLA").descriptions(["en":"Choose the service level agreement (SLA) that you want to apply to the Lead record."]),
        "SLAInvokedId": UUIDAttributeClass, // Last SLA that was applied to this case. This field is for internal use only."]),
        "onHoldTime": TimeAttributeClass, // Shows how long, in minutes, that the record was on hold."]),
        "lastOnHoldTime": TimeAttributeClass, // Contains the date and time stamp of the last on hold time."]),
        "followEmail": StringAttributeClass, // Information about whether to allow following email activity like opens, attachment views and link clicks for emails sent to the lead."]),
        "timeSpentByMeOnEmailAndMeetings": StringAttributeClass, // Total time spent for emails (read and write) and meetings by me in relation to the lead record."]),
        "entityImageId": UUIDAttributeClass, //
        "accountId": UUIDAttributeClass, // Unique identifier of the account with which the lead is associated."]),
        "contactId": UUIDAttributeClass, // Unique identifier of the contact with which the lead is associated."]),
        "yomiCompanyName": StringAttributeClass, // Type the phonetic spelling of the lead's company name, if the name is specified in Japanese, to make sure the name is pronounced correctly in phone calls with the prospect."]),
        "yomiFirstName": StringAttributeClass, // Type the phonetic spelling of the lead's first name, if the name is specified in Japanese, to make sure the name is pronounced correctly in phone calls with the prospect."]),
        "yomiFullName": StringAttributeClass, // Combines and shows the lead's Yomi first and last names so the full phonetic name can be displayed in views and reports."]),
        "yomiLastName": StringAttributeClass, // Type the phonetic spelling of the lead's last name, if the name is specified in Japanese, to make sure the name is pronounced correctly in phone calls with the prospect."]),
        "yomiMiddleName": StringAttributeClass, // Type the phonetic spelling of the lead's middle name, if the name is specified in Japanese, to make sure the name is pronounced correctly in phone calls with the prospect."]),
        "campaignId": UUIDAttributeClass, // Choose the campaign that the lead was generated from to track the effectiveness of marketing campaigns and identify communications received by the lead."]),
        "relatedObjectId": UUIDAttributeClass, // Related Campaign Response."]),
        "originatingCaseId": UUIDAttributeClass, // This attribute is used for Sample Service Business Processes."]),
        "qualifyingOpportunityId": UUIDAttributeClass, // Choose the opportunity that the lead was qualified on and then converted to."]),
        "GDPROptOut": StringAttributeClass, // Describes whether lead is opted out or not"]),"orderType": StringAttributeClass, // Whether the Opportunity created when qualifying this Lead is for an Item- based or a Work-based sale"]),"orderType_display": StringAttributeClass, //    
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