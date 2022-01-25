module models.crm.solutions.customers.profile;

@safe:
import uim.entities;

// A person or organization that either performed or has the potential to engage in a business activity.
class DAPLCustomerProfile : DOOPEntity {
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
      "exchangeRate": OOPAttributeString.descriptions(["en":"Exchange rate for the currency associated with the entity with respect to the base currency."]),
      "accountNumber": OOPAttributeNumber.descriptions(["en":"Type an ID number or code for the customer to quickly search and identify the customer in system views."]),
      "affiliations": OOPAttributeString.descriptions(["en":"Different affiliations associated with the customer."]),
      "alumniOf": OOPAttributeString.descriptions(["en":"Alumni customer is a part of."]),
      "anniversary": OOPAttributeString.descriptions(["en":"Date of the customer's wedding or service anniversary for use in customer gift programs or other communications."]),
      "assistantName": OOPAttributeString.descriptions(["en":"Name of the customer's assistant."]),
      "awards": OOPAttributeString.descriptions(["en":"List of award(s) received by the customer."]),
      "billingAddress": OOPAttributeString.descriptions(["en":"Billing address of the customer."]),
      "birthDate": OOPAttributeDate.descriptions(["en":""]),
      "childrenNames": OOPAttributeString.descriptions(["en":"Customer's children name(s)."]),
      "churnScore": OOPAttributeString.descriptions(["en":"Churn score of the customer."]),
      "companyName": OOPAttributeString.descriptions(["en":"Company name of the customer."]),
      "countryOrRegion": OOPAttributeString.descriptions(["en":""]),
      "culture": OOPAttributeString.descriptions(["en":"The culture of the customer."]),
      "currencyName": OOPAttributeString.descriptions(["en":""]),
      "customerId": OOPAttributeString.descriptions(["en":"The customer account or contact to provide a quick link to additional customer details, such as account information, activities, and opportunities."]),
      "customerIdType": OOPAttributeString.descriptions(["en":"The type of customer, either Account or Contact."]),
      "customerProfileId": OOPAttributeString.descriptions(["en":"Unique identifier for entity instances"]),
      "department": OOPAttributeString.descriptions(["en":"The department or business unit where the customer works in the parent company or business."]),
      "description": OOPAttributeString.descriptions(["en":"Additional information to describe the customer, such as an excerpt from the company's website."]),
      "donotBulkEmail": OOPAttributeString.descriptions(["en":"Select whether the customer accepts bulk email sent through marketing campaigns or quick campaigns. If Do Not Allow is selected, the customer can be added to marketing lists, but will be excluded from the email."]),
      "doNotBulkPostalMail": OOPAttributeString.descriptions(["en":"Select whether the customer accepts bulk postal mail sent through marketing campaigns or quick campaigns. If Do Not Allow is selected, the customer can be added to marketing lists, but will be excluded from the letters."]),
      "doNotContact": OOPAttributeString.descriptions(["en":"Select whether the customer allows direct contact from Microsoft Dynamics 365 Customer Insights. If Do Not Contact is selected, Microsoft Dynamics 365 Customer Insights will not contact the customer."]),
      "doNotEmail": OOPAttributeString.descriptions(["en":"Select whether the customer allows direct email sent from Microsoft Dynamics 365 Customer Insights. If Do Not Allow is selected, Microsoft Dynamics 365 Customer Insights will not send the email."]),
      "doNotFax": OOPAttributeString.descriptions(["en":"Select whether the customer allows faxes. If Do Not Allow is selected, the customer will be excluded from any fax activities distributed in marketing campaigns."]),
      "doNotPhone": OOPAttributeString.descriptions(["en":"Select whether the customer accepts phone calls. If Do Not Allow is selected, the customer will be excluded from any phone call activities distributed in marketing campaigns."]),
      "doNotPostalMail": OOPAttributeString.descriptions(["en":"Select whether the customer allows direct mail. If Do Not Allow is selected, the customer will be excluded from letter activities distributed in marketing campaigns."]),
      "educationCode": OOPAttributeString.descriptions(["en":"Highest level of education of the customer."]),
      "employeeIdentifier": OOPAttributeString.descriptions(["en":"The employee ID or number for the customer for reference in orders, service cases, or other communications with the customer's organization."]),
      "employmentStartDate": OOPAttributeDate.descriptions(["en":"Employment start date of the customer for reference in with the customer's organization."]),
      "engagementScore": OOPAttributeString.descriptions(["en":"Engagement score of the customer."]),
      "facebookProfile": OOPAttributeString.descriptions(["en":"Facebook profile url of the customer."]),
      "familyStatus": OOPAttributeString.descriptions(["en":""]),
      "familyStatus_display": OOPAttributeString.descriptions(["en":""]),
      "fax": OOPAttributeString.descriptions(["en":"Fax number to send fax to the customer."]),
      "firstName": OOPAttributeString.descriptions(["en":"The customer's first name to make sure the customer is addressed correctly in sales calls, email, and marketing campaigns."]),
      "firstNamePronunciation": OOPAttributeString.descriptions(["en":"The customer's first name pronunciation to make sure the customer is pronounced correctly in sales calls, email, and marketing campaigns."]),
      "fraudScore": OOPAttributeString.descriptions(["en":"Calculated fraud score of the customer."]),
      "FTPSiteUrl": OOPAttributeUrl.descriptions(["en":"The URL for the contact's FTP site to enable users to access data and share documents."]),
      "gamerTag": OOPAttributeString.descriptions(["en":"The gamertag from the Xbox world of the customer."]),
      "gender": OOPAttributeString.descriptions(["en":"The customer's gender to make sure the contact is addressed correctly in sales calls, email, and marketing campaigns."]),
      "gender_display": OOPAttributeString.descriptions(["en":""]),
      "hasChildren": OOPAttributeString.descriptions(["en":"Specify whether the customer has any children for reference in follow-up phone calls and other communications."]),
      "hasPets": OOPAttributeString.descriptions(["en":"Specify whether the customer has any pets for reference in follow-up phone calls and other communications."]),
      "hobbies": OOPAttributeString.descriptions(["en":"List down the hobbies of the customer."]),
      "homeOwnershipType": OOPAttributeString.descriptions(["en":"Specify the type of home owned by the customer."]),
      "homePhone": OOPAttributeString.descriptions(["en":"Home phone number for this customer."]),
      "industryCode": OOPAttributeString.descriptions(["en":"Select the customer's primary industry for use in marketing segmentation and demographic analysis."]),
      "industryCode_display": OOPAttributeString.descriptions(["en":""]),
      "influencerScore": OOPAttributeString.descriptions(["en":"Calculated influencer score of the customer."]),
      "instagramHandle": OOPAttributeString.descriptions(["en":"Instagram handle of the customer."]),
      "interests": OOPAttributeString.descriptions(["en":"List down all the interests of this customer."]),
      "isGovernment": OOPAttributeBoolean.descriptions(["en":"Specify if the customer belongs to or works for government."]),
      "isLead": OOPAttributeBoolean.descriptions(["en":""]),
      "isPublicSector": OOPAttributeBoolean.descriptions(["en":"Specify if the customer works in public sector."]),
      "jobTitle": OOPAttributeString.descriptions(["en":"The job title of the customer to make sure the customer is addressed correctly in sales calls, email, and marketing campaigns."]),
      "knownSince": OOPAttributeString.descriptions(["en":"Specify the date since when the customer is known."]),
      "language": OOPAttributeString.descriptions(["en":"Specify the language(s) the customer can interact with."]),
      "lastName": OOPAttributeString.descriptions(["en":"The customer's last name to make sure the customer is addressed correctly in sales calls, email, and marketing campaigns."]),
      "lastNamePronunciation": OOPAttributeString.descriptions(["en":"The customer's last name pronunciation to make sure the customer is pronounced correctly in sales calls, email, and marketing campaigns."]),
      "lifeTimeValue": OOPAttributeString.descriptions(["en":"Calculated life time value of the customer."]),
      "linkedInProfile": OOPAttributeString.descriptions(["en":"LinkedIn profile url of the customer."]),
      "mailingAddress": OOPAttributeString.descriptions(["en":"Mailing address of the customer."]),
      "middleName": OOPAttributeString.descriptions(["en":"The customer's middle name or initial to make sure the customer is addressed correctly."]),
      "middleNamePronunciation": OOPAttributeString.descriptions(["en":"The customer's middle name or initial pronunciation to make sure the customer is pronounced correctly."]),
      "mobilePhone": OOPAttributeString.descriptions(["en":"The mobile phone number for the customer."]),
      "nameAlias": OOPAttributeString.descriptions(["en":"Alternate name of the customer that can be used as their alias."]),
      "namePrefix": OOPAttributeString.descriptions(["en":"Any prefix assigned to the customer's name."]),
      "nameSuffix": OOPAttributeString.descriptions(["en":"Any suffix assigned to the customer's name."]),
      "nationality": OOPAttributeString.descriptions(["en":"Nationality of the customer."]),
      "nickName": OOPAttributeString.descriptions(["en":"Nick name of the customer."]),
      "notes": OOPAttributeString.descriptions(["en":"Any additional information about the customer."]),
      "numberOfChildren": OOPAttributeString.descriptions(["en":"The number of children the customer has for reference in follow-up phone calls and other communications."]),
      "pinterestId": OOPAttributeString.descriptions(["en":"Pinterest identifier of the customer."]),
      "POBoxAddress": OOPAttributeString.descriptions(["en":"PO Box address of the customer."]),
      "postalCode": OOPAttributeString.descriptions(["en":"Postal code of the customer."]),
      "preferredCallTime": OOPAttributeTime.descriptions(["en":""]),
      "preferredCallTime_display": OOPAttributeString.descriptions(["en":""]),
      "preferredContactMethodCode": OOPAttributeString.descriptions(["en":""]),
      "preferredContactMethodCode_display": OOPAttributeString.descriptions(["en":""]),
      "preferredName": OOPAttributeString.descriptions(["en":"Preferred name of the customer to be used in communication."]),
      "primaryEmail": OOPAttributeString.descriptions(["en":"Primary email address of the customer."]),
      "primaryPhone": OOPAttributeString.descriptions(["en":"Primary contact phone number of the customer."]),
      "profileImage": OOPAttributeString.descriptions(["en":"Profile image url location of the customer."]),
      "profileSubtype": OOPAttributeString.descriptions(["en":"Profile subtype to define the customer."]),
      "profileType": OOPAttributeString.descriptions(["en":"Profile type to define the customer."]),
      "profileType_display": OOPAttributeString.descriptions(["en":""]),
      "salutation": OOPAttributeString.descriptions(["en":"The salutation of the customer to make sure the customer is addressed correctly in sales calls, email messages, and marketing campaigns."]),
      "satisfactionScore": OOPAttributeString.descriptions(["en":"Calculated satisfaction score of the customer."]),
      "secondaryEmail": OOPAttributeString.descriptions(["en":"Secondary email address of the customer."]),
      "sentimentScore": OOPAttributeString.descriptions(["en":"Calculated sentiment score of the customer."]),
      "shippingAddress": OOPAttributeString.descriptions(["en":"Shipping address of the customer."]),
      "spouseName": OOPAttributeString.descriptions(["en":"The name of the customer's spouse or partner for reference during calls, events, or other communications with the contact."]),
      "systemOfOrigin": OOPAttributeString.descriptions(["en":"Origin source of the customer data."]),
      "tags": OOPAttributeString.descriptions(["en":"Any tags associated with the customer."]),
      "totalLifetimeSpendAmount": OOPAttributeString.descriptions(["en":"Value of the Total Lifetime Spend Amount in transaction currency."]),
      "totallifetimespendamount_Base": OOPAttributeString.descriptions(["en":"Value of the Total Lifetime Spend Amount in base currency."]),
      "totalTransactionCount": OOPAttributeString.descriptions(["en":"Value of the total number of transactions performed by the customer."]),
      "twitterHandle": OOPAttributeString.descriptions(["en":"Twitter account name / handle of the customer."]),
      "version": OOPAttributeString.descriptions(["en":"Denotes latest version of the customer profile for manual tracking."]),
      "websiteUrl": OOPAttributeUrl.descriptions(["en":"Website url to identify the customer."]),
      "workAddress": OOPAttributeString.descriptions(["en":"Work address of the customer."]),
      "workPhone": OOPAttributeString.descriptions(["en":"Work phone number of the customer."]),
      "stateCode": OOPAttributeString.descriptions(["en":"Status of the CustomerProfile"]),
      "stateCode_display": OOPAttributeString.descriptions(["en":""]),
      "statusCode": OOPAttributeString.descriptions(["en":"Reason for the status of the CustomerProfile"]),
      "statusCode_display": OOPAttributeString.descriptions(["en":""]),
      "transactionCurrencyId": OOPAttributeLink("aplCurrency").descriptions(["en":"Unique identifier of the currency associated with the entity."]),
    ]);
  }

  override string entityClass() { return "aplCustomerProfile"; }
  override string entityClasses() { return "aplCustomerProfiles"; }

  this(UUID myId) { 
    this(); this.id(myId); }
  this(string myName) { 
    this(); this.name(myName); }
  this(UUID myId, string myName) { 
    this(); this.id(myId).name(myName); }
  this(Json aJson) { 
    this(); this.fromJson(aJson); }

   // mixin(GetEntity!("campaign", "campaignId", "APLCustomerProfile"));
}
auto APLCustomerProfile() { return new DAPLCustomerProfile; } 
auto APLCustomerProfile(Json json) { return new DAPLCustomerProfile(json); } 

unittest {
  version(uim_entities) {
    assert(APLCustomerProfile);

  auto entity = APLCustomerProfile;
  // auto repository = OOPFileRepository("./tests");
/* /*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */ 
  }
}