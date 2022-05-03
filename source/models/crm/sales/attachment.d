module models.crm.sales.attachment;

@safe:
import uim.entities;

// Item in the sales literature collection.
class DCRMSalesAttachment : DOOPEntity {
  mixin(EntityThis!("CRMSalesAttachment"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "salesLiteratureItemId": OOPUUIDAttribute.descriptions(["en":"Unique identifier for the document."]),
        "createdOnBehalfBy": OOPLinkAttribute("aplUser").descriptions(["en":"Unique identifier of the delegate user who created the salesliteratureitem."]),
        "modifiedOnBehalfBy": OOPLinkAttribute("aplUser").descriptions(["en":"Unique identifier of the delegate user who last modified the salesliteratureitem."]),
        "importSequenceNumber": OOPIntegerAttribute.descriptions(["en":"Sequence number of the import that created this record."]),
        "overriddenCreatedOn": OOPTimestampAttribute.descriptions(["en":"Date and time that the record was migrated."]),
        "timeZoneRuleVersionNumber": OOPIntegerAttribute.descriptions(["en":"For internal use only."]),
        "utcConversionTimeZoneCode": OOPStringAttribute.descriptions(["en":"Time zone code that was in use when the record was created."]),
        "title": OOPStringAttribute.descriptions(["en":"Type the title or name that describes the document."]),
        "abstract": OOPStringAttribute.descriptions(["en":"Abstract of the document."]),
        "attachedDocumentUrl": OOPUrlAttribute.descriptions(["en":"URL of the Website on which the document is located."]),
        "authorName": OOPStringAttribute.descriptions(["en":"Author name for the document."]),
        "documentBody": OOPStringAttribute.descriptions(["en":"Shows the encoded contents of the sales literature document attachment."]),
        "fileName": OOPStringAttribute.descriptions(["en":"File name of the document."]),
        "fileSize": OOPStringAttribute.descriptions(["en":"File size of the document."]),
        "fileTypeCode": OOPStringAttribute.descriptions(["en":"Select the file type of the document."]),
        "fileTypeCode_display": OOPStringAttribute.descriptions(["en":""]),
        "isCustomerViewable": OOPBooleanAttribute.descriptions(["en":"Tells whether the document can be shared with customers or is for internal use only."]),
        "keyWords": OOPStringAttribute.descriptions(["en":"Keywords to use for searches in documents."]),
        "mimeType": OOPStringAttribute.descriptions(["en":"Shows the file type of the sales literature document attachment, such as text or document."]),
        "organizationId": OOPLinkAttribute("aplOrganization").descriptions(["en":"Unique identifier of the organization associated with the document."]),
        "salesLiteratureId": OOPUUIDAttribute.descriptions(["en":"Unique identifier of the sales literature that is associated with the individual item."]),
        "mode": OOPStringAttribute.descriptions(["en":"Defines the mode of the sales literature document attachment."]),
      ])
      .registerPath("crm_salesattachments");
  }
}
mixin(EntityCalls!("CRMSalesAttachment"));

unittest {
  version(test_model_crm) {
    assert(CRMSalesAttachment);
  
  auto entity = CRMSalesAttachment;
  // auto repository = OOPFileRepository("./tests");
/* /*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */ 
  }
}