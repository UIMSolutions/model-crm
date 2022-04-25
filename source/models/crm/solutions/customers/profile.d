module models.crm.solutions.customers.profile;

@safe:
import uim.entities;

// A person or organization that either performed or has the potential to engage in a business activity.
class DCRMCustomerProfile : DOOPEntity {
  mixin(EntityThis!("CRMCustomerProfile"));

  override void initialize() {
    super.initialize;

    this
      .addAttributes([
        "createdOnBehalfBy": OOPStringAttribute.descriptions(["en":"Shows who created the record on behalf of another user."]),
        "modifiedOnBehalfBy": OOPStringAttribute.descriptions(["en":"Shows who last updated the record on behalf of another user."]),
        "overriddenCreatedOn": OOPStringAttribute.descriptions(["en":"Date and time that the record was migrated."]),
        "importSequenceNumber": OOPIntegerAttribute.descriptions(["en":"Sequence number of the import that created this record."]),
        "ownerId": OOPStringAttribute.descriptions(["en":"Owner Id"]),
        "ownerIdType": OOPStringAttribute.descriptions(["en":"The type of owner, either User or Team."]),
        "owningBusinessUnitId": OOPLinkAttribute("aplBusinessUnit").descriptions(["en":"Unique identifier for the business unit that owns the record"]),
        "owningUser": OOPStringAttribute.descriptions(["en":"Unique identifier of the user that owns the activity."]),
        "owningTeam": OOPStringAttribute.descriptions(["en":"Unique identifier for the team that owns the record."]),
        "timeZoneRuleVersionNumber": OOPIntegerAttribute.descriptions(["en":"For internal use only."]),
        "utcConversionTimeZoneCode": OOPStringAttribute.descriptions(["en":"Time zone code that was in use when the record was created."]),
        "versionNumber": OOPIntegerAttribute.descriptions(["en":"Version Number"]),
        "exchangeRate": OOPStringAttribute.descriptions(["en":"Exchange rate for the currency associated with the entity with respect to the base currency."]),
        "accountNumber": OOPIntegerAttribute.descriptions(["en":"Type an ID number or code for the customer to quickly search and identify the customer in system views."]),
        "affiliations": OOPStringAttribute.descriptions(["en":"Different affiliations associated with the customer."]),
        "alumniOf": OOPStringAttribute.descriptions(["en":"Alumni customer is a part of."]),
        "anniversary": OOPStringAttribute.descriptions(["en":"Date of the customer's wedding or service anniversary for use in customer gift programs or other communications."]),
        "assistantName": OOPStringAttribute.descriptions(["en":"Name of the customer's assistant."]),
        "awards": OOPStringAttribute.descriptions(["en":"List of award(s) received by the customer."]),
        "billingAddress": OOPStringAttribute.descriptions(["en":"Billing address of the customer."]),
        "birthDate": OOPAttributeDate.descriptions(["en":""]),
        "childrenNames": OOPStringAttribute.descriptions(["en":"Customer's children name(s)."]),
        "churnScore": OOPStringAttribute.descriptions(["en":"Churn score of the customer."]),
        "companyName": OOPStringAttribute.descriptions(["en":"Company name of the customer."]),
        "countryOrRegion": OOPStringAttribute.descriptions(["en":""]),
        "culture": OOPStringAttribute.descriptions(["en":"The culture of the customer."]),
        "currencyName": OOPStringAttribute.descriptions(["en":""]),
        "customerId": OOPStringAttribute.descriptions(["en":"The customer account or contact to provide a quick link to additional customer details, such as account information, activities, and opportunities."]),
        "customerIdType": OOPStringAttribute.descriptions(["en":"The type of customer, either Account or Contact."]),
        "customerProfileId": OOPStringAttribute.descriptions(["en":"Unique identifier for entity instances"]),
        "department": OOPStringAttribute.descriptions(["en":"The department or business unit where the customer works in the parent company or business."]),
        "description": OOPStringAttribute.descriptions(["en":"Additional information to describe the customer, such as an excerpt from the company's website."]),
        "donotBulkEmail": OOPStringAttribute.descriptions(["en":"Select whether the customer accepts bulk email sent through marketing campaigns or quick campaigns. If Do Not Allow is selected, the customer can be added to marketing lists, but will be excluded from the email."]),
        "doNotBulkPostalMail": OOPStringAttribute.descriptions(["en":"Select whether the customer accepts bulk postal mail sent through marketing campaigns or quick campaigns. If Do Not Allow is selected, the customer can be added to marketing lists, but will be excluded from the letters."]),
        "doNotContact": OOPStringAttribute.descriptions(["en":"Select whether the customer allows direct contact from Microsoft Dynamics 365 Customer Insights. If Do Not Contact is selected, Microsoft Dynamics 365 Customer Insights will not contact the customer."]),
        "doNotEmail": OOPStringAttribute.descriptions(["en":"Select whether the customer allows direct email sent from Microsoft Dynamics 365 Customer Insights. If Do Not Allow is selected, Microsoft Dynamics 365 Customer Insights will not send the email."]),
        "doNotFax": OOPStringAttribute.descriptions(["en":"Select whether the customer allows faxes. If Do Not Allow is selected, the customer will be excluded from any fax activities distributed in marketing campaigns."]),
        "doNotPhone": OOPStringAttribute.descriptions(["en":"Select whether the customer accepts phone calls. If Do Not Allow is selected, the customer will be excluded from any phone call activities distributed in marketing campaigns."]),
        "doNotPostalMail": OOPStringAttribute.descriptions(["en":"Select whether the customer allows direct mail. If Do Not Allow is selected, the customer will be excluded from letter activities distributed in marketing campaigns."]),
        "educationCode": OOPStringAttribute.descriptions(["en":"Highest level of education of the customer."]),
        "employeeIdentifier": OOPStringAttribute.descriptions(["en":"The employee ID or number for the customer for reference in orders, service cases, or other communications with the customer's organization."]),
        "employmentStartDate": OOPAttributeDate.descriptions(["en":"Employment start date of the customer for reference in with the customer's organization."]),
        "engagementScore": OOPStringAttribute.descriptions(["en":"Engagement score of the customer."]),
        "facebookProfile": OOPStringAttribute.descriptions(["en":"Facebook profile url of the customer."]),
        "familyStatus": OOPStringAttribute.descriptions(["en":""]),
        "familyStatus_display": OOPStringAttribute.descriptions(["en":""]),
        "fax": OOPStringAttribute.descriptions(["en":"Fax number to send fax to the customer."]),
        "firstName": OOPStringAttribute.descriptions(["en":"The customer's first name to make sure the customer is addressed correctly in sales calls, email, and marketing campaigns."]),
        "firstNamePronunciation": OOPStringAttribute.descriptions(["en":"The customer's first name pronunciation to make sure the customer is pronounced correctly in sales calls, email, and marketing campaigns."]),
        "fraudScore": OOPStringAttribute.descriptions(["en":"Calculated fraud score of the customer."]),
        "FTPSiteUrl": OOPUrlAttribute.descriptions(["en":"The URL for the contact's FTP site to enable users to access data and share documents."]),
        "gamerTag": OOPStringAttribute.descriptions(["en":"The gamertag from the Xbox world of the customer."]),
        "gender": OOPStringAttribute.descriptions(["en":"The customer's gender to make sure the contact is addressed correctly in sales calls, email, and marketing campaigns."]),
        "gender_display": OOPStringAttribute.descriptions(["en":""]),
        "hasChildren": OOPStringAttribute.descriptions(["en":"Specify whether the customer has any children for reference in follow-up phone calls and other communications."]),
        "hasPets": OOPStringAttribute.descriptions(["en":"Specify whether the customer has any pets for reference in follow-up phone calls and other communications."]),
        "hobbies": OOPStringAttribute.descriptions(["en":"List down the hobbies of the customer."]),
        "homeOwnershipType": OOPStringAttribute.descriptions(["en":"Specify the type of home owned by the customer."]),
        "homePhone": OOPStringAttribute.descriptions(["en":"Home phone number for this customer."]),
        "industryCode": OOPStringAttribute.descriptions(["en":"Select the customer's primary industry for use in marketing segmentation and demographic analysis."]),
        "industryCode_display": OOPStringAttribute.descriptions(["en":""]),
        "influencerScore": OOPStringAttribute.descriptions(["en":"Calculated influencer score of the customer."]),
        "instagramHandle": OOPStringAttribute.descriptions(["en":"Instagram handle of the customer."]),
        "interests": OOPStringAttribute.descriptions(["en":"List down all the interests of this customer."]),
        "isGovernment": OOPBooleanAttribute.descriptions(["en":"Specify if the customer belongs to or works for government."]),
        "isLead": OOPBooleanAttribute.descriptions(["en":""]),
        "isPublicSector": OOPBooleanAttribute.descriptions(["en":"Specify if the customer works in public sector."]),
        "jobTitle": OOPStringAttribute.descriptions(["en":"The job title of the customer to make sure the customer is addressed correctly in sales calls, email, and marketing campaigns."]),
        "knownSince": OOPStringAttribute.descriptions(["en":"Specify the date since when the customer is known."]),
        "language": OOPStringAttribute.descriptions(["en":"Specify the language(s) the customer can interact with."]),
        "lastName": OOPStringAttribute.descriptions(["en":"The customer's last name to make sure the customer is addressed correctly in sales calls, email, and marketing campaigns."]),
        "lastNamePronunciation": OOPStringAttribute.descriptions(["en":"The customer's last name pronunciation to make sure the customer is pronounced correctly in sales calls, email, and marketing campaigns."]),
        "lifeTimeValue": OOPStringAttribute.descriptions(["en":"Calculated life time value of the customer."]),
        "linkedInProfile": OOPStringAttribute.descriptions(["en":"LinkedIn profile url of the customer."]),
        "mailingAddress": OOPStringAttribute.descriptions(["en":"Mailing address of the customer."]),
        "middleName": OOPStringAttribute.descriptions(["en":"The customer's middle name or initial to make sure the customer is addressed correctly."]),
        "middleNamePronunciation": OOPStringAttribute.descriptions(["en":"The customer's middle name or initial pronunciation to make sure the customer is pronounced correctly."]),
        "mobilePhone": OOPStringAttribute.descriptions(["en":"The mobile phone number for the customer."]),
        "nameAlias": OOPStringAttribute.descriptions(["en":"Alternate name of the customer that can be used as their alias."]),
        "namePrefix": OOPStringAttribute.descriptions(["en":"Any prefix assigned to the customer's name."]),
        "nameSuffix": OOPStringAttribute.descriptions(["en":"Any suffix assigned to the customer's name."]),
        "nationality": OOPStringAttribute.descriptions(["en":"Nationality of the customer."]),
        "nickName": OOPStringAttribute.descriptions(["en":"Nick name of the customer."]),
        "notes": OOPStringAttribute.descriptions(["en":"Any additional information about the customer."]),
        "numberOfChildren": OOPStringAttribute.descriptions(["en":"The number of children the customer has for reference in follow-up phone calls and other communications."]),
        "pinterestId": OOPStringAttribute.descriptions(["en":"Pinterest identifier of the customer."]),
        "POBoxAddress": OOPStringAttribute.descriptions(["en":"PO Box address of the customer."]),
        "postalCode": OOPStringAttribute.descriptions(["en":"Postal code of the customer."]),
        "preferredCallTime": OOPAttributeTime.descriptions(["en":""]),
        "preferredCallTime_display": OOPStringAttribute.descriptions(["en":""]),
        "preferredContactMethodCode": OOPStringAttribute.descriptions(["en":""]),
        "preferredContactMethodCode_display": OOPStringAttribute.descriptions(["en":""]),
        "preferredName": OOPStringAttribute.descriptions(["en":"Preferred name of the customer to be used in communication."]),
        "primaryEmail": OOPStringAttribute.descriptions(["en":"Primary email address of the customer."]),
        "primaryPhone": OOPStringAttribute.descriptions(["en":"Primary contact phone number of the customer."]),
        "profileImage": OOPStringAttribute.descriptions(["en":"Profile image url location of the customer."]),
        "profileSubtype": OOPStringAttribute.descriptions(["en":"Profile subtype to define the customer."]),
        "profileType": OOPStringAttribute.descriptions(["en":"Profile type to define the customer."]),
        "profileType_display": OOPStringAttribute.descriptions(["en":""]),
        "salutation": OOPStringAttribute.descriptions(["en":"The salutation of the customer to make sure the customer is addressed correctly in sales calls, email messages, and marketing campaigns."]),
        "satisfactionScore": OOPStringAttribute.descriptions(["en":"Calculated satisfaction score of the customer."]),
        "secondaryEmail": OOPStringAttribute.descriptions(["en":"Secondary email address of the customer."]),
        "sentimentScore": OOPStringAttribute.descriptions(["en":"Calculated sentiment score of the customer."]),
        "shippingAddress": OOPStringAttribute.descriptions(["en":"Shipping address of the customer."]),
        "spouseName": OOPStringAttribute.descriptions(["en":"The name of the customer's spouse or partner for reference during calls, events, or other communications with the contact."]),
        "systemOfOrigin": OOPStringAttribute.descriptions(["en":"Origin source of the customer data."]),
        "tags": OOPStringAttribute.descriptions(["en":"Any tags associated with the customer."]),
        "totalLifetimeSpendAmount": OOPStringAttribute.descriptions(["en":"Value of the Total Lifetime Spend Amount in transaction currency."]),
        "totallifetimespendamount_Base": OOPStringAttribute.descriptions(["en":"Value of the Total Lifetime Spend Amount in base currency."]),
        "totalTransactionCount": OOPStringAttribute.descriptions(["en":"Value of the total number of transactions performed by the customer."]),
        "twitterHandle": OOPStringAttribute.descriptions(["en":"Twitter account name / handle of the customer."]),
        "version": OOPStringAttribute.descriptions(["en":"Denotes latest version of the customer profile for manual tracking."]),
        "websiteUrl": OOPUrlAttribute.descriptions(["en":"Website url to identify the customer."]),
        "workAddress": OOPStringAttribute.descriptions(["en":"Work address of the customer."]),
        "workPhone": OOPStringAttribute.descriptions(["en":"Work phone number of the customer."]),
        "stateCode": OOPStringAttribute.descriptions(["en":"Status of the CustomerProfile"]),
        "stateCode_display": OOPStringAttribute.descriptions(["en":""]),
        "statusCode": OOPStringAttribute.descriptions(["en":"Reason for the status of the CustomerProfile"]),
        "statusCode_display": OOPStringAttribute.descriptions(["en":""]),
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