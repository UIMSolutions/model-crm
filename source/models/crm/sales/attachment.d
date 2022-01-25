module models.crm.sales.attachment;

@safe:
import uim.entities;

// Item in the sales literature collection.
class DAPLSalesAttachment : DOOPEntity {
  this() { super();
    this.attributes([
      "salesLiteratureItemId": OOPAttributeUUID.descriptions(["en":"Unique identifier for the document."]),
      "createdOnBehalfBy": OOPAttributeLink("aplUser").descriptions(["en":"Unique identifier of the delegate user who created the salesliteratureitem."]),
      "modifiedOnBehalfBy": OOPAttributeLink("aplUser").descriptions(["en":"Unique identifier of the delegate user who last modified the salesliteratureitem."]),
      "importSequenceNumber": OOPAttributeNumber.descriptions(["en":"Sequence number of the import that created this record."]),
      "overriddenCreatedOn": OOPAttributeTimestamp.descriptions(["en":"Date and time that the record was migrated."]),
      "timeZoneRuleVersionNumber": OOPAttributeNumber.descriptions(["en":"For internal use only."]),
      "utcConversionTimeZoneCode": OOPAttributeString.descriptions(["en":"Time zone code that was in use when the record was created."]),
      "title": OOPAttributeString.descriptions(["en":"Type the title or name that describes the document."]),
      "abstract": OOPAttributeString.descriptions(["en":"Abstract of the document."]),
      "attachedDocumentUrl": OOPAttributeUrl.descriptions(["en":"URL of the Website on which the document is located."]),
      "authorName": OOPAttributeString.descriptions(["en":"Author name for the document."]),
      "documentBody": OOPAttributeString.descriptions(["en":"Shows the encoded contents of the sales literature document attachment."]),
      "fileName": OOPAttributeString.descriptions(["en":"File name of the document."]),
      "fileSize": OOPAttributeString.descriptions(["en":"File size of the document."]),
      "fileTypeCode": OOPAttributeString.descriptions(["en":"Select the file type of the document."]),
      "fileTypeCode_display": OOPAttributeString.descriptions(["en":""]),
      "isCustomerViewable": OOPAttributeBoolean.descriptions(["en":"Tells whether the document can be shared with customers or is for internal use only."]),
      "keyWords": OOPAttributeString.descriptions(["en":"Keywords to use for searches in documents."]),
      "mimeType": OOPAttributeString.descriptions(["en":"Shows the file type of the sales literature document attachment, such as text or document."]),
      "organizationId": OOPAttributeLink("aplOrganization").descriptions(["en":"Unique identifier of the organization associated with the document."]),
      "salesLiteratureId": OOPAttributeUUID.descriptions(["en":"Unique identifier of the sales literature that is associated with the individual item."]),
      "mode": OOPAttributeString.descriptions(["en":"Defines the mode of the sales literature document attachment."]),
    ]);
  }

  override string entityClass() { return "aplSalesAttachment"; }
  override string entityClasses() { return "aplSalesAttachments"; }

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
auto APLSalesAttachment() { return new DAPLSalesAttachment; } 
auto APLSalesAttachment(Json json) { return new DAPLSalesAttachment(json); } 

unittest {
  version(uim_entities) {
    assert(APLSalesAttachment);
  
  auto entity = APLSalesAttachment;
  // auto repository = OOPFileRepository("./tests");
/* /*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */ 
  }
}