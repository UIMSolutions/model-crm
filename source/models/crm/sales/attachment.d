module models.crm.sales.attachment;

@safe:
import uim.entities;

// Item in the sales literature collection.
class DCRMSalesAttachment : DEntity {
  mixin(EntityThis!("CRMSalesAttachment"));

  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([
        "salesLiteratureItemId": UUIDAttribute, // Unique identifier for the document."]),
        "createdOnBehalfBy": UUIDAttribute, //Unique identifier of the delegate user who created the salesliteratureitem."]),
        "modifiedOnBehalfBy": UUIDAttribute, //Unique identifier of the delegate user who last modified the salesliteratureitem."]),
        "importSequenceNumber": IntegerAttribute, //Sequence number of the import that created this record."]),
        "overriddenCreatedOn": TimestampAttribute, //Date and time that the record was migrated."]),
        "timeZoneRuleVersionNumber": IntegerAttribute, //For internal use only."]),
        "utcConversionTimeZoneCode": StringAttribute, // Time zone code that was in use when the record was created."]),
        "title": StringAttribute, // Type the title or name that describes the document."]),
        "abstract": StringAttribute, // Abstract of the document."]),
        "attachedDocumentUrl": UrlAttribute, // URL of the Website on which the document is located."]),
        "authorName": StringAttribute, // Author name for the document."]),
        "documentBody": StringAttribute, // Shows the encoded contents of the sales literature document attachment."]),
        "fileName": StringAttribute, // File name of the document."]),
        "fileSize": StringAttribute, // File size of the document."]),
        "fileTypeCode": StringAttribute, // Select the file type of the document."]),
        "fileTypeCode_display": StringAttribute, //
        "isCustomerViewable": BooleanAttribute, // Tells whether the document can be shared with customers or is for internal use only."]),
        "keyWords": StringAttribute, // Keywords to use for searches in documents."]),
        "mimeType": StringAttribute, // Shows the file type of the sales literature document attachment, such as text or document."]),
        "organizationId": UUIDAttribute, // Unique identifier of the organization associated with the document."]),
        "salesLiteratureId": UUIDAttribute, // Unique identifier of the sales literature that is associated with the individual item."]),
        "mode": StringAttribute, // Defines the mode of the sales literature document attachment."]),
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