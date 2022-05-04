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
        "salesLiteratureItemId": UUIDAttributeClass, // Unique identifier for the document."]),
        "createdOnBehalfBy": UUIDAttributeClass, //Unique identifier of the delegate user who created the salesliteratureitem."]),
        "modifiedOnBehalfBy": UUIDAttributeClass, //Unique identifier of the delegate user who last modified the salesliteratureitem."]),
        "importSequenceNumber": IntegerAttributeClass, //Sequence number of the import that created this record."]),
        "overriddenCreatedOn": TimestampAttributeClass, //Date and time that the record was migrated."]),
        "timeZoneRuleVersionNumber": IntegerAttributeClass, //For internal use only."]),
        "utcConversionTimeZoneCode": StringAttributeClass, // Time zone code that was in use when the record was created."]),
        "title": StringAttributeClass, // Type the title or name that describes the document."]),
        "abstract": StringAttributeClass, // Abstract of the document."]),
        "attachedDocumentUrl": UrlAttributeClass, // URL of the Website on which the document is located."]),
        "authorName": StringAttributeClass, // Author name for the document."]),
        "documentBody": StringAttributeClass, // Shows the encoded contents of the sales literature document attachment."]),
        "fileName": StringAttributeClass, // File name of the document."]),
        "fileSize": StringAttributeClass, // File size of the document."]),
        "fileTypeCode": StringAttributeClass, // Select the file type of the document."]),
        "fileTypeCode_display": StringAttributeClass, //
        "isCustomerViewable": BooleanAttributeClass, // Tells whether the document can be shared with customers or is for internal use only."]),
        "keyWords": StringAttributeClass, // Keywords to use for searches in documents."]),
        "mimeType": StringAttributeClass, // Shows the file type of the sales literature document attachment, such as text or document."]),
        "organizationId": UUIDAttributeClass, // Unique identifier of the organization associated with the document."]),
        "salesLiteratureId": UUIDAttributeClass, // Unique identifier of the sales literature that is associated with the individual item."]),
        "mode": StringAttributeClass, // Defines the mode of the sales literature document attachment."]),
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