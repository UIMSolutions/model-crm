module models.crm.solutions.customers.profile;

@safe:
import uim.entities;

// A person or organization that either performed or has the potential to engage in a business activity.
class DCRMCustomerProfile : DOOPEntity {
  mixin(EntityThis!("CRMCustomerProfile"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "createdOnBehalfBy": StringAttributeClass, // Shows who created the record on behalf of another user."]),
        "modifiedOnBehalfBy": StringAttributeClass, // Shows who last updated the record on behalf of another user."]),
        "overriddenCreatedOn": StringAttributeClass, // Date and time that the record was migrated."]),
        "importSequenceNumber": IntegerAttributeClass, //Sequence number of the import that created this record."]),
        "ownerId": StringAttributeClass, // Owner Id"]),
        "ownerIdType": StringAttributeClass, // The type of owner, either User or Team."]),
        "owningBusinessUnitId": UUIDAttributeClass, //Unique identifier for the business unit that owns the record"]),
        "owningUser": StringAttributeClass, // Unique identifier of the user that owns the activity."]),
        "owningTeam": StringAttributeClass, // Unique identifier for the team that owns the record."]),
        "timeZoneRuleVersionNumber": IntegerAttributeClass, //For internal use only."]),
        "utcConversionTimeZoneCode": StringAttributeClass, // Time zone code that was in use when the record was created."]),
        "versionNumber": IntegerAttributeClass, //Version Number"]),
        "exchangeRate": StringAttributeClass, // Exchange rate for the currency associated with the entity with respect to the base currency."]),
        "accountNumber": IntegerAttributeClass, //Type an ID number or code for the customer to quickly search and identify the customer in system views."]),
        "affiliations": StringAttributeClass, // Different affiliations associated with the customer."]),
        "alumniOf": StringAttributeClass, // Alumni customer is a part of."]),
        "anniversary": StringAttributeClass, // Date of the customer's wedding or service anniversary for use in customer gift programs or other communications."]),
        "assistantName": StringAttributeClass, // Name of the customer's assistant."]),
        "awards": StringAttributeClass, // List of award(s) received by the customer."]),
        "billingAddress": StringAttributeClass, // Billing address of the customer."]),
        "birthDate": DateAttributeClass, // 
        "childrenNames": StringAttributeClass, // Customer's children name(s)."]),
        "churnScore": StringAttributeClass, // Churn score of the customer."]),
        "companyName": StringAttributeClass, // Company name of the customer."]),
        "countryOrRegion": StringAttributeClass, //
        "culture": StringAttributeClass, // The culture of the customer."]),
        "currencyName": StringAttributeClass, //
        "customerId": StringAttributeClass, // The customer account or contact to provide a quick link to additional customer details, such as account information, activities, and opportunities."]),
        "customerIdType": StringAttributeClass, // The type of customer, either Account or Contact."]),
        "customerProfileId": StringAttributeClass, // Unique identifier for entity instances"]),
        "department": StringAttributeClass, // The department or business unit where the customer works in the parent company or business."]),
        "description": StringAttributeClass, // Additional information to describe the customer, such as an excerpt from the company's website."]),
        "donotBulkEmail": StringAttributeClass, // Select whether the customer accepts bulk email sent through marketing campaigns or quick campaigns. If Do Not Allow is selected, the customer can be added to marketing lists, but will be excluded from the email."]),
        "doNotBulkPostalMail": StringAttributeClass, // Select whether the customer accepts bulk postal mail sent through marketing campaigns or quick campaigns. If Do Not Allow is selected, the customer can be added to marketing lists, but will be excluded from the letters."]),
        "doNotContact": StringAttributeClass, // Select whether the customer allows direct contact from Microsoft Dynamics 365 Customer Insights. If Do Not Contact is selected, Microsoft Dynamics 365 Customer Insights will not contact the customer."]),
        "doNotEmail": StringAttributeClass, // Select whether the customer allows direct email sent from Microsoft Dynamics 365 Customer Insights. If Do Not Allow is selected, Microsoft Dynamics 365 Customer Insights will not send the email."]),
        "doNotFax": StringAttributeClass, // Select whether the customer allows faxes. If Do Not Allow is selected, the customer will be excluded from any fax activities distributed in marketing campaigns."]),
        "doNotPhone": StringAttributeClass, // Select whether the customer accepts phone calls. If Do Not Allow is selected, the customer will be excluded from any phone call activities distributed in marketing campaigns."]),
        "doNotPostalMail": StringAttributeClass, // Select whether the customer allows direct mail. If Do Not Allow is selected, the customer will be excluded from letter activities distributed in marketing campaigns."]),
        "educationCode": StringAttributeClass, // Highest level of education of the customer."]),
        "employeeIdentifier": StringAttributeClass, // The employee ID or number for the customer for reference in orders, service cases, or other communications with the customer's organization."]),
        "employmentStartDate": DateAttributeClass, // Employment start date of the customer for reference in with the customer's organization."]),
        "engagementScore": StringAttributeClass, // Engagement score of the customer."]),
        "facebookProfile": StringAttributeClass, // Facebook profile url of the customer."]),
        "familyStatus": StringAttributeClass, //
        "familyStatus_display": StringAttributeClass, //
        "fax": StringAttributeClass, // Fax number to send fax to the customer."]),
        "firstName": StringAttributeClass, // The customer's first name to make sure the customer is addressed correctly in sales calls, email, and marketing campaigns."]),
        "firstNamePronunciation": StringAttributeClass, // The customer's first name pronunciation to make sure the customer is pronounced correctly in sales calls, email, and marketing campaigns."]),
        "fraudScore": StringAttributeClass, // Calculated fraud score of the customer."]),
        "FTPSiteUrl": OOPUrlAttribute.descriptions(["en":"The URL for the contact's FTP site to enable users to access data and share documents."]),
        "gamerTag": StringAttributeClass, // The gamertag from the Xbox world of the customer."]),
        "gender": StringAttributeClass, // The customer's gender to make sure the contact is addressed correctly in sales calls, email, and marketing campaigns."]),
        "gender_display": StringAttributeClass, //
        "hasChildren": StringAttributeClass, // Specify whether the customer has any children for reference in follow-up phone calls and other communications."]),
        "hasPets": StringAttributeClass, // Specify whether the customer has any pets for reference in follow-up phone calls and other communications."]),
        "hobbies": StringAttributeClass, // List down the hobbies of the customer."]),
        "homeOwnershipType": StringAttributeClass, // Specify the type of home owned by the customer."]),
        "homePhone": StringAttributeClass, // Home phone number for this customer."]),
        "industryCode": StringAttributeClass, // Select the customer's primary industry for use in marketing segmentation and demographic analysis."]),
        "industryCode_display": StringAttributeClass, //
        "influencerScore": StringAttributeClass, // Calculated influencer score of the customer."]),
        "instagramHandle": StringAttributeClass, // Instagram handle of the customer."]),
        "interests": StringAttributeClass, // List down all the interests of this customer."]),
        "isGovernment": BooleanAttributeClass, // Specify if the customer belongs to or works for government."]),
        "isLead": BooleanAttributeClass, //
        "isPublicSector": BooleanAttributeClass, // Specify if the customer works in public sector."]),
        "jobTitle": StringAttributeClass, // The job title of the customer to make sure the customer is addressed correctly in sales calls, email, and marketing campaigns."]),
        "knownSince": StringAttributeClass, // Specify the date since when the customer is known."]),
        "language": StringAttributeClass, // Specify the language(s) the customer can interact with."]),
        "lastName": StringAttributeClass, // The customer's last name to make sure the customer is addressed correctly in sales calls, email, and marketing campaigns."]),
        "lastNamePronunciation": StringAttributeClass, // The customer's last name pronunciation to make sure the customer is pronounced correctly in sales calls, email, and marketing campaigns."]),
        "lifeTimeValue": StringAttributeClass, // Calculated life time value of the customer."]),
        "linkedInProfile": StringAttributeClass, // LinkedIn profile url of the customer."]),
        "mailingAddress": StringAttributeClass, // Mailing address of the customer."]),
        "middleName": StringAttributeClass, // The customer's middle name or initial to make sure the customer is addressed correctly."]),
        "middleNamePronunciation": StringAttributeClass, // The customer's middle name or initial pronunciation to make sure the customer is pronounced correctly."]),
        "mobilePhone": StringAttributeClass, // The mobile phone number for the customer."]),
        "nameAlias": StringAttributeClass, // Alternate name of the customer that can be used as their alias."]),
        "namePrefix": StringAttributeClass, // Any prefix assigned to the customer's name."]),
        "nameSuffix": StringAttributeClass, // Any suffix assigned to the customer's name."]),
        "nationality": StringAttributeClass, // Nationality of the customer."]),
        "nickName": StringAttributeClass, // Nick name of the customer."]),
        "notes": StringAttributeClass, // Any additional information about the customer."]),
        "numberOfChildren": StringAttributeClass, // The number of children the customer has for reference in follow-up phone calls and other communications."]),
        "pinterestId": StringAttributeClass, // Pinterest identifier of the customer."]),
        "POBoxAddress": StringAttributeClass, // PO Box address of the customer."]),
        "postalCode": StringAttributeClass, // Postal code of the customer."]),
        "preferredCallTime": TimeAttributeClass, // 
        "preferredCallTime_display": StringAttributeClass, //
        "preferredContactMethodCode": StringAttributeClass, //
        "preferredContactMethodCode_display": StringAttributeClass, //
        "preferredName": StringAttributeClass, // Preferred name of the customer to be used in communication."]),
        "primaryEmail": StringAttributeClass, // Primary email address of the customer."]),
        "primaryPhone": StringAttributeClass, // Primary contact phone number of the customer."]),
        "profileImage": StringAttributeClass, // Profile image url location of the customer."]),
        "profileSubtype": StringAttributeClass, // Profile subtype to define the customer."]),
        "profileType": StringAttributeClass, // Profile type to define the customer."]),
        "profileType_display": StringAttributeClass, //
        "salutation": StringAttributeClass, // The salutation of the customer to make sure the customer is addressed correctly in sales calls, email messages, and marketing campaigns."]),
        "satisfactionScore": StringAttributeClass, // Calculated satisfaction score of the customer."]),
        "secondaryEmail": StringAttributeClass, // Secondary email address of the customer."]),
        "sentimentScore": StringAttributeClass, // Calculated sentiment score of the customer."]),
        "shippingAddress": StringAttributeClass, // Shipping address of the customer."]),
        "spouseName": StringAttributeClass, // The name of the customer's spouse or partner for reference during calls, events, or other communications with the contact."]),
        "systemOfOrigin": StringAttributeClass, // Origin source of the customer data."]),
        "tags": StringAttributeClass, // Any tags associated with the customer."]),
        "totalLifetimeSpendAmount": StringAttributeClass, // Value of the Total Lifetime Spend Amount in transaction currency."]),
        "totallifetimespendamount_Base": StringAttributeClass, // Value of the Total Lifetime Spend Amount in base currency."]),
        "totalTransactionCount": StringAttributeClass, // Value of the total number of transactions performed by the customer."]),
        "twitterHandle": StringAttributeClass, // Twitter account name / handle of the customer."]),
        "version": StringAttributeClass, // Denotes latest version of the customer profile for manual tracking."]),
        "websiteUrl": OOPUrlAttribute.descriptions(["en":"Website url to identify the customer."]),
        "workAddress": StringAttributeClass, // Work address of the customer."]),
        "workPhone": StringAttributeClass, // Work phone number of the customer."]),
        "stateCode": StringAttributeClass, // Status of the CustomerProfile"]),
        "stateCode_display": StringAttributeClass, //
        "statusCode": StringAttributeClass, // Reason for the status of the CustomerProfile"]),
        "statusCode_display": StringAttributeClass, //
        "transactionCurrencyId": OOPLinkAttribute("aplCurrency").descriptions(["en":"Unique identifier of the currency associated with the entity."]),
      ])
      .registerPath("crm_customerprofiles");
  }
}
mixin(EntityCalls!("CRMCustomerProfile"));

unittest {
  version(test_model_crm) {
    assert(CRMCustomerProfile);

  auto entity = CRMCustomerProfile;
  // auto repository = OOPFileRepository("./tests");
/* /*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */ 
  }
}