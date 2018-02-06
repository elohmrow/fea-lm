<!DOCTYPE html>
<html xml:lang="${cmsfn.language()}" lang="${cmsfn.language()}">
  <head>
    [@cms.page /]
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>${content.windowTitle!content.title!}</title>
    <meta name="description" content="${content.description!""}" />
    <meta name="keywords" content="${content.keywords!""}" />

    ${resfn.css(["/btk/webresources/css/bootstrap.css",
                 "/btk/webresources/css/.*.css"])}

  </head>
  <body class="${def.parameters.body_class!"home"} ${cmsfn.language()} [#if cmsfn.isEditMode()]editMode[/#if]">

    [#include "../areas/navbar.ftl"]

    [@cms.area name="breadcrumb" contextAttributes={"pageParameters":def.parameters!}/]

    <header class="${def.parameters.main_container!"container"}">
      [@cms.area name="header"/]
    </header>

    <section class="${def.parameters.main_container!"container"}">
      [@cms.area name="main"/]
    </section>

    <footer style="background-color: #eee; padding-top: 20px;">
      <div class="${def.parameters.main_container!"container"}">
        [@cms.area name="footer"/]
      </div>
    </footer>

    ${resfn.js(["/btk/webresources/js/jquery.min.js",
                "/btk/webresources/js/bootstrap-min.js",
                "/btk/webresources/js/.*.js"])}

  </body>
</html>
