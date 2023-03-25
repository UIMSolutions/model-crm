module models.crm;

@safe:
public import std.stdio;
public import std.string;
public import std.uuid;

// Dub
public import vibe.d;

public import uim.core;
public import uim.oop;
public import uim.entities;

public import models.crm.attributes;
public import models.crm.entities;

public import models.crm.projects;
public import models.crm.sales;
public import models.crm.services;
public import models.crm.solutions;

public import models.crm.campaign;
public import models.crm.team_membership;

/* static this() {
  uimEntityRegistry
  .register("crm/blogs", CMSBlog)
  .register("cmsBlogs", CMSBlog)
  .register("cms/demos", CMSDemo)
  .register("cmsDemos", CMSDemo)
  .register("cms/docus", CMSDocu)
  .register("cms/glossary", CMSGlossaryItem)
  .register("cmsGlossary", CMSGlossaryItem)
  .register("cms/links", CMSLink)
  .register("cmsLinks", CMSLink)
  .register("cms/news", CMSNewsItem)
  .register("cmsNews", CMSNewsItem)
  .register("cms/offers", CMSOffer)
  .register("cmsOffers", CMSOffer)
  .register("cms/pages", CMSPage)
  .register("cmsPages", CMSPage)
  .register("cms/themes", CMSTheme)
  .register("cmsThemes", CMSTheme)
  .register("cms/tutorials", CMSTutorial)
  .register("cmsTutorials", CMSTutorial);
}
 */
